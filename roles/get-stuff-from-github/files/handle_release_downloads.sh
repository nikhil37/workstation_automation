#!/bin/bash

for it in $(find /tmp/setup -type f)
do 
	i=$(echo $it | awk -F '/' '{print $NF}')
	file "$it" | grep -i "archive"
	if [ $? -eq 0 ]; then
		a=$(echo "/opt/bin/$(echo -n $i | awk -F '.' '{print $1}')")
		mkdir /opt/bin/$a
		unzip -d $a $it
	else
		if [ $? -eq 0 ]; then
			cp $it /opt/bin/$( echo -n $i | awk '{print tolower($0)}' )
			chmod 755 /opt/bin/$( echo -n $i | awk '{print tolower($0)}' )
		else
			cp $it /opt/bin/$( echo -n $i | awk -F '-' '{print tolower($1)}' )
			chmod 755 /opt/bin/$( echo -n $i | awk -F '-' '{print tolower($1)}' )
		fi
	fi
done
