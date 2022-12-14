#!/bin/sh
#source .bash_profile
user="$1"
pass="$2"
SID="$3"
location="$4"
#rm $location/execution_logs
sqlplus -S $user/$pass@$SID <<EOF
set termout off
set feedback off
set echo off
set linesize 50
set pagesize 30000
SET MARKUP HTML ON SPOOL ON PREFORMAT OFF ENTMAP ON
spool $location/MSO_PKG_RELATED.xls
EXECUTE MSO_RPT_PACKAGE_RPT; 
select DT_CODE_P,DT_NAME,DT_LOCATION,DT_ACT_SER_COUNT,DT_STB_COUNT,DT_INACT_SER_COUNT,DT_COUNT_SER_CRFY,DT_COUNT_STB_GIVEN,FTA_CUST_COUNT,FTA_BILLING,STARTER_CUST_COUNT,STARTER_BILLING,POPULAR_BILLING,POPULAR_CUST_COUNT,PREMIUM_BILLING,PREMIUM_CUST_COUNT,OTHER_CUST_BILLING,OTHER_CUST_COUNT,HD_BILLING,HD_CUST_COUNT from MSO_RPT_BRS_PKG_RELATED;
exit;
spool off;
EOF
