RYU_EXISTS=$(which ryu-manager)

if [[ -z $RYU_EXISTS ]]
then
	# Run ryu install script instead.
	echo "ryu does not exist, installing..."
	SCRIPT_DIR=$(dirname $(realpath $0))
	sudo $SCRIPT_DIR/install.sh
fi

ryu-manager ryu.app.simple_switch_13 ryu.app.ofctl_rest
