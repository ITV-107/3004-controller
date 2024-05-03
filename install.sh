if [[ $EUID -ne 0 ]]
then
	echo "Script requires root privileges to run"
	exit
fi

apt-get install -y python3-ryu
ryu-manager --version

chmod +x ./run.sh
