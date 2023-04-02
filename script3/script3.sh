#!/bin/bash

# Ask the user to enter new user name want to be created
read -p "Enter the name of new user: " username
sudo useradd -m $username -p strongpassword

# Ask for the department name
read -p "Choose the department name (Technical/Manager): " department

# Add the user to appropriate group
if [ "$department" == "Technical" ]
then    
        sudo usermod -aG Technical $username
else    
        sudo usermod -aG Manager $username  
fi      

#grant sudo access to new user
sudo usermod -aG sudo $username

#Print a summary message
echo "User $username was created and added to the $department group with sudo access"