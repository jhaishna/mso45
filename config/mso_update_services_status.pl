#!/home/pin/opt/portal/7.5/ThirdParty/perl/5.8.0/bin/perl
#==================================================================================
# This script updates the status of services given in the input file 
#==================================================================================
use strict;
use warnings;

use lib '.' ;
use pcmif;
use POSIX qw(strftime);


my $db_no = '';
my $DB_NO = '';
my $plan_id = '';
my $acct_poid = '';
my $srvc_obj = '';
my $pkg_type = '';
my $svc_type = '';
my $status = 0;
my $f1 = '';
my $out = '';
my $et_at = '';
my $plan_map_poid = '';
my $cfg_plan_map_poid = '';
my $level = '';
my $value = '';
my $count = 0;
my $success = 0;
my $noupdate = 0;
my $error = 0;
my $LOGFILE;
my $ERRORFILE;

if ($#ARGV < 0){
    die "\nUsage: $0 <LCO_SERVICE_INPUT.CSV> \n\n".
	"Input file format for LCO_SERVICE_INPUT.CSV: \n".
	"ACCOUNT_POID, SERV_POID, POID_TYPE, STATUS\n".
	 "12345, 678901, /service/settlement/ws/outcollect, 10100\n";
}
my $LOG_HOME="/data/opt/portal/7.5/var/mso_other_apps";
$LOGFILE = "$LOG_HOME/mso_srvc_update.pinlog";
my $date = strftime "%d%m%Y_%H%M%S", localtime;
$ERRORFILE = "mso_srvc_update_error_$date.out";
open(LOG, ">>$LOGFILE") or die("Could not open file $LOGFILE");
open(ERROR, ">>$ERRORFILE") or die("Could not open file $LOGFILE");

my $lco_bal_grp_input = shift(@ARGV);

open(INFO, $lco_bal_grp_input) || die "Error could not open file: $lco_bal_grp_input!\n\n".
    "\nUsage: $0 <LCO_BAL_GRP_INPUT.CSV> \n\n".
        "Input file format for LCO_BAL_GRP_INPUT.CSV: \n".
        "ACCOUNT_POID,BILLINFO_POID\n\n";

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
$pkg_type = 0; #Deafulat value
 print "UPDATE SERVICE STATUS: \n";
$plan_id = @lines;
print "$plan_id";

