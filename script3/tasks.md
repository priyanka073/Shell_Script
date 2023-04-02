Project Description: In this project, you will write a shell script that automates the process of creating a new user, creating a new folder, granting access, creating a new group, adding the user to the group and folder, granting the user sudo access, and setting appropriate file permissions. Requirements:

A basic understanding of the Linux command-line interface and Shell-Script (CLI) is required to complete this project

You will need access to a Linux operating system, such as Ubuntu or Debian.

 Create two folders named: Technical and Manager

 Create a ‘Technical’ group having access to the Technical folder and a ‘Manager’ group having access to the Manager folder.

 Set appropriate permissions to the folders.

 Ask the user for the name of the new user to be created.

 Ask the department name ‘Technical’ or ‘Manager’. If technical add it to the technical group else add a user to the management group.

 Grant sudo access to the new user.

 At the end of the script, print a message that summarizes what was created and what access was granted.

Create the Technical and Manager folders
mkdir Technical
mkdir Manager

Set appropriate permissions to the folders
chmod 770 Technical
chmod 770 Manager

Create the Technical group and give it access to the Technical folder
groupadd Technical
chgrp Technical Technical
chmod g+s Technical

Create the Manager group and give it access to the Manager folder
groupadd Manager
chgrp Manager
Manager chmod g+s Manager

Now that we have groups and folders created, let's create a shell script based on user inputs. Add that user according to their department.



And, if you view the etc/group folder it will show the newly added users



