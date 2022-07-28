#!/home/pin/opt/portal/7.5/ThirdParty/perl/5.8.0/bin/perl

use pcmif;
use Sys::Hostname;
use File::Copy;
use File::Basename;
use File::Path;

sub trim($);
my $inpfile = '/home/pin/opt/portal/7.5/mso/bin/child_conn_actvation/PROV_TO_PASS.nap';

# setup and connect
my $db_no = 1;
my $i = 0;
print $db_no;
$ebufp = pcmif::pcm_perl_new_ebuf();
$pcm_ctxp = pcmif::pcm_perl_connect($db_no, $ebufp);
if (pcmif::pcm_perl_is_err($ebufp)) {
pcmif::pcm_perl_print_ebuf($ebufp);
clean_exit(1);
} else {
$my_session = pcmif::pcm_perl_get_session($pcm_ctxp);
if ($DEBUG) {
print LOG "$PID: Default DB is: $db_no\n";
print LOG "$PID: Session poid is: ", $my_session, "\n";
}
}
print $inpfile;
open( INP, $inpfile) || die("Input file cannot be opened");
$line = <INP>;
while ($line) {
chomp($line);
($account_poid,$service_poid,$pp_poid)= split(/,/, $line);
$f1 = << "END"
0 PIN_FLD_POID           POID [0] 0.0.0.1 /account $account_poid
0 PIN_FLD_FLAGS           INT [0] 2 
0 PIN_FLD_SERVICE_OBJ    POID [0] 0.0.0.1 /service/catv $service_poid
0 PIN_FLD_PRODUCTS      ARRAY [0] allocated 20, used 1 
1    PIN_FLD_POID        POID [0] 0.0.0.1 /purchased_product $pp_poid
END
;

print "$f1\n";
# Convert the flist string into an actual FList
$flistp = pcmif::pin_perl_str_to_flist($f1, $db_no, $ebufp);
if (pcmif::pcm_perl_is_err($ebufp)) {
print "Input Flist conversion failed:\n$f1\n";
pcmif::pcm_perl_print_ebuf($ebufp);
exit(1);
}

$out_flistp = pcmif::pcm_perl_op($pcm_ctxp, "MSO_OP_PROV_CREATE_CATV_ACTION",
     0, $flistp, $ebufp);
	if (pcmif::pcm_perl_is_err($ebufp)) {
	print "Call failed for Account poid:$account_poid\n";
	}
     $out = pcmif::pin_perl_flist_to_str($out_flistp, $ebufp);
     print "$out\n";
     print "MSO_OP_PROV_CREATE_CATV_ACTION called successfully !!!\n\n";
     $line = <INP>;
     }

     close(INP);
     sub trim($){
     my $string = shift;
     $string =~ s/^\s+//;
     $string =~ s/\s+$//;
     return $string;
     }


