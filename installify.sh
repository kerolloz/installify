clear;

username=$(whoami);
echo "Hello," $username;

BASEDIR=$(dirname "$0")
programs=$(cat $BASEDIR/requirements.txt);

echo "the following programs are going to be installed"
echo "------------------------------------------------"
echo "$programs"
echo "------------------------------------------------"

./updater.sh

enter_fullscreen() {
  # Save screen contents
  tput smcup 2> /dev/null
}

leave_fullscreen() {
  # Set cursor to normal
  tput cnorm 2> /dev/null
  # Restore screen contentsq
  tput rmcup 2> /dev/null
  stty echo
}

handle_sigint() {
  leave_fullscreen
  S="$?"
  kill 0
  exit $S
}

handle_sigtstp() {
  leave_fullscreen
  kill -s SIGSTOP $$
}



sudo apt install $programs -y; 
echo "Installing software packages done."

cp -r $BASEDIR/templates/*  ~/Templates/
echo "Copying templates done."

enter_fullscreen
clear
trap handle_sigint INT
trap handle_sigtstp SIGTSTP

# Git configuration
read -p 'Git Author Name: ' author_name
read -p 'Git Email: ' email

git config --global user.email $email
git config --global user.name "$author_name"

leave_fullscreen
echo "Git config done." 

