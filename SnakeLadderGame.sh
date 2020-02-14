#!/bin/bash/
playerOne=0
count=0
playGame(){
	while(( playerOne<100 ))
	do
		play=$(( $(( $RANDOM%6 ))+1 ))
		playerOne=$(( $playerOne+$play ))
		count=$(( $count+1 ))
		echo "$count time roll the die to get the $play"
		if(( $playerOne>100 ))
		then
			playerOne=$(( $playerOne-$play ))
			echo "Player score is $playerOne "
		else
			echo "player score is $playerOne "
		fi
	done
}
playGame
echo "==> $count time  player is play the game "

