 Print() {
   echo -n -e "\e[1m$1\e[0m .... "
   echo -e "\n\e[31m=================$1=================\e[0m" >> $LOG
}

Stat() {
   if [ $1 -eq 0 ] ; then
     echo "\e[33mSUCCESS\e[0m"
   else
     echo -e  "\e[32mFAILURE\e[0m"
     fi
    }

 LOG=/tmp/roboshop.log
 rm -f $LOG