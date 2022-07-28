#! /bin/bash
	
for i in `ls *.podl`; do
   echo $i >> check.log
   pin_deploy replace  "$i" >> check.log;
done
