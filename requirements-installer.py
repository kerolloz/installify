#!/usr/bin/python3
import os
import subprocess
from termcolor import cprint

if __name__ == '__main__':
    username = subprocess.check_output('whoami').decode()  # save the returned output

    os.system('clear')

    cprint('Hey, ' + username + 'Welcome to Requirements-Installer...\n', 'yellow')
    cprint('Programs will be installed from the following file', 'green')

    dir_path = str(os.path.dirname(os.path.realpath(__file__)) + '/requirements.txt')
    # I'm using this way so you can run the file from any place using the terminal
    cprint(dir_path, 'magenta')

    installation_list = open(dir_path, 'r')
    cprint('\nThe following programs will be installed:\n', 'cyan') 
    for program in installation_list:
        cprint('-' + program.strip(), 'blue')        
    print()
    installation_list.seek(0)
        
    for program in installation_list:
        os.system('sudo apt-get install -y ' + program)
