# Installify 📜

A very simple script that installs important packages for a new linux installtion. 📦

> **NOTE:** Depends on _`apt`_ package manager

## Usage

```bash
wget https://codeload.github.com/kerolloz/installify/zip/master # downloads a zip file of the repo
unzip master # unzips the file
cd installify-master # changes to the directory
bash installify.sh # runs the script
```

## Behind the scenes 👨‍💻

The script will:

- Install packages from [requirements.txt](./requirements.txt) file.
- Copy files from the `templates` directory to `~/Templates`.
- Configure git global username and email.

## TODO

Add ssh config
save vscode config
save tweaks config
save qterminal config
add qt5ct to fix QTerminal
install nvm && nvm install node
