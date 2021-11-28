##################################################
#     ______ _____  __  ____   __   _____   __   #
#    / __/ // / _ |/ / / / /  / /  /  _/ | / /   #
#   _\ \/ _  / __ / /_/ / /__/ /___/ / | |/ /    #
#  /___/_//_/_/ |_\____/____/____/___/ |___/     #
#                                                #
##################################################
#!/bin/bash
# command from HTML page to text file
curl -s http://81.218.166.163:3803/EnvErmPublish15/secure_members/TabularDetailsView.aspx?Device=a30 > /tmp/ptmeteostation.txt
# Temperature
temp=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_cell0_19_ctl00_ctl01_VIC | sed 's/.*">//' | sed 's/<.*$//')
# Wind direction
wd=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_tccell0_19 | sed "s/.*'>//g" | sed 's/<.*$//')
# Relative Humidity
rh=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_cell0_18_ctl00_ctl01_VIC | sed 's/.*">//g' | sed 's/<.*$//')
# Rain (Daily)
rain=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_cell0_17_ctl00_ctl01_VIC | sed 's/.*">//g' | sed 's/<.*$//')
# Wind speed
ws=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_tccell0_61 | cut -f6 -d'>' | sed 's/<.*$//')
