#!/bin/bash/

Ladder(){
	case $1 in
	3)
		ladder=58
		echo $ladder
	;;
	6)
		ladder=21
		echo $ladder
	;;
	20)
		ladder=50
		echo $ladder
	;;
	28)
		ladder=49
		echo $ladder
	;;
	36)
		ladder=19
		echo $ladder
	;;
	54)
		ladder=15
		echo $ladder
	;;
	63)
		ladder=32
		echo $ladder
	;;
	70)
		ladder=20
		echo $ladder
	;;
	87)
		ladder=6
		echo $ladder
	;;
	*)
		ladder=0
		echo $ladder
	;;
	esac
}

Snake(){
	case $1 in
	26)
		snake=20
		echo $snake
	;;
	35)
		snake=30
		echo $snake
	;;
	37)
		snake=33
		echo $snake
	;;
	66)
		snake=42
		echo $snake
	;;
	50)
		snake=16
		echo $snake
	;;
	59)
		snake=13
		echo $snake
	;;
	76)
		snake=13
		echo $snake
	;;
	89)
		snake=22
		echo $snake
	;;
	98)
		snake=90
		echo $snake
	;;
	*)
		snake=0
		echo $snake
	;;
	esac
}
playerOne=0
count=0
playGame(){
	while(( playerOne<100 ))
	do
		play=$(( $(( $RANDOM%6 ))+1 ))
		count=$(( $count+1 ))
		echo "$count time roll the die to get the $play"
		playerOne=$(( $playerOne+$play ))
		#ladder
			ladder1=$( Ladder $playerOne )
			if(( $ladder1 >= 1 ))
			then
				echo "player score is $playerOne"
				playerOne=$(( $playerOne+$ladder1 ))
				echo "++> with help of ladder hike $ladder1 "
			fi
		#Snake
			snake1=$( Snake $playerOne )
			if(( $snake1 >= 1 ))
			then
				echo "player score is $playerOne"
				playerOne=$(( $playerOne-$snake1 ))
				echo "--> with help of snake minus $snake1 the total score "
			fi
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
