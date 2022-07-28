#!/home/pin/opt/portal/7.5/ThirdParty/perl/5.8.0/bin/perl
#=============================================================================
# Load the ET tax zone and code to create/update mso_cfg_et_mapping object
#=============================================================================
use strict;
use warnings;

use lib '.' ;
use pcmif;
use POSIX qw(strftime);


my $db_no = '';
my $DB_NO = '';
my $tax_id = '';
my $tax_zone = '';
my $tax_code = '';
my $pkg_type = '';
my $svc_type = '';
my $das_type = '';
my $f1 = '';
my $out = '';
my $et_at = '';
my $et_map_poid = '';
my $cfg_et_map_poid = '';
my $level = '';
my $value = '';
my $count = 0;
my $success = 0;
my $error = 0;
my $LOGFILE;
my $ERRORFILE;

if ($#ARGV < 0){
    die "\nUsage: $0 <ET_STATE_DAS_MAP_FILE> \n\n".
	"Input file format for ET STATE DAS MAPPING: \n".
	"TAX_ZONE,TAX_CODE,PACKAGE_TYPE,SERVICE_TYPE,DAS_TYPE\n".
	 "WB_ADDL_CONN,ET_F_10_0,1,1,DAS-I\n";
}
my $LOG_HOME="/data/opt/portal/7.5/var/mso_bulk_utilities";
$LOGFILE = "$LOG_HOME/et_mapping.pinlog";
my $date = strftime "%d%m%Y_%H%M%S", localtime;
$ERRORFILE = "et_tax_map_error_$date.out";
open(LOG, ">>$LOGFILE") or die("Could not open file $LOGFILE");
open(ERROR, ">>$ERRORFILE") or die("Could not open file $LOGFILE");

my $et_state_das_file = shift(@ARGV);

open(INFO, $et_state_das_file) || die "Error could not open file: $et_state_das_file!\n\n".
    "\nUsage: $0 <ET_STATE_DAS_MAP_FILE> \n\n".
	"Input file format for ET STATE DAS MAPPING: \n".
	"|CITY_CODE\n\n";

my @lines = <INFO>;	
close(INFO);

my $ebufp = pcmif::pcm_perl_new_ebuf();

my $pcm_ctxp = pcmif::pcm_perl_connect($db_no, $ebufp);

if (pcmif::pcm_perl_is_err($ebufp)) {
	print "Error in establishing a connection. Please check logfile: $LOGFILE\n";
	log_msg(3,"Error in opening connection: $ebufp");
	pcmif::pcm_perl_print_ebuf($ebufp);
	exit(1);
}

$DB_NO = $db_no;
$pkg_type = 1; #Deafulat value
$svc_type = 1;#Defaul
$das_type = "DAS-I";
 print "loading TAX_ZONE and TAX_CODES for ET: \n";

