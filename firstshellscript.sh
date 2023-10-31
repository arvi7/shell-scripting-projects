#!/bin/bash
###########################
#This script is used to list all the s3, ec2 and lambda infra in my account.
###########################
echo "Print all s3 buckets in the account"
aws s3 ls

echo "Print all ec2 instances in the account"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Print all iam users  in the account"
aws iam list-users | jq '.Users[].UserName'
