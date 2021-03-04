# Aleart
### install mutt 
sudo apt install mutt 
### make sure you allow low secure app in gmail account 
### Configer mutt 
make file call .muttrc 
add fallowing line and edit it 


set from="youremail@gmail.com" 

set realname="name "

set smtp_url="smtp://youremail@smtp.gmail.com:587/"

set smtp_pass="Password"


## optionl 
### edit crontab
  '* */3 * * * bash alaert.sh'
this will chek ram evry 3 hours 

Done
