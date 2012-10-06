#!/bin/bash
#
# Encrypted Home DIR SSH Key fix.
# Requires modification to sshd_config
#  AuthorizedKeys /etc/ssh/authorized_keys/%u/authorized_keys
# sudo mkdir /etc/ssh/authorized_keys -m 777
# for existing users run from home directory when login.
# for new users modify /etc/skel to include .bashrc to call script.
#
# Author: Benjamin Davis <bdavis@enetworkservices.net>

# Check if directory exists.
if [ ! -d "/etc/ssh/authorized_keys/$LOGNAME" ]
then
    # Make directory with restricted permissions.
    echo "Creating user ssh directory."
    mkdir /etc/ssh/authorized_keys/$LOGNAME -m 700
fi

# Check real users home .ssh folder
if [ -d "/home/$LOGNAME/.ssh" ]
then
    # Check if dir is symlink
    if [ ! -h /home/$LOGNAME/.ssh ]
    then
        echo "Moving configs."
        mv /home/$LOGNAME/.ssh/. /etc/ssh/authorized_keys/$LOGNAME/.
        rm -rf /home/$LOGNAME/.ssh/
        ln -s -T /etc/ssh/authorized_keys/$LOGNAME /home/$LOGNAME/.ssh
        clear
    fi
else
    # Does not exist so link it.
    if [[ $EUID -ne 0 ]]
    then
        echo "User ssh config folder does not exist. Creating."
        mkdir /home/$LOGNAME/.ssh -m 700
        ln -s -T /etc/ssh/authorized_keys/$LOGNAME /home/$LOGNAME/.ssh
    fi
fi