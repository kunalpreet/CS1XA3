# CS1XA3
# CS 1XA3 Project01 - <mathak1>
## Usage
Execute this script from project root with:
chmod +x CS1XA3/Project01/project_analyze.sh
./CS1XA3/Project01/project_analyze arg1 arg2 ...
With possible arguments

arg1: Lets the user choose the directory they wish to work with (in this case P$
      represented by a dot (.)

arg2: lets the user choose the feature they want to work with

      * to choose feature 01 - FixeMe: enter 1
      * to choose feature 02 - FileTypeCount : enter 2
      * to choose feature 03 - FindTag: enter 3
      * to choose feature 04 - FileSizeList : enter 4
      * to choose feature 05 - BackupDelete : enter 5
      * to choose feature 06 - CheckoutLastestMerge : enter 6
      * to choose feature 07 - CustomFeature1 : enter 7
      * to choose feature 08 - CustomFeature2: enter 8

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

Description: this feature outputs the number of files in your repo with the ext$
             the user enters (i.e txt, pdf, py, etc)

Execution: first you will have to enter '.' for the directory
           then to choose this feature enter "2" (number 2)

Reference: some code was taken from [[https://askubuntu.com/questions/454564/count-total-number-of-files-in-particular-directory-with-specific-extension]]

## Feature 03 - Find Tag

Description: this feature using the read command asks the user to enter a Tag (single word). Next, it creates a log file "CS1XA3/Project01/Tag.log" (where Tag is the name of the Tag provided). If it exits it overwrites the file. Finally, for each python file (ending .py) in the repo, find all lines that begin with a comment (i.e #) and include Tag and put them in CS1XA3/Project01/Tag.log

Execution: first you will have to enter '.' for the directory then to choose this feature enter "3" (number 3)

Reference: some code was taken from [[https://superuser.com/questions/614526/finding-files-which-contain-a-certain-string-using-find-1-and-grep-1]]

## Feature 04 - File Size List

Description: This code lists all the files in your repository and their sizes

Execution: first you will have to enter '.' for the directory then to choose this feature enter "4" (number 4)

Reference: some code was taken from [[https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_06_02.html]]

## Feature 05 - Backup and Delete / Restore

Description: 

- if the user enters Backup:

      * Create an empty directory CS1XA3/Project01/backup if it doesn’t 
        exit
      * Empty the directory CS1XA3/Project01/backup if it does exist
      * Find all files that end in the .tmp extension
             - copy them to the CS1XA3/Project01/backup directory
             - delete them from their original location
             - create a file CS1XA3/Project01/backup/restore.log that 
               contains a list of paths of the files original locations

- if the user enters Restore:

      * use the file CS1XA3/Project01/backup/restore.log to restore the 
        files to their original location
      * if the file does not exist, display an error message

Execution: first you will have to enter '.' for the directory then to choose this feature enter "5" (number 5)

Reference: some code was taken from [[https://stackoverflow.com/questions/2439579/how-to-get-the-first-line-of-a-file-in-a-bash-script]]

Feature 06 - Checkout Lastest Merge

Description: 

        * Find the most recent commit with the word merge (case 
          insensitive) in the commit message
        * Automatically checkout that commit (so that you’re in a 
          detached head state)

Execution: first you will have to enter '.' for the directory then to choose this feature enter "6" (number 6)

Reference: some code was taken from [[https://www.git-tower.com/learn/git/faq/detached-head-when-checkout-commit]]

## Custom Feature 01 - Remove or Move Feature

Description: Using the read command, prompt the user to enter remove or move
             If the user enters remove. It then prompts the user to enter the file extension
             With this information this feature takes all the files with that extension and
             removes them.
             if the user enters move. It will then prompt the user to enter the file extension
             With this information this feature takes all the files with that extension moves
             moves them to a private directory with the name of the extensions

Execution (user inputs):

        * first you will have to enter '.' for the directory then to 
          choose this feature enter "7" (number 7)
        * enter remove or move
        * enter the file extension


## Custom Feature 02 - Changing File Name and Keeping Tag

Description: Using the read command, prompt the user to enter a key word
             with this keyword this looks at all the files with that key word and changes
         that word to a word chosen by the user and takes all these files and puts them
             into a private directory.

Execution:
      
        * first you will have to enter '.' for the directory then to 
          choose this feature enter "8" (number 8)
        * Enter key word
        * Enter the replacement word

Reference: some code was taken from [[https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash]]
