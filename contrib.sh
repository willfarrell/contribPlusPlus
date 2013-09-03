#!/bin/bash

echo "------------------------------"
echo "Modifying contribPlusPlus"
echo "------------------------------"

# sh contrib.sh -d /User/USERNAME/Sites/PROJECT -p PASSWORD

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
echo " " >> README.md

git add README.md
git commit -m 'added extra spacing'
git remote set-url origin git@github.com:willfarrell/contribPlusPlus.git
git push -u origin master --repo "git@github.com:willfarrell/contribPlusPlus.git"

# Remove added char\#
sed 's/[ \t]*$//' README.md > README.md

git add README.md
git commit -m 'clean white space'
git push -u origin master