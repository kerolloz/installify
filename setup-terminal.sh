# Ensure Dependencies
sudo apt install zsh git curl wget fonts-powerline fonts-firacode qterminal

echo "------------------------------------"
echo "Please take into consideration to exit from the zsh shell that will be opened after oh-my-zsh installation"
echo "------------------------------------"

# Install OH MY ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download Fonts
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

mkdir ~/.fonts
mv MesloLGS*.ttf ~/.fonts
fc-cache -v -f ~/.fonts

# Config Qterminal
mkdir -p ~/.config/qterminal.org/
cat ./config/qterminal.ini > ~/.config/qterminal.org/qterminal.ini

# Set as Default
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/qterminal

# P10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sed -i 's/ZSH_THEME=.*$/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

echo "You'll need to reboot"

