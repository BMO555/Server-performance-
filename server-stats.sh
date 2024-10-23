top -bn1 | grep"Cpu(s)" | awk '{print $2+$4}'
free -m | awk 'NR==2{printf"Used: %s MB\nFree: %s MB\n" , $3,$4}'
df -h --total | grep total | awk '{print "Used:"$3,"\nFree: "$4, "\nUSage: "$5}'
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6
