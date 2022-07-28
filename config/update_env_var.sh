for file in `ls`
do
	sed -i 's/\${PIN_HOME}/\/home\/pin\/opt\/portal\/7.5/g' $file
done
