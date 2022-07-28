#!/home/pin/opt/portal/7.5/ThirdParty/perl/5.8.0/bin/perl
#=================================================================================
# Load the pakcage mapipng file create/update /mso_cfg_catv_state_demo_pack object
#=================================================================================
use strict;
use warnings;

use lib '.' ;
use pcmif;
use POSIX qw(strftime);


my $db_no = '';
my $DB_NO = '';
my $plan_id = '';
my $state = '';
my $demo_plan = '';
my $pkg_type = '';
my $svc_type = '';
my $das_type = '';
my $f1 = '';
my $out = '';
my $et_at = '';
my $plan_map_poid = '';
my $cfg_plan_map_poid = '';
my $level = '';
my $value = '';
my $count = 0;
my $success = 0;
my $error = 0;
my $LOGFILE;
my $ERRORFILE;

if ($#ARGV < 0){
    die "\nUsage: $0 <STATE_DEMO_PLANS.CSV> \n\n".
	"Input file format for STATE_DEMO_PLANS.CSV: \n".
	"STATE,DEMO_PLAN\n".
	 "MH,NORTH BASIC SERVICE TIER DEMO 7DAY\n";
}
my $LOG_HOME="/data/opt/portal/7.5/var/mso_bulk_utilities";
$LOGFILE = "$LOG_HOME/mso_load_catv_demo_plans.pinlog";
my $date = strftime "%d%m%Y_%H%M%S", localtime;
$ERRORFILE = "mso_main_addl_pckg_map_error_$date.out";
open(LOG, ">>$LOGFILE") or die("Could not open file $LOGFILE");
open(ERROR, ">>$ERRORFILE") or die("Could not open file $LOGFILE");

my $state_demo_plans = shift(@ARGV);

open(INFO, $state_demo_plans) || die "Error could not open file: $state_demo_plans!\n\n".
    "\nUsage: $0 <STATE_DEMO_PLANS.CSV> \n\n".
	"Input file format for STATE_DEMO_PLANS.CSV: \n".
	"STATE,DEMO_PLAN\n\n";

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
 print "loading STATE and DEMO_PLANS for DEMO PLANS : \n";

foreach $plan_id (@lines)	
{
	if ($plan_id !~ /^\#/){
		$count = $count+1;

		my @nums = split /\,/ , $plan_id;
		my $field_nums = @nums;

		if($field_nums == 2)
		{
			## Updating
			( $state, $demo_plan ) = split /\,/ , $plan_id;
			$demo_plan =~ s/\n//;
		}
		else
		{
			log_msg(3, "Error Missing Field");
			print ERROR "$plan_id\n";
			$error = $error+1;
			next;
		}

		log_msg(1,"state: $state demo_plan: $demo_plan");

	# check to see if state exists or not

$f1 = <<"XXX"

0 PIN_FLD_POID                POID [0] $DB_NO /search -1 0
0 PIN_FLD_FLAGS                INT [0] 256
0 PIN_FLD_TEMPLATE    STR [0] "select X from /mso_cfg_catv_state_demo_pack where F1 = V1 "
0 PIN_FLD_ARGS          ARRAY [1] allocated 20, used 1
1         PIN_FLD_STATE            STR [0] "$state"
0 PIN_FLD_RESULTS      ARRAY [0]
1     PIN_FLD_POID          POID [0] 0.0.0.0  0 0
XXX
;
		log_msg(1,"Input flist for mso_cfg_catv_state_demo_pack search: \n $f1");

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
		log_msg(1,"mso_cfg_catv_state_demo_pack search output: \n $out");

		pcmif::pin_flist_destroy($flistp);
		pcmif::pin_flist_destroy($out_flistp);

		if ($out =~ "/mso_cfg_catv_state_demo_pack") {
			log_msg(1,"$state already exists hence updating the object with $demo_plan");
			$et_at = index($out, "/mso_cfg_catv_state_demo_pack");
			$plan_map_poid = substr($out, $et_at + 30, index($et_at, " "));
			
			$plan_map_poid =~ s|([0-9][0-9]*) .*|$1|;
			$cfg_plan_map_poid = $plan_map_poid ;
		
$f1 = <<"XXX"
0 PIN_FLD_POID           POID [0] $DB_NO /mso_cfg_catv_state_demo_pack $cfg_plan_map_poid 1
0 PIN_FLD_STATE              STR [0] "$state"
0 MSO_FLD_PLAN_NAME    STR [0] "$demo_plan"
XXX
;
			log_msg(1,"updating $state for WRITE_FLDS input flist: \n $f1");
			$flistp = pcmif::pin_perl_str_to_flist($f1, $db_no, $ebufp);

			if (pcmif::pcm_perl_is_err($ebufp)) {
				print "file for flist convertion error\n";
				print ERROR "$plan_id \n";
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
				print ERROR "$plan_id \n";
				$error = $error+1;
				pcmif::pcm_perl_print_ebuf($ebufp);
				pcmif::pin_flist_destroy($flistp);
				pcmif::pin_flist_destroy($out_flistp);
				pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
				next;
			}
			$out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
			log_msg(1,"updating $state for WRITE_FLDS output flist: \n $out");

			pcmif::pin_flist_destroy($flistp);
			pcmif::pin_flist_destroy($out_flistp);
			
			if ($out =~ "$cfg_plan_map_poid") {
				print "STATE: $state updated with DEMO_PLAN $demo_plan \n" ;
				log_msg(1,"STATE: $state updated with DEMO_PLAN $demo_plan");
				$success = $success+1;
			}
			
		} 
		else{       #else 1
			log_msg(1,"proceed to create new object for $state ");
		


	#
	# now we fill in an flist for UPDATING tax_config
	#


$f1 = <<"XXX"
0 PIN_FLD_POID           POID [0] $DB_NO /mso_cfg_catv_state_demo_pack -1 1
0 PIN_FLD_ACCOUNT_OBJ    POID [0] 0.0.0.1 /account 1 0
0 PIN_FLD_STATE              STR [0] "$state"
0 MSO_FLD_PLAN_NAME    STR [0] "$demo_plan"
XXX
;

			log_msg(1,"creating new $state input flist: \n $f1");
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

			$out_flistp = pcmif::pcm_perl_op($pcm_ctxp, "PCM_OP_CREATE_OBJ", 0,
					$flistp, $ebufp);

			if (pcmif::pcm_perl_is_err($ebufp)) {
				print "creating /mso_cfg_catv_state_demo_pack  failed- check log\n";
				log_msg(3,"creation of new package mapping call failed: \n $ebufp");
				print ERROR "$plan_id \n";
				$error = $error+1;
				pcmif::pcm_perl_print_ebuf($ebufp);
				pcmif::pin_flist_destroy($flistp);
				pcmif::pin_flist_destroy($out_flistp);
				pcmif::pcm_context_close($pcm_ctxp, 0, $ebufp);
				next;
			}
			$out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
			log_msg(1,"creating new $state output flist: \n $out");

			pcmif::pin_flist_destroy($flistp);
			pcmif::pin_flist_destroy($out_flistp);
		
			if ($out =~ "/mso_cfg_catv_state_demo_pack") {
				print "STATE: $state created with DEMO_PLAN $demo_plan \n" ;
				log_msg(1,"STATE: $state created with DEMO_PLAN $demo_plan");
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
