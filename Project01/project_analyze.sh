#!/bin/bash
echo "write the directory press the '.' for current directory"
read WDIR
cd "$WDIR"

echo "write the argument number you want to test"
echo "enter 1 for fixme feature"
echo "enter 2 for fileTypeCount feature"
echo "enter 3 for findTag feature"
echo "enter 4 for FileSizeList feature"
echo "enter 5 for BackupDelete feature"
echo "enter 6 for CheckoutLastestMerge feature"
echo "enter 7 for CustomFeature1"
echo "enter 8 for CustomFeature2"
read feature

FIXME(){
        if [ -f "fixme.log" ] ; then
                rm fixme.log
        fi
        touch fixme.log
        for name in ./**
        do
		if [ -f $name ] ; then
	                lastLine=$(tail -1 $name)
        	        if [ -f $name ] ; then
                	        if [[ $lastLine == *"#FIXME"* ]] ; then
                        	        echo "$item" >> fixme.log
                       		fi
               		fi
		fi
        done
}

FILETYPECOUNT(){
	echo "Enter file type"
	read fileType
	n=0
	for item in ./**
	do
		if [[ $item == *.$fileType ]] ; then
			((n=n+1))
		fi
	done
	echo "The number of .$fileType files:  $n"
}

findTag(){
	echo "Enter the Tag (any single word)"
	read Tag

	files=$(find ../ -type f -name "*.py")
	if [ ! -f "$Tag.log" ] ; then
		touch "$Tag.log"
	else
		touch "$tag.log" > "$Tag.log"
	fi

	echo "$( grep -E '^#' $files | grep -w $Tag)" >> $Tag.log
}

CustomFeature2(){
	echo "Enter key word"
	read word
	echo "Enter the replacement word"
	read replace
	if [ -d "private" ] ; then
                rm -r private
	fi
	mkdir private
	for filename in ./**
	do
		ext="${filename##*.}"
		if [[ $filename == "./$word.$ext" ]] ; then
			mv $filename ./private/$replace.$ext
			echo "hello"
		fi
	done
}

FileSizeList(){
	mkdir size
	for item in ./**
	do
		if [ -f $item ] ; then
			cp $item size
		fi
		if [ -d $item ] ; then
			cd $item
			for file in ./**
			do
				cp $file ../size
				clear
			done
			cd ..
		fi
	done
	cd size
        echo ""
        echo "File Name : File Size"
	ls -S -lh  | awk '{print $9, $5}'
	cd ..
	rm -r size
}

BackupDelete(){
	echo "Enter Backup or Restore"
	read input
	if [ $input == "Backup" ] ; then
		if [ -d backup ] ; then
			rm -r backup
		fi
		mkdir backup
		cd backup
		touch restore.log
		cd ..
		for file in ./**
		do
			if [[ $file == *.tmp ]] ; then
				cp $file ./backup
				location=$(readlink -f $file)
				echo "$location" >> ./backup/restore.log
				rm $file
			fi
		done
	fi
	if [ $input == "Restore" ] ; then

		if [ -d backup ] ; then
			cd backup
		fi
		if [ -f restore.log ] ; then
			for file in ./**
			do
				if [[ $file == *.tmp ]] ; then
					location=$(head -n 1 restore.log)
					cp $file $location
					sed -i '1d' restore.log
				fi
			done
			cd ..
		else
			echo "Restore.log does not exist"
		fi
	fi
}

CheckoutLastestMerge(){

	if [ -f mergeCommits.txt ] ; then
        	rm mergeCommits.txt
        fi
	touch mergeCommits.txt
	git log --all --oneline | grep -i "merge"  >> mergeCommits.txt 
	message=$(sed -nr '1s/^([^ ]+).*/\1/p' mergeCommits.txt)
	git checkout $message
	rm mergeCommits.txt
}

CustomFeature1(){
	echo "remove or move"
	read input
	if [ $input == "remove" ] ; then
		echo "enter file extension"
		read ext
		for filename in ./**
                do
			fileExt="${filename##*.}"
			if [ $fileExt == $ext ] ; then
				rm $filename
			fi
		done
	fi
	if [ $input == "move" ] ; then
		if [ -d extensions ] ; then
                	rm -r extensions
        	fi
        	mkdir extensions
		echo "enter file extension"
		read ext
		for filename in ./**
		do
			if [[ $filename  == *.$ext ]] ; then
				cp $filename ./extensions/$filename
				rm $filename
			fi
		done
	fi
}

if [ "$feature" -eq 1 ] ; then
	FIXME
fi
if [ "$feature" -eq 2 ] ; then
	FILETYPECOUNT
fi
if [ "$feature" -eq 3 ] ; then
        findTag
fi
if [ "$feature" -eq 4 ] ; then
	FileSizeList
fi
if [ "$feature" -eq 5 ] ; then
	BackupDelete
fi
if [ "$feature" -eq 7 ] ; then
	CustomFeature1
fi
if [ "$feature" -eq 6 ] ; then
	CheckoutLastestMerge
fi
if [ "$feature" -eq 8 ] ; then
	CustomFeature2
fi
echo "finished"



