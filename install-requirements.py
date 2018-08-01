#!/usr/bin/python3
import os
import subprocess

if __name__ == '__main__':
    username = subprocess.check_output('whoami').decode()  # save the returned output

    os.system('clear')

    print('Hey, ' + username + 'Welcome to Requirements-Installer...\n')
    print('Programs will be installed from the following file')

    dir_path = str(os.path.dirname(os.path.realpath(__file__)) + '/requirements.txt')
    # I'm using this way so you can run the file from any place using the terminal
    print(dir_path, 'magenta')

    installation_list = open(dir_path, 'r')
    print('\nThe following programs will be installed:\n') 
    all_programs = ''
    for program in installation_list:
        p = program.strip()
        all_programs +=  p + ' '
        print('-' + p)        
    print()
    os.system('sudo apt-get install -y ' + all_programs)
