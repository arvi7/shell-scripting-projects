#!/bin/bash
#Author: arvi7
#Date: 11/1/2024
################
#This script will use githubs rest api, and list all the 
#pull request users for a repo in github
###############
Username=$username
Token=$token



#Here repoOwner and repo are taken as cmnd line arguments
Uername=$1
Token=$2


# api_url is the basic url needed as per github rest api
api_url="https://api.github.com/repos"


#we are writing a function to form the api call with all the req elements
function get_github_api {
	endpoint="$repoOwner/$repo"
	url="$api_url/$endpoint/collaborators"
	curl -s -u "$Username:$Token" "$url"
	echo "after cul statement"
	
}

# this function calls the api and prints output from the api call to output
function fetch_list_users {
	collaborators=$get_github_api
	echo $collaborators
}

#main script to start the function call
fetch_list_users

