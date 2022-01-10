
 Print() {
   echo -e "\e[1m$1\e[0m"
   echo -e "\n\e[31m=================$1=================\e[0m" >> $LOG
}

 LOG=/tmp/roboshop.log
 rm -f $LOG

 Print "Installing Nginx"
 yum install nginx -y &>>$LOG

 Print "Enabling Nginx"
 systemctl enable nginx

 Print "Starting Nginx"
 systemctl start nginx

 curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"

 # shellcheck disable=SC2164
 cd /usr/share/nginx/html
 # shellcheck disable=SC2035
 rm -rf *
 unzip /tmp/frontend.zip
 mv frontend-main/* .
 mv static/* .
 rm -rf frontend-master static README.md
 mv localhost.conf /etc/nginx/default.d/roboshop.conf
 systemctl restart nginx