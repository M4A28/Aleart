#!/bin/bash 
# Auther: Mohammed Mosa 
# Twitter: M4A28

# subject
subject="Server Memory Status Alert"

# recever 
to="examble@gmail.com"

#  get total free memory size in megabytes(MB) 
free=$(free -mt | grep Total | awk '{print $4}')

# check if free memory is less or equals to  512MB
if [[ "$free" -le 512 ]]; then
        
        # get top processes consuming system memory and save to temporary file 
        ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head >/tmp/TopProccessesConsumingMemory.txt
        
        file=/tmp/TopProccessesConsumingMemory.txt
        
        # send email if system memory is running low
        echo -e "Warning, Computer memory is running low!\n\nFree memory: $free MB" | mutt -a "$file" -s "$subject"  -b "$to"
fi
# Exit 
exit 0
