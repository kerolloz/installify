clear;
username=$(whoami);
echo "Hello," $username;

BASEDIR=$(dirname "$0")

programs=$(cat $BASEDIR/requirements.txt);
echo "the following programs are going to be installed\n$programs"

function full_upgrade {
    commands=(
        update
        upgrade
        dist-upgrade
        full-upgrade 
        autoclean 
        autoremove
    )

    for cmd in "${commands[@]}"; do
        sudo apt $cmd -y
    done
}

full_upgrade

# Installing software packages
sudo apt install $programs -y; 

clear;

echo "Copying templates..."
cp -r $BASEDIR/templates/*  ~/Templates/

clear
echo "Configuring git..."

# Git configuration
read -p 'Git Username: ' username
read -p 'Git Email: ' email

git config --global user.email $email
git config --global user.name $username

echo "Done";
