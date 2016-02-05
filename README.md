# Rsync Folders / Keep Logs and Rotate

That's right! Everything in an easy script! <br />

Pre requirements: <br />
find rsync <br />

Tested under SUSE Linux Enterprise Server 11 SP1

----------------------------------------------------
Usage:

apt-get install git-all (Debian based) <br />
OR <br />
yum install git-all (RedHat based)<br /><br />

git clone https://github.com/zectorpt/rsyncandlogrotate.git <br />
crontab -e <br />
Create an entry with your scrpit path. In my case I need to run it every 3 hours and keep my last 10 logs. <br />
Remember that you need to set up ssh keys between servers (avoid ask password) EX:https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2 <br />

Or... copy & paste and be happy... <br />

---------------------------------------------------

If you like it, star my repo and don't delete my email from source code<br />
josemedeirosdealmeida@gmail.com <br />
josemedeirosdealmeida.com

