#!/bin/bash

source raptorneversay.config

MEMO=''
clear



TASK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/TASK"



funtion showTask(){
END=$(ls $TASK_DIR |wc -l);
START=1;
while (($START <= $END))
do
	FOLDER=$(ls $TASK_DIR)
	BUFFER=("${(f)$(echo $FOLDER)}")
	echo "[ $START ] $(ls $TASK_DIR |awk '{if(NR=='$START') print $0}')"; 
	((START++))
done
}

function addTask(){
	memoTask
	echo "[ ! ] Give the task number"
	read TASK
	VAR=$(ls $TASK_DIR |awk '{if(NR=='$TASK') print $0}')
	MEMO=("$VAR" "${MEMO[@]}")

}

function rmTask(){
	memoTask
	echo "[ ? ] give me rm name task_1.sh"
	read rm
	MEMO[(r)$rm]=()
}


function execTask(){
echo "[+] Task execution started"

LIST_TASK=$(memoTask)
#echo $LIST_TASK|sed 's/ /\n/g' 

END_TASK=$(echo $LIST_TASK|sed 's/ /\n/g' |wc -l);
START_TASK=1;
while (($START_TASK <= $END_TASK))
do
	echo "[ $START_TASK ] $(echo $LIST_TASK |sed 's/ /\n/g' |awk '{if(NR=='$START_TASK') print $0}')"; 
	zsh TASK/$(echo $LIST_TASK |sed 's/ /\n/g' |awk '{if(NR=='$START_TASK') print $0}');
	((START_TASK++))
done

	

}


function choice(){

	echo "[ ! ] Do you whant add task or remove"
	echo "[ ! ] 1) Add 2) Remove 3) Execute"
	read AddRm
	if (($AddRm == 1))
	then
		clear
		showTask
		addTask
	elif (($AddRm == 2))
	then
		clear
		showTask
		rmTask
	else (($AddRm == 3))
		execTask
		read
	fi
}

function memoTask(){
	echo $MEMO  |sed 's/ /\n/g' |tac
}

function main(){
	while [ 1 ]
	do
		clear
		printf "${BLUE}--[ ${FRAMEWORK_NAME} Version ${FRAMEWORK_VERSION}\n\n"
		showTask
		memoTask
		choice
	done
}

main



