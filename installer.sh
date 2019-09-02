clear;
username=$(whoami);
echo "Hello," $username;

BASEDIR=$(dirname "$0")

programs=$(cat $BASEDIR/requirements.txt);
echo "the following programs are going to be installed\n$programs"

# Installing basic programs
sudo apt-get update && sudo apt upgrade;
sudo apt-get install $programs;

clear
echo "Configuring git.."

# Git configuration
read -p 'Git Username: ' username
read -p 'Git Email: ' email

git config --global user.email $email
git config --global user.name $username

clear;

echo "Copying templates!";
cp -r $BASEDIR/templates/*  ~/Templates/

clear
