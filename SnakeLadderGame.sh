#!/bin/bash/
declare -A GameBoard[10,10]
initializeGameBoard(){
	number=100
	for(( i=1;i<=10;i++ ))
	do
		if (( i%2 != 0 ))
		then
			for(( j=1;j<=10;j++ ))
			do
				GameBoard[$i,$j]=$number
				number=$(( $number-1 ))
			done
		else
			for(( j=10;j>0;j-- ))
			do
				GameBoard[$i,$j]=$number
				number=$(( $number-1 ))
			done
		fi
done
}
initializeGameBoard

PrintGameBoard(){
	echo "=============================================================="
	for(( i=1;i<=10;i++ ))
	do
		for(( j=1;j<=10;j++ ))
		do
			value=$(printf "%03d" ${GameBoard[$i,$j]})
			printf "| $value "
		done
		echo " |"
		echo "=============================================================="
	done
}
PrintGameBoard
echo "Player Position is zero"
