# Command line for the win

This repository contains screenshots as sumbmission to the completion of the CMD challenge.
All the images were uploaded to ALX's sandbox using sftp. The steps to adding the images to the repository included:

1. Took all screenshots of the challenge milestones for each 9 tasks in the challenge on my Windows PC.
2. Inside the windows CMD terminal, use the sftp command to connect to ALX's sandbox. ``` C:\Users\Abdelrahman> stfp Username@Hostname ``` then entered the password when prompted.
3. Navigate to the alx-system_engineering-devops directory on the sandbox using ```sftp> cd /root/alx-system_engineering-devops/```
4. Create a new directory named command_line_for_the_win using ```sftp> mkdir command_line_for_the_win/```
5. Naviate to the newly create directory ```sftp> cd command_line_for_the_win/```
6. Navigate to the directory of my screenshots on my local pc using ```stfp> lcd Directory```
7. Upload the screenshots using ```sftp> put name_of_screenshotfile```.
8. Exit the sftp session using ```sftp> bye```