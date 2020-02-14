#!/bin/bash/
echo "Start the game Sanke and Ladder. The player starts from 0 rolls the die to get a number between 1 to 6, finds a safe place, ladder or asnake keeps doing till the winning spot 100 is achieved."
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