foreach $tax_id (@lines)	
{
	if ($tax_id !~ /^\#/){
		$count = $count+1;

		my @nums = split /\,/ , $tax_id;
		my $field_nums = @nums;

		if($field_nums == 5)
		{
			## Updating
			( $tax_zone, $tax_code, $pkg_type, $svc_type, $das_type ) = split /\,/ , $tax_id;
			$das_type =~ s/\n//;
		}
		else
		{
			log_msg(3, "Error Missing Field");
			print ERROR "$tax_id\n";
			$error = $error+1;
			next;
		}

		log_msg(1,"tax_zone: $tax_zone   tax_code: $tax_code");

	# check to see if tax_zone exists or not

$f1 = <<"XXX"

0 PIN_FLD_POID                POID [0] $DB_NO /search -1 0
0 PIN_FLD_FLAGS                INT [0] 256
0 PIN_FLD_TEMPLATE    STR [0] "select X from /mso_cfg_et_mapping where F1 = V1 and F2 = V2 "
0 PIN_FLD_ARGS      ARRAY [1]
1     PIN_FLD_NAME        STR [0] "$tax_zone"
0 PIN_FLD_ARGS      ARRAY [2]
1     PIN_FLD_TAX_CODE STR [0] "$tax_code"
0 PIN_FLD_RESULTS      ARRAY [0]
1     PIN_FLD_POID          POID [0] 0.0.0.0  0 0
XXX
;
		log_msg(1,"Input flist for ET ZONE search: \n $f1");

		my $flistp = pcmif::pin_perl_str_to_flist($f1, $db_no, $ebufp);

		if (pcmif::pcm_perl_is_err($ebufp)) {
			log_msg(3,"Input flist conversion error: \n $ebufp");
			print ERROR "$tax_id \n";
			$error = $error+1;
			pcmif::pcm_perl_print_ebuf($ebufp);
			pcmif::pin_flist_destroy($flistp);
			pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
			next;
		}

		my $out_flistp = pcmif::pcm_perl_op($pcm_ctxp, "PCM_OP_SEARCH", 0,
				$flistp, $ebufp);

		if (pcmif::pcm_perl_is_err($ebufp)) {
			log_msg(3,"SEARCH FAILED DUE TO BRM: $ebufp");
			print ERROR "$tax_id \n";
			$error = $error+1;
			pcmif::pcm_perl_print_ebuf($ebufp);
			pcmif::pin_flist_destroy($flistp);
			pcmif::pin_flist_destroy($out_flistp);
			pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
			next;
		}

		$out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
		log_msg(1,"ET_MAPPING search output: \n $out");

		pcmif::pin_flist_destroy($flistp);
		pcmif::pin_flist_destroy($out_flistp);

		if ($out =~ "/mso_cfg_et_mapping") {
			log_msg(1,"$tax_zone already exists hence updating the object with $tax_code");
			$et_at = index($out, "/mso_cfg_et_mapping");
			$et_map_poid = substr($out, $et_at + 19, index($et_at, " "));
			
			$et_map_poid =~ s|([0-9][0-9]*) .*|$1|;
			$cfg_et_map_poid = $et_map_poid ;
		
$f1 = <<"XXX"
0 PIN_FLD_POID           POID [0] $DB_NO /mso_cfg_et_mapping $cfg_et_map_poid 1
0 MSO_FLD_SERVICE_TYPE   ENUM [0] $svc_type
0 PIN_FLD_NAME            STR [0] "$tax_zone"
0 PIN_FLD_TAXPKG_TYPE    ENUM [0] $pkg_type
0 PIN_FLD_TAX_CODE        STR [0] "$tax_code"
0 MSO_FLD_DAS_TYPE	STR [0] "$das_type"
XXX
;
			log_msg(1,"updating $tax_zone for WRITE_FLDS input flist: \n $f1");
			$flistp = pcmif::pin_perl_str_to_flist($f1, $db_no, $ebufp);

			if (pcmif::pcm_perl_is_err($ebufp)) {
				print "file for flist convertion error\n";
				print ERROR "$tax_id \n";
				$error = $error+1;
				pcmif::pin_flist_destroy($flistp);
				pcmif::pcm_perl_print_ebuf($ebufp);
				pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
				next;
			}

			$out_flistp = pcmif::pcm_perl_op($pcm_ctxp, "PCM_OP_WRITE_FLDS", 0,
					$flistp, $ebufp);

			if (pcmif::pcm_perl_is_err($ebufp)) {
				print "WRITE_FLDS opcode call failed\n";
				log_msg(3,"WRITE_FLDS opcode call failed: \n $ebufp");
				print ERROR "$tax_id \n";
				$error = $error+1;
				pcmif::pcm_perl_print_ebuf($ebufp);
				pcmif::pin_flist_destroy($flistp);
				pcmif::pin_flist_destroy($out_flistp);
				pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
				next;
			}	
			$out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
			log_msg(1,"updating $tax_zone for WRITE_FLDS output flist: \n $out");

			pcmif::pin_flist_destroy($flistp);
			pcmif::pin_flist_destroy($out_flistp);
			
			if ($out =~ "$cfg_et_map_poid") {
				print "TAX_ZONE: $tax_zone updated with TAX_CODE $tax_code \n" ;
				log_msg(1,"TAX_ZONE: $tax_zone updated with TAX_CODE $tax_code");
				$success = $success+1;
			}
			
		} 
		else{       #else 1
			log_msg(1,"proceed to create new object for $tax_zone ");
		


	#
	# now we fill in an flist for UPDATING tax_config
	#


$f1 = <<"XXX"
0 PIN_FLD_POID           POID [0] 0.0.0.1 /mso_cfg_et_mapping -1 1
0 MSO_FLD_SERVICE_TYPE   ENUM [0] $svc_type
0 PIN_FLD_ACCOUNT_OBJ    POID [0] 0.0.0.1 /account 1 0
0 PIN_FLD_NAME            STR [0] "$tax_zone"
0 PIN_FLD_TAXPKG_TYPE    ENUM [0] $pkg_type
0 PIN_FLD_TAX_CODE        STR [0] "$tax_code"
0 MSO_FLD_DAS_TYPE	STR [0] "$das_type"
XXX
;

			log_msg(1,"creating new $tax_zone input flist: \n $f1");
			$flistp = pcmif::pin_perl_str_to_flist($f1, $db_no, $ebufp);

			if (pcmif::pcm_perl_is_err($ebufp)) {
				print "flist conversion failed\n";
				print ERROR "$tax_id \n";
				$error = $error+1;
				pcmif::pcm_perl_print_ebuf($ebufp);
				pcmif::pin_flist_destroy($flistp);
				pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
				next;
			}

			$out_flistp = pcmif::pcm_perl_op($pcm_ctxp, "PCM_OP_CREATE_OBJ", 0,
					$flistp, $ebufp);

			if (pcmif::pcm_perl_is_err($ebufp)) {
				print "creating ET TAX mapping failed- check log\n";
				log_msg(3,"creation of new ET call failed: \n $ebufp");
				print ERROR "$tax_id \n";
				$error = $error+1;
				pcmif::pcm_perl_print_ebuf($ebufp);
				pcmif::pin_flist_destroy($flistp);
				pcmif::pin_flist_destroy($out_flistp);
				pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
				next;
			}
			$out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
			log_msg(1,"creating new $tax_zone output flist: \n $out");

			pcmif::pin_flist_destroy($flistp);
			pcmif::pin_flist_destroy($out_flistp);
		
			if ($out =~ "/mso_cfg_et_mapping") {
				print "TAX_ZONE: $tax_zone created with TAX_CODE $tax_code \n" ;
				log_msg(1,"TAX_ZONE: $tax_zone created with TAX_CODE $tax_code");
				$success = $success+1;
			}

		} 
	} 
}
print "Total number of records processed: $count\n" ;
print "Total number of records successfully processed: $success\n" ;
print "Total number of records errored out: $error\n" ;
print "Please check the $LOGFILE for detailed information: \n";

pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
if (pcmif::pcm_perl_is_err($ebufp)) {
	print "BAD close\n";
	log_msg(3,"BAD CLOSE");
        pcmif::pcm_perl_ebuf_to_str($ebufp);
	exit(1);
}
close (LOG);
close (ERROR);
sub log_msg 
{
  my $level = shift;
  my $msg = shift;
  my $localtime = localtime();
  if ( $level == 1 ) {
	print LOG "D ";
        print LOG "$localtime \n";
        print LOG "$msg \n"; 
  }

  if ( $level == 2 ) {
        print LOG "W ";
        print LOG "$localtime \n";
        print LOG "$msg \n";
  }

  if ( $level == 3 ) {
        print LOG "E ";
        print LOG "$localtime \n";
        print LOG "\t $msg \n";
  }
}

exit (0)
