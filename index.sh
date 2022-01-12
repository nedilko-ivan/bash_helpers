# Enable SSH agent
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/some_key_file

#How to sim link example
# cd to the folder where we need to create sim link
ln -s ../../../some_folder folder_to_sim_link
# first arg is from WHERE we need to create sim link and second argument target

# kill some process on moshine
kill $(lsof -t -i:8080)
