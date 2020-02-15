# CS1XA3
# CS 1XA3 Project01 - <mathak1>
## Usage
Execute this script from project root with:
chmod +x CS1XA3/Project01/project_analyze.sh
./CS1XA3/Project01/project_analyze arg1 arg2 ...
With possible arguments
arg1: Lets the user choose the directory they wish to work with (in this case Project01)
      represented by a dot (.)
arg2: lets the user choose the feature they want to work with
      1. to choose feature 01 - enter 1
      2. to choose feature 02 - enter 2
      3. to choose feature 03 - enter 3

## Reference for all: the CS 1XA3 lectures and lab information

## Feature 01 - FIXME log
Description: this feature finds every file in your repo that
	     has the word #FIXME in the last line and puts the file name
             in a file called fixme.log. (if it already exists
             it overwrites it) 

Execution: first you will have to enter '.' for the directory
	   then to choose this feature enter "1" (number 1)

Reference: some code was taken from [[https://kb.iu.edu/d/acrj]]

## Feature 02 - file type count

Description: this feature outputs the number of files in your repo with the extension
	     the user enters (i.e txt, pdf, py, etc)

Execution: first you will have to enter '.' for the directory
           then to choose this feature enter "2" (number 2)

Reference: some code was taken from [[https://askubuntu.com/questions/454564/count-total-number-of-files-in-particular-directory-with-specific-extension]]

## Feature 03 - Find Tag
Description: this feature using the read command asks the user to enter a Tag (single word).
	     Next, it creates a log file "CS1XA3/Project01/Tag.log" (where Tag is the 
             name of the Tag provided). If it exits it overwrites the file.
	     Finally, for each python file (ending .py) in the repo, find all lines
             that begin with a comment (i.e #) and include Tag and put them in
             CS1XA3/Project01/Tag.log

Execution: first you will have to enter '.' for the directory
           then to choose this feature enter "3" (number 2)

Reference: some code was taken from [[https://superuser.com/questions/614526/finding-files-which-contain-a-certain-string-using-find-1-and-grep-1]]

## Custom Feature SomeFeature

## Custom Feature01 - remove or move feature

Description: Using the read command, promt the user to enter remove or move
             If the user enters remove. It then promts the user to enter the file extension
             With this information this feature takes all the files with that extension and
	     removes them.
             if the user enters move. It will then promt the user to enter the file extension
 	     With this information this feature takes all the files with that extension moves
	     moves them to a private directory with the name of the extensions

## Custom Feature02 - changing file name

Description: Using the read command, promt the user to enter a key word
	     with this key word this looks at all the files with that key word and changes
             that word to a word chosen by the user and takes all these files and puts them
             into a private directory.
