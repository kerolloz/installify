# Installify 📜

A very simple script that installs some important packages for new system. 📦

> **NOTE:** Depends on _`apt`_ package manager

## Usage

```bash
wget https://codeload.github.com/kerolloz/installify/zip/master
unzip master
cd installify-master
bash installer.sh
```

## Behind the scenes 👨‍💻

The script will:

- Install [requirements.txt](./requirements.txt).
- Configure git global username and email.
- Add templates for new files.

## TODO

Add ssh config
save vscode config
save tweaks config
save qterminal config
add qt5ct to fix QTerminal
install nvm && nvm install node
