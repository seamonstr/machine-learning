while [[ 1 ]]; do
	while curl --silent "https://www.shipton-mill.com/trade/bulk-shop" | grep -q "Sorry, we don't have any delivery" ; do
	 	sleep 5
	done

	date
	until curl --silent "https://www.shipton-mill.com/trade/bulk-shop" | grep -q "Sorry, we don't have any delivery" ; do
	 	date
	 	sleep 2
	done
	echo '###################################################################################'
	tput bel
	sleep 0.5
	tput bel
	sleep 0.5
	tput bel
	sleep 0.5
done