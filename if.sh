#!/bib/bash

# shellcheck disable=SC2162
read -p 'Enter username: ' username

## String Comparison
if [ "$username" == "root" ] ; then
  echo "Hi , You are a root user"
else
  echo -e  "\e[33mHi, You are a non-root user\e[0m"
  fi

##Number Comparison

if [ "$UID" -eq 0 ] ; then
  echo "Hi , You are a root user"
else
  echo -e  "\e[33mHi, You are a non-root user\e[0m"
  fi