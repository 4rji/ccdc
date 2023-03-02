#!/bin/bash

# Specify the path to the ssh key
ssh_key="/root/.ssh/id_rsa"

# Define the list of user@host combinations to connect to
users=(
    "root@192.168.22.239"
    "natasha@192.168.22.43"
    "admin@192.168.22.135"
)

# Loop through the users and create a new tmux window for each one
for user in "${users[@]}"; do
    tmux new-window "ssh -i $ssh_key $user"
done


