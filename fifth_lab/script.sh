mv /vagrant/super-service.service /lib/systemd/system/
systemctl daemon-reload
systemctl start super-service
systemctl enable super-service

LOG=/var/log/logged-in.log
touch $LOG
crontab -l > thecron
echo "* * * * 1-5 users >> $LOG" >> thecron
crontab thecron
rm thecron