install_now{}
{
  if [ $(uname) = "linux" ]
  then
    display_start_end
    display_message "we found OS NAME as Linux" 3
    display_message "Installing httpd with yum command"
    yum install httpd -y 1>/dev/null 2>/dev/null
    if [ $? -eq 0 ]
    then
     display_message "successfully Installed httpd" 1
     display_symbol "#"
    else
     display_message "unable to install httpd" 2
     display_start_end
     exit 2
     display_symbol "#"
   fi
 fi
}

