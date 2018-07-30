#!/usr/bin/python3
import os
import subprocess

if __name__ == '__main__':
    username = subprocess.check_output('whoami').decode()  # save the returned output

    os.system('clear')

    print('Hey, ' + username + 'Welcome to Fresh-System-Installer...\n')
    print('Programs will be installed from the following file')

    dir_path = str(os.path.dirname(os.path.realpath(__file__)) + '/installation_list.txt')
    # I'm using this way so you can run the file from any place using the terminal
    print(dir_path)

    installation_list = open(dir_path, 'r')
    print('\nThe following programs will be installed:\n') 
    for program in installation_list:
        print('-' + program.strip())        
    print()
    installation_list.seek(0)
        
    for program in installation_list:
        os.system('sudo apt-get install -y ' + program)
