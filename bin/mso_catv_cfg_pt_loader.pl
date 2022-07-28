#!/home/pin/opt/portal/7.5/ThirdParty/perl/5.8.0/bin/perl

use pcmif;
use Sys::Hostname;
use File::Copy;
use File::Basename;
use File::Path;

$SEVERE = 0;
$ERROR = 1;
$INFO = 2;
$DEBUG = 3;

$args = $#ARGV + 1;
#foreach (@ARGV) {
#        print "$_\n";
#}


#======================================================
# Input parameter validation
#======================================================
if($#ARGV != 1)
{
#        print "\nInvalid input parameter";
        print "\nUsage: mso_catv_cfg_pt_loader.pl -input <input file name> \n";
        exit 1;
}

if ( $ARGV[0] ne '-input' )
{
#        print "Input parameter validation error\n";
        print "\nUsage: mso_catv_cfg_pt_loader.pl -input <input file name> \n";
        exit 1;
}

#======================================================
# Set path for template file, flist file, input file
# log file, reject file and error file 
#======================================================
$input_file = $ARGV[1];
$log_file      = $app_type . "/log/" . $input_file_name . ".log";
$error_file    = $input_file . ".error";   # specific record which failed during processing

open( INP, $input_file)     || ( print "\nSEVERE: Input file does not exist.. Exiting\n" and  exit 1 );

#===========================================================
# Insanity check if the input file is already processed.
# Check log file, reject file or error file already exist
#==========================================================
if (-e $error_file ) {
    print "\nSEVERE: Error file $error_file already exist. Please change the input Input file name or backup the error file.. Exiting\n" ;  
    exit 1 
}

open ( ERROR , ">$error_file")|| ( print "\nSEVERE: Can't open error file for writting.. Exiting\n" and  exit 1);

#======================================================
# For information purpose
#======================================================
print "\nProcessing Input file = $input_file";
print "\n";

#
# Get an ebuf for error reporting.
#
$ebufp = pcmif::pcm_perl_new_ebuf();
my $db_no = 1;

# Do a pcm_connect(), $db_no is a return.
  
$pcm_ctxp = pcmif::pcm_perl_connect($db_no, $ebufp);
  
  
# Convert an ebuf to a print LOGable string.
$ebp1 = pcmif::pcm_perl_ebuf_to_str($ebufp);
  
# Check for errors. Always do this.
if (pcmif::pcm_perl_is_err($ebufp)) 
{
    pcmif::pcm_perl_print_ebuf($ebufp);
    exit(1);
} 
else 
{
    #print LOG "back from pcm_connect()\n";
}


#=====================================================
# Variables used to report processing summary
#=====================================================
$total_no_of_records = 0;       # total number of detail record
$parse_error  = 0;              # detail records failed in parsing, record level validation
$field_validation_error = 0;    # detail records failed in fields level validation
$opcode_error = 0;              # error in create obj execution
$success_count = 0;              # Successfully processed record


#======================================================
# Read the input file line by line
#======================================================
$line = <INP>;
while ($line) 
{
    if ( $line =~ m/^Header/ )
    {
        #======================================================
        # Ignore the header except of devices            
        #         DO NOTHING      
        #======================================================
        
    }
    elsif (  $line =~ m/^[#,\n]/ )
    {
        #======================================================
        # Ignore Empty line and lines starting with hash (#)
        #         DO NOTHING
        #======================================================
    }
    else 
    {
        #======================================================
        # Process Detail record
        #======================================================
        $total_no_of_records = $total_no_of_records + 1;

        my @values = split(/,/, $line);

        #======================================================
        # Record level validation
        #======================================================
        if ( @values != 6)
        {
            $parse_error = $parse_error + 1;
            $line =~ s/\n//;
            $line = $line . ",Incorrect number of field for the record\n";
            print ERROR "$line";
            goto NEXT_RECORD;
        }


        $order_type = "0.0.0.1 /mso_cfg_catv_pt" . " -1";
        ($PROV_TAG,$PKG_TYPE,$NDS_CA_ID,$CISCO_CA_ID,$CISCO1_CA_ID,$VM_CA_ID) = split(/,/, $line);

        $PROV_TAG = trim($PROV_TAG);
        $PKG_TYPE = trim($PKG_TYPE);
        $NDS_CA_ID = trim($NDS_CA_ID);
        $CISCO_CA_ID = trim($CISCO_CA_ID);
        $CISCO1_CA_ID = trim($CISCO1_CA_ID);
        $VM_CA_ID = trim($VM_CA_ID);

        if (  !(length $PROV_TAG > 0  and 
                length $PKG_TYPE > 0 and 
                length $NDS_CA_ID > 0 and 
                length $CISCO_CA_ID > 0 and
                length $CISCO1_CA_ID > 0 and
				length $VM_CA_ID > 0 ) ) 
        {
            $field_validation_error = $field_validation_error + 1;
            $line =~ s/\n//;
            $line = $line . ",One or more fields are null in the record\n";
            print ERROR "$line";
            goto NEXT_RECORD;
        }


        my $search_flist = << "END"
0 PIN_FLD_POID              POID [0]  0.0.0.1 /search -1 
0 PIN_FLD_FLAGS             INT [0] 256 
0 PIN_FLD_TEMPLATE          STR [0] "select X from /mso_cfg_catv_pt where F1 = V1 " 
0 PIN_FLD_ARGS              ARRAY [1]
1   PIN_FLD_PROVISIONING_TAG    STR [0] "$PROV_TAG"
0 PIN_FLD_RESULTS           ARRAY [*]
1   PIN_FLD_POID            POID [0] NULL
1       MSO_FLD_CATV_PT_DATA  ARRAY [*]
2               MSO_FLD_CA_ID           STR [0] NULL
2               MSO_FLD_NETWORK_NODE    STR [0] NULL
END
;

        # Convert the flist string into an actual FList
        $search_flistp = pcmif::pin_perl_str_to_flist($search_flist, $db_no, $ebufp);
        if (pcmif::pcm_perl_is_err($ebufp))
        {
                $parse_error = $parse_error + 1;
                $line =~ s/\n//;
                $line = $line . ",Search Provisioning tag failed for Detail record\n";
                print ERROR "$line";
                #==============================================
                # Destroy and create a new error buffer
                # Break and process next line
                #==============================================
                pcmif::pcm_perl_destroy_ebuf($ebufp);
                $ebufp = pcmif::pcm_perl_new_ebuf();
                goto NEXT_RECORD;
        }

		$out = pcmif::pin_perl_flist_to_str($search_flistp, $ebufp);
          #print "search_flistp flist is:\n";
          #print $out;
		  
		$search_out_flistp = pcmif::pcm_perl_op($pcm_ctxp, 7,
                                                    0, $search_flistp, $ebufp);

		if (pcmif::pcm_perl_is_err($ebufp))
		{
		   #pcmif::pcm_perl_print_ebuf($ebufp);

		   $opcode_error = $opcode_error + 1;
		   $line =~ s/\n//;
		   $line = $line . ",opcode execution failed in search, Please check cm.pinlog for detail\n";
		   print ERROR "$line";
		   #==============================================
		   # Destroy and create a new error buffer
		   # Break and process next line
		   #==============================================
		   pcmif::pin_flist_destroy($search_flistp);
		   pcmif::pcm_perl_destroy_ebuf($ebufp);
		   $ebufp = pcmif::pcm_perl_new_ebuf();
		   goto NEXT_RECORD;
		}
	
		$search_out_flist = pcmif::pin_perl_flist_to_str($search_out_flistp, $ebufp);
		#print "search_out_flist flist is:\n";
		#print "$search_out_flist \n";

		#======================================================
		# Get Necessary values out of search results
		#======================================================
		$elem_id=0;
		$nds_array="";
		$cisco_array="";
		$cisco1_array="";
		$vm_array="";		
		
		$nds_cmp = " \"NDS\"";
		$cisco_cmp = " \"CISCO\"";
		$cisco1_cmp = " \"CISCO1\"";
		$vm_cmp = " \"VM\"";
	
		@prov_tag_out = split(/\n/, $search_out_flist);	   
		#print "@prov_tag_out[3]\n";

		$prov_tag = @prov_tag_out[3];
		@prov_tag_obj = split(/\[0\]/, $prov_tag);
		#print "@prov_tag_obj[1]\n";
	   
		$nds_ca_id = @prov_tag_out[5];
		$nds = @prov_tag_out[6];
		@nds_string = split(/\[0\]/, $nds);
		@nds_ca_id_str = split(/\[0\]/, $nds_ca_id);
		#print "@nds_string[1]\n";		
		#print "@nds_ca_id_str[1]\n";		
		
		$cisco_ca_id = @prov_tag_out[8];
		$cisco = @prov_tag_out[9];
		@cisco_string = split(/\[0\]/, $cisco);
		@cisco_ca_id_str = split(/\[0\]/, $cisco_ca_id);
		#print "@cisco_string[1]\n";
		#print "@cisco_ca_id_str[1]\n";

		$cisco1_ca_id = @prov_tag_out[11];
		$cisco1 = @prov_tag_out[12];
		@cisco1_string = split(/\[0\]/, $cisco1);
		@cisco1_ca_id_str = split(/\[0\]/, $cisco1_ca_id);
		#print "@cisco1_string[1]\n";
		#print "@cisco1_ca_id_str[1]\n";

		$vm_ca_id = @prov_tag_out[14];
		$vm = @prov_tag_out[15];	   
		@vm_string = split(/\[0\]/, $vm);
		@vm_ca_id_str = split(/\[0\]/, $vm_ca_id);
		#print "@vm_string[1]\n";		
		#print "@vm_ca_id_str[1]\n";		
	   
		# NDS
		if (length @nds_string[1] > 0 ) {
			if ($NDS_CA_ID eq $nds_ca_id_str) {
				#print("\n /mso_cfg_catv_pt already has NDS mapping. \n");
				#prepare elem flist
				$nds_array = << "END"
0 MSO_FLD_CATV_PT_DATA     ARRAY [0]
1    MSO_FLD_CA_ID           STR [0] "$NDS_CA_ID"
1    MSO_FLD_NETWORK_NODE    STR [0] "NDS"
END
;				
			} else {
				$nds_write_flds = 1;
				$nds_create_mapping = 0;
			}
		} else {
			$nds_write_flds = 0;
			$nds_create_mapping = 1;
		}
		
		if ($nds_write_flds || $nds_create_mapping) 
		{ 
			#prepare elem flist
			$nds_array = << "END"
0 MSO_FLD_CATV_PT_DATA     ARRAY [0]
1    MSO_FLD_CA_ID           STR [0] "$NDS_CA_ID"
1    MSO_FLD_NETWORK_NODE    STR [0] "NDS"
END
;
			#print("$nds_array\n");
		}
		
		# CISCO
		if (length @cisco_string[1] > 0 ) {
			if ($CISCO_CA_ID eq $cisco_ca_id_str) {
				#print("\n /mso_cfg_catv_pt already has CISCO mapping.\n ");
				#prepare elem flist
				$cisco_array = << "END"
0 MSO_FLD_CATV_PT_DATA     ARRAY [1]
1    MSO_FLD_CA_ID           STR [0] "$CISCO_CA_ID"
1    MSO_FLD_NETWORK_NODE    STR [0] "CISCO"
END
;				
			} else {
				$cisco_write_flds = 1;
				$cisco_create_mapping = 0;
			}
		} else {
			$cisco_write_flds = 0;
			$cisco_create_mapping = 1;
		}

		if ($cisco_write_flds || $cisco_create_mapping) 
		{ 
			#prepare elem flist
			$cisco_array = << "END"
0 MSO_FLD_CATV_PT_DATA     ARRAY [1]
1    MSO_FLD_CA_ID           STR [0] "$CISCO_CA_ID"
1    MSO_FLD_NETWORK_NODE    STR [0] "CISCO"
END
;
			#print("$cisco_array\n");
		}		
		
		# CISCO1
		if (length @cisco1_string[1] > 0 ) {
			if ($CISCO1_CA_ID eq $cisco1_ca_id_str) {
				#print("\n /mso_cfg_catv_pt already has CISCO1 mapping.\n ");
				#prepare elem flist
				$cisco1_array = << "END"
0 MSO_FLD_CATV_PT_DATA     ARRAY [2]
1    MSO_FLD_CA_ID           STR [0] "$CISCO1_CA_ID"
1    MSO_FLD_NETWORK_NODE    STR [0] "CISCO1"
END
;				
			} else {
				$cisco1_write_flds = 1;
				$cisco1_create_mapping = 0;
			}
		} else {
			$cisco1_write_flds = 0;
			$cisco1_create_mapping = 1;
		}
		
		if ($cisco1_write_flds || $cisco1_create_mapping) 
		{ 
			#prepare elem flist
			$cisco1_array = << "END"
0 MSO_FLD_CATV_PT_DATA     ARRAY [2]
1    MSO_FLD_CA_ID           STR [0] "$CISCO1_CA_ID"
1    MSO_FLD_NETWORK_NODE    STR [0] "CISCO1"
END
;
			#print("$cisco1_array\n");
		}

		# VM
		if (length @vm_string[1] > 0 ) {
			if ($VM_CA_ID eq $vm_ca_id_str) {
				#print("\n /mso_cfg_catv_pt already has VM mapping.\n ");
				#prepare elem flist
				$vm_array = << "END"
0 MSO_FLD_CATV_PT_DATA     ARRAY [3]
1    MSO_FLD_CA_ID           STR [0] "$VM_CA_ID"
1    MSO_FLD_NETWORK_NODE    STR [0] "VM"
END
;				
			} else {
				$vm_write_flds = 1;
				$vm_create_mapping = 0;
			}
		} else {
			$vm_write_flds = 0;
			$vm_create_mapping = 1;
		}

		if ($vm_write_flds || $vm_create_mapping) 
		{ 
			#prepare elem flist
			$vm_array = << "END"
0 MSO_FLD_CATV_PT_DATA     ARRAY [3]
1    MSO_FLD_CA_ID           STR [0] "$VM_CA_ID"
1    MSO_FLD_NETWORK_NODE    STR [0] "VM"
END
;
			#print("$vm_array\n");
		}

		$catv_pt_data_array=$nds_array . $cisco_array . $cisco1_array. $vm_array;
		#print "\ncatv_pt_data_array=\n";
		#print "$catv_pt_data_array\n";		

		pcmif::pin_flist_destroy($search_flistp);
		pcmif::pin_flist_destroy($search_out_flistp);

		# Provisioning tag search complete
		
		#######################################################################################################
		# DONE with Searching and input preparation
		# Lets determine if we have to update the existing values or create new ones
		#######################################################################################################
		
		if ($nds_create_mapping || $cisco1_create_mapping || $cisco_create_mapping || $vm_create_mapping)
		{
			#print "\n Going to delete the object first to commit new values. \n";
			#call PCM_OP_CREATE_OBJ		
			if (length @prov_tag_obj[1] > 0 )
			{
				if (length $catv_pt_data_array <= 0 )
				{
					print ("\nBBB");
					goto NEXT_RECORD;
				}
			
				# Delete existing object first
				my $obj_delete_flist = << "END"
0 PIN_FLD_POID              POID [0]  @prov_tag_obj[1]
END
;  
				#print "\n obj_delete_flist=\n $obj_delete_flist\n";
				
				# Convert the flist string into an actual FList
				$obj_delete_flistp = pcmif::pin_perl_str_to_flist($obj_delete_flist, $db_no, $ebufp);
				if (pcmif::pcm_perl_is_err($ebufp)) 
				{
					$parse_error = $parse_error + 1;
					$line =~ s/\n//;
					$line = $line . ",Flist conversion failed for Detail record\n";
					print ERROR "$line";
					#==============================================
					# Destroy and create a new error buffer
					# Break and process next line
					#==============================================
					pcmif::pcm_perl_destroy_ebuf($ebufp);
					$ebufp = pcmif::pcm_perl_new_ebuf();
					goto NEXT_RECORD;
				}

				$obj_delete_out_flistp = pcmif::pcm_perl_op($pcm_ctxp, 2,
														 0, $obj_delete_flistp, $ebufp);

				if (pcmif::pcm_perl_is_err($ebufp)) 
				{
					$opcode_error = $opcode_error + 1;
					$line =~ s/\n//;
					$line = $line . ",opcode execution failed in update, Please check cm.pinlog for detail\n";
					print ERROR "$line";
					#==============================================
					# Destroy and create a new error buffer
					# Break and process next line
					#==============================================
					pcmif::pin_flist_destroy($obj_delete_flistp);
					pcmif::pcm_perl_destroy_ebuf($ebufp);
					$ebufp = pcmif::pcm_perl_new_ebuf();
					goto NEXT_RECORD;
				}

				$obj_delete_out_flist = pcmif::pin_perl_flist_to_str($obj_delete_out_flistp, $ebufp);
				#print "$obj_modify_out_flist\n";
				pcmif::pin_flist_destroy($obj_delete_flistp);
				pcmif::pin_flist_destroy($obj_delete_out_flistp);
			
				#print "\n Done with object deletion. Proceeding with new object creation. \n";
			
				# Re-create the mapping now.
				my $obj_create_flist = << "END"
0 PIN_FLD_POID              POID [0]  0.0.0.1 /mso_cfg_catv_pt -1 0
0 PIN_FLD_PROGRAM_NAME	     STR [0] "pt_loader"
0 PIN_FLD_PROVISIONING_TAG   STR [0] "$PROV_TAG"
0 MSO_FLD_PKG_TYPE          ENUM [0] $PKG_TYPE	
END
;

				#print "\nobj_create_flist=\n$obj_create_flist\n";
				$obj_create_flist = $obj_create_flist . $catv_pt_data_array;
				#print "\nobj_create_flist=\n$obj_create_flist\n";
				
				# Convert the flist string into an actual FList
				$obj_create_flistp = pcmif::pin_perl_str_to_flist($obj_create_flist, $db_no, $ebufp);
				if (pcmif::pcm_perl_is_err($ebufp))
				{
						$parse_error = $parse_error + 1;
						$line =~ s/\n//;
						$line = $line . ",mso_cfg_catv_pt failed record\n";
						print ERROR "$line";
						#==============================================
						# Destroy and create a new error buffer
						# Break and process next line
						#==============================================
						pcmif::pcm_perl_destroy_ebuf($ebufp);
						$ebufp = pcmif::pcm_perl_new_ebuf();
						goto NEXT_RECORD;
				}

			   $obj_create_out_flistp = pcmif::pcm_perl_op($pcm_ctxp, 1,
															0, $obj_create_flistp, $ebufp);

			   if (pcmif::pcm_perl_is_err($ebufp))
			   {
				   #pcmif::pcm_perl_print_ebuf($ebufp);

				   $opcode_error = $opcode_error + 1;
				   $line =~ s/\n//;
				   $line = $line . ",opcode execution failed in insert, Please check cm.pinlog for detail\n";
				   print ERROR "$line";
				   #==============================================
				   # Destroy and create a new error buffer
				   # Break and process next line
				   #==============================================
				   pcmif::pin_flist_destroy($input_flist);
				   pcmif::pcm_perl_destroy_ebuf($ebufp);
				   $ebufp = pcmif::pcm_perl_new_ebuf();
				   goto NEXT_RECORD;
			   }

				$out_flist = pcmif::pin_perl_flist_to_str($obj_create_out_flistp, $ebufp);
			
				#print "\n\n out_flist=$out_flist";

				pcmif::pin_flist_destroy($obj_create_flistp);
				pcmif::pin_flist_destroy($obj_create_out_flistp);

				# Object creation completed				
			}			
		}
		elsif ($nds_write_flds || $cisco1_write_flds || $cisco_write_flds || $vm_write_flds)
		{
			#call PCM_OP_WRITE_FLDS
			if (length @prov_tag_obj[1] > 0 )
			{
				if (length $catv_pt_data_array <= 0 )
				{
					print ("\nBBB");
					goto NEXT_RECORD;
				}
				
				#==================================
				# Object modify starts here 
				#==================================
				my $obj_modify_flist = << "END"
0 PIN_FLD_POID              POID [0]  @prov_tag_obj[1]
0 PIN_FLD_PROGRAM_NAME       STR [0] "pt_loader"
0 PIN_FLD_PROVISIONING_TAG   STR [0] "$PROV_TAG"
0 MSO_FLD_PKG_TYPE          ENUM [0] $PKG_TYPE
END
;
				$obj_modify_flist=$obj_modify_flist . $catv_pt_data_array;

				#print "\n obj_modify_flist=\n$obj_modify_flist\n";
				# Convert the flist string into an actual FList
				$obj_modify_flistp = pcmif::pin_perl_str_to_flist($obj_modify_flist, $db_no, $ebufp);
				
				if (pcmif::pcm_perl_is_err($ebufp)) 
				{
					$parse_error = $parse_error + 1;
					$line =~ s/\n//;
					$line = $line . ",Flist conversion failed for Detail record\n";
					print ERROR "$line";
					#==============================================
					# Destroy and create a new error buffer
					# Break and process next line
					#==============================================
					pcmif::pcm_perl_destroy_ebuf($ebufp);
					$ebufp = pcmif::pcm_perl_new_ebuf();
					goto NEXT_RECORD;
				}
	
				$obj_modify_out_flistp = pcmif::pcm_perl_op($pcm_ctxp, 5,
                                                     32, $obj_modify_flistp, $ebufp);

				if (pcmif::pcm_perl_is_err($ebufp)) 
				{
					$opcode_error = $opcode_error + 1;
					$line =~ s/\n//;
					$line = $line . ",opcode execution failed in update, Please check cm.pinlog for detail\n";
					print ERROR "$line";
					#==============================================
					# Destroy and create a new error buffer
					# Break and process next line
					#==============================================
					pcmif::pin_flist_destroy($obj_modify_flistp);
					pcmif::pcm_perl_destroy_ebuf($ebufp);
					$ebufp = pcmif::pcm_perl_new_ebuf();
					goto NEXT_RECORD;
				}

				$obj_modify_out_flist = pcmif::pin_perl_flist_to_str($obj_modify_out_flistp, $ebufp);
				
				#print "\n obj_modify_out_flist = $obj_modify_out_flist \n";

				pcmif::pin_flist_destroy($obj_modify_flistp);
				pcmif::pin_flist_destroy($obj_modify_out_flistp);				
			}
		}		
     
       $success_count = $success_count + 1;
    }

    NEXT_RECORD:
        $line = <INP>;
}


CLEANUP:
#        $success_count = $total_no_of_records - $parse_error - $field_validation_error - $opcode_error;
    if (pcmif::pcm_perl_is_err($ebufp)) 
    {
        print "\n\t\t\t------------------------------------";
        print "\n\t\t\tError: Procees completed with ERROR";
        print "\n\t\t\tPlease check log file for detail ERROR";
        print "\n\t\t\t------------------------------------";
    }
    else
    {
        print "\n\nProcessing Summary";
        print "\n\t Total number of records = $total_no_of_records";
        print "\n\t Records failed in parsing = $parse_error";
        print "\n\t Records failed in field validation = $field_validation_error";
        print "\n\t Records failed in opcode execution = $opcode_error";
        print "\n\t Successfully processed record count = $success_count \n";

    }

    close(INP) if (<FILE_IS_OPEN>);
    close(ERROR) if (<FILE_IS_OPEN>);


sub trim($)
{
   my $string = shift;
   $string =~ s/^\s+//;
   $string =~ s/\s+$//;
   return $string;
}

sub ltrim($)
{
    my $string = shift;
    $string =~ s/^\s+//;
    return $string;
}

sub rtrim($)
{
    my $string = shift;
    $string =~ s/\s+$//;
    return $string;
}

