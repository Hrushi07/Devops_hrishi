#!bin/bash
#
#
#
########
#Author:Hrishikesh
#Date:01 september 2024
#This script will report aws resource wage
########
#
#
#
#
#
set -x  #run script in debug mode-> first command is printed then its output is printed in output




#Aws s3
aws s3 ls #list all s3 buckets


#list ec2 instanmces
echo "print ec2 bucket"
aws ec2 describe-instance #aws command for instance list


#list lambda
aws lambda list-functions 

#list iam users
aws iam list-users >> "resource" #passing o/p to resource file

#for specific o/p from json we use "jq" which is a json parser
#"yq is a yaml parser"

aws ec2 describe-instance | jq 'Reservations[].instances[].InstanceId'




