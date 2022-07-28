#!/bin/bash

cd /home/pin/opt/portal/7.5/mso/bin/child_conn_actvation/

DB_STRING=`cat /home/pin/.pass/pin.db`
sqlplus -S ${DB_STRING} <<EOF
EOF

OUT_FILE=/home/pin/opt/portal/7.5/mso/bin/child_conn_actvation/sql_output.log
sqlplus -s /nolog << eof >$OUT_FILE
connect ${DB_STRING}
@/home/pin/opt/portal/7.5/mso/bin/child_conn_actvation/deact_qeries_to_act.sql
eof

now=$(date +"%d-%m-%Y")
cp PROV_TO_PASS.nap PROV_TO_PASS.nap.$now
:>PROV_TO_PASS.nap

DB_STRING=`cat /home/pin/.pass/pin.db`
sqlplus -S ${DB_STRING} <<EOF
set echo off
set newpage 0
set space 0
set pagesize 0
set linesize 1000
set feed off
set heading on
set trimspool on
spool PROV_TO_PASS.nap append
SELECT account_obj_id0||','||service_obj_id0||','||poid_id0 from ACTUAL_DETAILS_PROV;
EXIT;
EOF

cd /home/pin/opt/portal/7.5/mso/bin/child_conn_actvation/
./exec_prov_action.pl >> /home/pin/opt/portal/7.5/mso/bin/child_conn_actvation/child_conn_actvation.log
