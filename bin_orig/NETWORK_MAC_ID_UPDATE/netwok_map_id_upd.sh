
#conn_str=pin/pin123@$ORACLE_SID

echo "Start of network_mac replace Report time:"`date`


DB_STRING=`cat /home/pin/.pass/pin.db`
sqlplus -S ${DB_STRING} <<EOF
EOF

OUT_FILE=sql_output.log
sqlplus -s /nolog << eof >$OUT_FILE
connect ${DB_STRING}
WHENEVER SQLERROR EXIT SQL.SQLCODE
@/home/pin/opt/portal/7.5/mso/bin/NETWORK_MAC_ID_UPDATE/netwok_map_id_upd.sql
eof

sql_return_code=$?

if [ "$sql_return_code" -eq "0" ]; then
	echo "`date`:Network_MAC replace success" >> /data/opt/portal/7.5/var/cron_global/global_cron_tab.log
else
    	echo "`date`: Network_MAC replace failed" >> /data/opt/portal/7.5/var/cron_global/global_cron_tab.log
fi

echo "End of network_mac replace Report time:"`date`
