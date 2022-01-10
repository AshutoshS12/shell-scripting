
 source Components/common.sh
 Print "Installing Nginx"
 yum install nginx -y &>>$LOG
 Stat $?

 Print "Downloading Frontend Html File"
 curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"  &>>$LOG
 Stat $?

 Print "Remove Old Html File"
 rm -rf  /usr/share/nginx/html/*  &>>$LOG
 Stat $?

 Print "Unzipping Archive file "
 unzip -o -d /tmp  /tmp/frontend.zip  &>>$LOG
 Stat $?

 Print "Unzipping Archive file "
 mv /tmp/frontend-main/static/* usr/share/nginx/html/. &>>$LOG
 Stat $?

 Print "Copy Nginx Roboshop Config file"
 cp /tmp/frontend-main/localhost.conf /etc/nginx/default.d/roboshop.conf &>>$LOG
 Stat $?

 Print "Enabling Nginx"
 systemctl enable nginx &>>$LOG
 Stat $?

 Print "Starting Nginx"
 systemctl restart nginx &>>$LOG
 Stat $?
