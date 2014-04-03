#!/bin/bash

echo "------------------------------"
echo "Modifying contribPlusPlus"
echo "------------------------------"

# sh contrib.sh -d /User/USERNAME/Sites/PROJECT -u GITHUB_USERNAME -p GITHUB_PASSWORD

while true ; do
    case "$1" in
        -d )
            cd $2
            shift 2
        ;;
        --dir )
            cd $2
            shift 2
        ;;
        -p )
            password=$2
            shift 2
        ;;
        --password )
            password=$2
            shift 2
        ;;
        -u )
            username=$2
            shift 2
        ;;
        --username )
            username=$2
            shift 2
        ;;
        *)
            break
        ;;
    esac 
done;

# Add to end
echo "Gaming the system is fun :)"
