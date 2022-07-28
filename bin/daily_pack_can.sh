##!/bin/bash
DB_STRING=`cat /home/pin/.pass/pin.db`

dt=`date "+%Y%b%d"`
echo $dt

/home/oracle/11g/database/client/11.2.0.4/bin/sqlplus -s ${DB_STRING} << EOF > /home/pin/opt/portal/7.5/mso/bin/dly_cancel_$dt.log

@/home/pin/opt/portal/7.5/mso/bin/daily_pack_cancel_dvbip.sql;

exit;
EOF

