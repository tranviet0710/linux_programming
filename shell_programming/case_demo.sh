#!/bin/sh
echo "Use one of the following options:"
echo "d or D: To display today's date and present time"
echo "l or L: To see the listing of files in your present working directory"
echo "w or W: To see who's logged in"
echo "q or Q: To quit this program"
while [ true ]
        do
                echo "Enter your option and hit <Enter>: \c"
                read option
                
                case "$option" in
                        d|D) date ;;
                        l|L)    ls ;;
                        w|W) who ;;
                        q|Q) echo "Goodbye"
                                 exit 0 ;;
                        *)   echo "Invalid option; try running the program again."
                                exit 1;;     
                esac
done
                
