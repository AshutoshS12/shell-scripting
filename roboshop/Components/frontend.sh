
 source Components/common.sh
 Print "Installing Nginx"
 yum install nginx -y &>>$LOG
 Stat $?

 Print "Enabling Nginx"
 systemctl enable nginx
 Stat $?

 Print "Starting Nginx"
 systemctl start nginx
 Stat $?

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
 }