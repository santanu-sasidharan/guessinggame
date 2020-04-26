#Guessing the number of files in the directory
#main condition
function guess {
echo "Guess the number of files in the directory?"
	while read resp;
	do
	if [[ $resp -eq 2 ]]
		then
		echo 
		echo "Congratulations. You have won by guessing it right"
		playagain
		break
	elif [[ $resp  -gt 2 ]]
		then
		echo " Your guess value is higher."
		echo " Please guess again"
	else
		echo "Your guess value is lower."
		echo " Please guess again"
	fi
done
}

function playagain {
	echo "Do you want to play again? y/n"
	read resp2
if [[ $resp2 == y ]]
	then
	 guess
elif [[ $resp2 == n ]]
	then
	echo "Thank you for playing." 
fi
}
guess
