# SYNAPSE
source rns.config

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
	echo "[ ! ] 1) Add 2) Remove 3) Execute 4) DNA inject (5 Exit"
	read AddRm
	if (($AddRm == 1))
	then
		clear
		printf "${BLUE}--[ ${FRAMEWORK_NAME} Version ${FRAMEWORK_VERSION}\n\n"
		printf "${BLUE}[ + ] Your tasks list\n\n"
		showTask
		printf "\n"
		printf "${BLUE}[ + ] Task already add\n\n"
		addTask
	elif (($AddRm == 2))
	then
		clear
		showTask
		rmTask
	elif (($AddRm == 3))
	then execTask
		read
	elif (($AddRm == 4))
	then 
	DNA_INJECT
	main
	else (($AddRm == 5))
		clear
		exit 0
	fi
}

    DNA_RESTORE
	main


function memoTask(){
	echo $MEMO  |sed 's/ /\n/g' |tac
}

function main(){
	while [ 1 ]
	do
		clear
		printf "${BLUE}--[ ${FRAMEWORK_NAME} Version ${FRAMEWORK_VERSION}\n\n"
		showTask
		printf "\n"
		printf "${BLUE}[ + ] Task already add\n\n"
		memoTask
		printf "\n"
		choice
	done
}

#main

LOADER(){
	FRAMEWORK
	printf "${BLUE}[ ? ] Do you whan use CRISPR ?\n"
	read answer
	if [ "$answer" != "${answer#[Yy]}" ] ;then 
 #   echo Yes
	DNA_INJECT
	main
	else
    DNA_RESTORE
	main
	fi
}

DNA_INJECT(){
	FRAMEWORK
	printf "${BLUE}[ + ] DNA List\n\n"
	START_DNA=1
	END_DNA=$(ls DNA_DB |sed 's/ /\\n/g' |wc -l|awk '{print $1}')

	# ls DNA_DB |sed 's/ /\\n/g'

while (($START_DNA <= $END_DNA))
do
echo  "[ $START_DNA ] $(ls DNA_DB |sed 's/ /\\n/g' | awk 'NR=='$START_DNA'')" 
((START_DNA++));
done

printf "\n"
printf "${BLUE}[ ! ] Select you DNA please\n\n"
read protein
printf "${BLUE}[ ! ] DNA injection loading\n"
cp DNA_DB/$(ls DNA_DB |sed 's/ /\\n/g' | awk 'NR=='$protein'')/* TASK/
printf "${BLUE}[ + ] DNA succeful injection\n\n"


}

DNA_RESTORE(){
	FRAMEWORK
	printf "${BLUE}[ ? ] Do you whant restore your DNA?\n"
	read answer
	if [ "$answer" != "${answer#[Yy]}" ] ;then 
	/bin/rm -f TASK/* 	
	printf "${BLUE}[ + ] Your DNA is restored\n"
	else
	main
	fi
}


LOADER