foreach $plan_id (@lines)
{
	if ($plan_id !~ /^\#/){
		$count = $count+1;
		my @nums = split /\,/ , $plan_id;
		my $field_nums = @nums;

		if($field_nums == 4)
		{
			## Updating
			( $acct_poid, $srvc_obj, $svc_type, $status ) = split /\,/ , $plan_id;
			$status =~ s/\n//;
			print "ACCT: $acct_poid= $srvc_obj= $svc_type= $status\n";
		}
		else
		{
			log_msg(3, "Error Missing Field");
			print ERROR "$plan_id\n";
			$error = $error+1;
			next;
		}
		my $check = 0;
		$check = input_valid($acct_poid, "/account");
		if ($check == 0){
			log_msg(3, "Account Not Exists");
			print ERROR "$plan_id\n";
			$error = $error+1;
			next;
		}	
		$check = input_valid($srvc_obj, $svc_type);
		if ($check == 0){
			log_msg(3, "Invalid Service given");
			print ERROR "$plan_id\n";
			$error = $error+1;
			next;
		}
		if (($status ne 10100) && ($status ne 10102) && ($status ne 10103)){
			log_msg(3, "Invalid STATUS is proivded $status");
			print ERROR "$plan_id\n";
			$error = $error+1;
			next;
		}

		log_msg(1,"acct_poid: $acct_poid srvc_obj: $srvc_obj");
		my $res;
		$res = update_service_status($acct_poid, $srvc_obj, $svc_type);
		if ($res == 1){
			$success = $success+1;
		}
		if ($res == 2){
			$noupdate = $noupdate+1;
		}

	} 
}
print "Total number of records processed: $count\n" ;
print "Total number of records successfully processed: $success\n" ;
print "Total number of records already updated with given status: $noupdate\n" ;
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
sub update_service_status
{
     my $acct_poid = shift;
     my $srvc_obj = shift;
     my $svc_type = shift;
     my $result = 0;

     #print "ACCOUNT POID: $acct_poid, Billinfo: $srvc_obj \n";
	# check to see if balance_grp exists or not

$f1 = <<"XXX"

0 PIN_FLD_POID                POID [0] $DB_NO /search -1 0
0 PIN_FLD_FLAGS                INT [0] 256
0 PIN_FLD_TEMPLATE    STR [0] "select X from $svc_type where F1 = V1 and F2 = V2 "
0 PIN_FLD_ARGS          ARRAY [1] allocated 20, used 1
1         PIN_FLD_POID	POID [0] 0.0.0.1 $svc_type $srvc_obj 0
0 PIN_FLD_ARGS          ARRAY [2] allocated 20, used 1
1         PIN_FLD_STATUS	ENUM [0] $status 
0 PIN_FLD_RESULTS      ARRAY [0]
1     PIN_FLD_POID          POID [0] 0.0.0.0  0 0
XXX
;
		log_msg(1,"Input flist for $svc_type status search: \n $f1");

		my $flistp = pcmif::pin_perl_str_to_flist($f1, $db_no, $ebufp);

		if (pcmif::pcm_perl_is_err($ebufp)) {
			log_msg(3,"Input flist conversion error: \n $ebufp");
			print ERROR "$plan_id \n";
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
			print ERROR "$plan_id \n";
			$error = $error+1;
			pcmif::pcm_perl_print_ebuf($ebufp);
			pcmif::pin_flist_destroy($flistp);
			pcmif::pin_flist_destroy($out_flistp);
			pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
			next;
		}

		$out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
		log_msg(1,"$svc_type STATUS search output: \n $out");

		pcmif::pin_flist_destroy($flistp);
		pcmif::pin_flist_destroy($out_flistp);

		if ($out =~ $svc_type) {
			log_msg(1,"$srvc_obj is already updated with given status  ");
			$result = 2;

		} 
		else{       #else 1
			log_msg(1,"proceed to update status for $srvc_obj");
		


	#
	# now we fill in an flist for UPDATING tax_config
	#


$f1 = <<"XXX"
0 PIN_FLD_POID                         POID [0] $DB_NO /account $acct_poid 0
0 PIN_FLD_PROGRAM_NAME                  STR [0] "UPDATE_SERVICE_SCRIPT"
0 PIN_FLD_SERVICES                      ARRAY [0] allocated 20, used 4
1 PIN_FLD_POID                         POID [0] $DB_NO $svc_type $srvc_obj 0
1      PIN_FLD_STATUS                  ENUM [0] $status 
1      PIN_FLD_STATUS_FLAGS             INT [0]  0
XXX
;

			log_msg(1,"updating service status for $srvc_obj-$svc_type input flist: \n $f1");
			$flistp = pcmif::pin_perl_str_to_flist($f1, $db_no, $ebufp);

			if (pcmif::pcm_perl_is_err($ebufp)) {
				print "flist conversion failed\n";
				print ERROR "$plan_id \n";
				$error = $error+1;
				pcmif::pcm_perl_print_ebuf($ebufp);
				pcmif::pin_flist_destroy($flistp);
				pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
				next;
			}

			$out_flistp = pcmif::pcm_perl_op($pcm_ctxp, "PCM_OP_CUST_UPDATE_SERVICES", 0,
					$flistp, $ebufp);

			if (pcmif::pcm_perl_is_err($ebufp)) {
				print "updating service status failed- check log\n";
				log_msg(3,"updating serivice status call failed: \n $ebufp");
				print ERROR "$plan_id \n";
				$error = $error+1;
				pcmif::pcm_perl_print_ebuf($ebufp);
				pcmif::pin_flist_destroy($flistp);
				pcmif::pin_flist_destroy($out_flistp);
				pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
				next;
			}
			$out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
			log_msg(1,"updating status for $srvc_obj-$svc_type output flist: \n $out");

			pcmif::pin_flist_destroy($flistp);
			pcmif::pin_flist_destroy($out_flistp);
		
			if ($out =~ $svc_type ) {
				print "$srvc_obj status is updated successfully\n" ;
				log_msg(1,"$srvc_obj status is updated successfully for service $svc_type");
				$result = 1;
			}

		} 
	return $result;
}
sub input_valid{
    my  $acct_poid = shift;
     my $poid_type = shift;
	my $exist = 0;


     #print "ACCOUNT POID: $acct_poid, Billinfo: $srvc_obj \n";
	# check to see if balance_grp exists or not

$f1 = <<"XXX"

0 PIN_FLD_POID                POID [0] $DB_NO /search -1 0
0 PIN_FLD_FLAGS                INT [0] 256
0 PIN_FLD_TEMPLATE    STR [0] "select X from $poid_type where F1 = V1 "
0 PIN_FLD_ARGS          ARRAY [1] allocated 20, used 1
1         PIN_FLD_POID POID [0] 0.0.0.1 $poid_type $acct_poid 0
0 PIN_FLD_RESULTS      ARRAY [0]
1     PIN_FLD_POID          POID [0] 0.0.0.0  0 0
XXX
;
		log_msg(1,"Input flist for $acct_poid valid search: \n $f1");

		my $flistp = pcmif::pin_perl_str_to_flist($f1, $db_no, $ebufp);

		if (pcmif::pcm_perl_is_err($ebufp)) {
			log_msg(3,"Input flist conversion error: \n $ebufp");
			print ERROR "$plan_id \n";
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
			print ERROR "$plan_id \n";
			$error = $error+1;
			pcmif::pcm_perl_print_ebuf($ebufp);
			pcmif::pin_flist_destroy($flistp);
			pcmif::pin_flist_destroy($out_flistp);
			pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
			next;
		}

		$out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
		log_msg(1,"$acct_poid search output: \n $out");

		pcmif::pin_flist_destroy($flistp);
		pcmif::pin_flist_destroy($out_flistp);

		if ($out =~ $poid_type) {
			$exist = 1;	
		}
		else{
			$exist = 0;
		}
	return $exist;
}

exit (0)
