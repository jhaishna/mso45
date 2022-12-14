#! /bin/bash
## Modfified on 18-MAY-2015 to remove PID check, now lock file mechanism is used
cd /home/pin/opt/portal/7.5/mso/bin/
echo q | testnap;
Rstatus=$?
if [ $Rstatus -eq 0 ] ; then
   echo "`date`:Testnap Connection Success for bulk_check_bounce in /home/pin/opt/portal/7.5/mso/bin/"
else
   echo "`date`:Testnap Connection Failed so job skipped for bulk_check_bounce in /home/pin/opt/portal/7.5/mso/bin/" >> /data/opt/portal/7.5/var/cron_global/global_cron_tab.log
   exit;
fi

prog_name='BOUNCE'
logfile='/home/pin/opt/portal/7.5/mso/apps/mso_bulk_audit/cheque_bounce.log'

sh /home/pin/opt/portal/7.5/mso/apps/mso_bulk_audit/prerun.sh $prog_name > $logfile


bulk_check_bounce()
{
         echo "runnng" > mta_job_bulk_check_bounce.txt
	 mso_mta_job_processor -verbose -object_type /mso_mta_job/bulk_check_bounce

#         pid=$(cat mta_job_bulk_check_bounce.txt)
#         wait $pid
         rm mta_job_bulk_check_bounce.txt;
}

cd $PIN_HOME/mso/apps/mso_bulk_AR
echo "current working directory is `pwd`"

echo q | testnap;
Rstatus=$?
if [ $Rstatus -eq 0 ] ; then
   echo "`date`:Testnap Connection Success for bulk_check_bounce in PIN_HOME/mso/apps/mso_bulk_AR"
else
   echo "`date`:Testnap Connection Failed so job skipped for bulk_check_bounce in PIN_HOME/mso/apps/mso_bulk_AR" >> /data/opt/portal/7.5/var/cron_global/global_cron_tab.log
   exit;
fi


if [ -e mta_job_bulk_check_bounce.txt ]
then
#       echo "file is available";
#       pid1=$(cat mta_job_bulk_check_bounce.txt)
#
#       if ps -p $pid1 > /dev/null
#       then
#               echo " process is already running "
#       else
#               echo " process is not running "
#		bulk_check_bounce
#       fi
       echo "process is already running "
else
       echo "Executing the process bulk_check_bounce"
	bulk_check_bounce
fi

#checking the log to get the status of the report
fname="bulk_check_bounce.log"
fail="1"

exec < /home/pin/opt/portal/7.5/mso/apps/mso_bulk_AR/$fname


while read line
do

        if [[ $line == *"data errors"* ]]
        then
                orig_value=`echo $line | cut -d '=' -f2`
                orig_value=${orig_value// }
                if [ "$orig_value" == "0." ]
                then
                        result=0
                fi

        fi
        if [[ $line == *"number of errors"* ]]
        then
                orig_value=`echo $line | cut -d '=' -f2`
                orig_value=${orig_value// }
                if [ "$orig_value" == "1." ]
                then
                        result=1
                fi

        fi

        if [[ $line == *"number of errors"* ]]
        then
                if [[ $result -eq $fail ]];
                then
                        echo "`date`:bulk_check_bounce Job Failed" >> /data/opt/portal/7.5/var/cron_global/global_cron_tab.log
                else
                        echo "`date`:bulk_check_bounce Job Success" >> /data/opt/portal/7.5/var/cron_global/global_cron_tab.log
                fi
        fi


done

DB_STRING=`cat /home/pin/.pass/pin.db`
sqlplus -s ${DB_STRING} << EOF >> $logfile
@/home/pin/opt/portal/7.5/mso/apps/mso_bulk_audit/postrun.sql '$prog_name'
exit;
EOF
