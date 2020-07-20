#begin of script
#!/usr/bin/expect
#Author:mohamed raafat
#Date: 5/2/2020

spawn ssh -l mohamed@192.168.1.1
expect{
     "ASA-FW>"
      {send "enable\r"}
}
expect{
     "password"
     {send"cisco123\r"}
}
expect{
     "ASA-FW#"
     {send "show conn all\r"}
}
interact

#end
