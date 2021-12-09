mv /vagrant/folder-sync.service /lib/systemd/system/
systemctl daemon-reload
systemctl start folder-sync
systemctl enable folder-sync

LOG=/var/log/logged-in.log
touch $LOG
crontab -l > thecron
echo "* * * * 1-5 users >> $LOG" >> thecron
crontab thecron
rm thecron