#!/bin/bash
curl -s http://81.218.166.163:3803/EnvErmPublish15/secure_members/TabularDetailsView.aspx?Device=a30 > /tmp/ptmeteostation.txt
temp=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_cell0_19_ctl00_ctl01_VIC | sed 's/.*">//' | sed 's/<.*$//')
wd=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_tccell0_19 | sed "s/.*'>//g" | sed 's/<.*$//')
rh=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_cell0_18_ctl00_ctl01_VIC | sed 's/.*">//g' | sed 's/<.*$//')
rain=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_cell0_17_ctl00_ctl01_VIC | sed 's/.*">//g' | sed 's/<.*$//')
ws=$(cat /tmp/ptmeteostation.txt | grep ctl00_ContentPlaceHolder1_gdvTabularMonitorsHistory_tccell0_61 | cut -f6 -d'>' | sed 's/<.*$//')
