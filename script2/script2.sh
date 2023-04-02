#!/bin/bash

#Purpose: take backup all your work done till now
#Author: Priyanka Yadav
#Date: 2nd April 2023


src_dir=/home/ubuntu/scripts
tgt_dir=/home/ubuntu/backup
current_timestamp=$(date "+%Y-%m-%d-%H-%M-%S") 
backup_file=$tgt_dir/$current_timestamp.tgz

echo "Taking backup on $current_timestamp"
tar -cvzf $backup_file --absolute-names $src_dir

echo "Backup complete"