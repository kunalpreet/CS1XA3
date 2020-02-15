#!/bin/bash
echo "write the directory"
read WDIR
cd "$WDIR"

echo "write the argument number you want to test"
read feature

FIXME(){
        if [ -f "fixme.log" ] ; then
                rm fixme.log
        fi
        touch fixme.log
        for item in ./**
        do
                lastLine=$(tail -1 $item)
                if [ -f $item ] ; then
                        if [[ $lastLine == *"#FIXME"* ]] ; then
                                echo "$item" >> fixme.log
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

if [ "$feature" -eq 1 ] ; then
	FIXME
fi
if [ "$feature" -eq 2 ] ; then
	FILETYPECOUNT
fi
if [ "$feature" -eq 3 ] ; then
        findTag
fi
echo "finished"



