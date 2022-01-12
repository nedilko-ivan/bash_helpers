# Enable SSH agent (Useful when you use multiple git account)
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/some_key_file

#How to sim link example (Useful when you need reference to some files in other folder. No need to copy paste)
# cd to the folder where we need to create sim link
ln -s ../../../some_folder folder_to_sim_link
# first arg is from WHERE we need to create sim link and second argument target

# kill some process on machine
kill $(lsof -t -i:8080)


#connect to remote instance with PEM key
ssh -i {path to .pem key} user@ip
Example: ssh -i ./key.pem ubuntu@192.168.0.11

#Upload file to remote instance
scp -i ${path to key} ${local path}   ${user}@${ip}:/{path from user folder} 
Example: scp -i ./file.txt ./key.pem ubuntu@192.168.0.11:/repo/


#Download file to remote instance
scp -i ${path to key} ${user}@${ip}:/{path from user folder}  ${local path}   
Exmaple: scp -i ./key.pem ubuntu@192.168.0.11:/repo/file.txt ./
