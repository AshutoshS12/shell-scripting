
  source Components/common.sh

  print "Download Repo"
  curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo
  Stat $?