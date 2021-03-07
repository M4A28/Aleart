# Aleart
### install mutt 
sudo apt install mutt 
### make sure you allow low secure app in gmail account 
### Configer mutt 
make file call .muttrc 
add fallowing line and edit it 

##############################
set from="youremail@gmail.com" 

set realname="name "

set smtp_url="smtp://youremail@smtp.gmail.com:587/"

set smtp_pass="Password"
##############################

## optionl 
### edit crontab to run script evre 30 mint 
  '*/30 * * * * bash alaert.sh'
 
 or 
 run the fallowing command for evrey houre:
  sudo cp -a aleart.sh /etc/cron.hourly/ 
 
this will chek ram evry 3 hours 

Done
