MFC
======
Music Folder Creator - create a basic hierarchy for your music folders. UNIX and Windows systems supported.

![](http://i.imgur.com/vCEPMnN.gif)

### What it does
Basically, these scripts are a way to start organizing your music folders, either in alphabetical order, or by genre/subgenre (currently only supported in Bash version).

### How to use
#### Bash
You have two ways to use the Bash version - double clicking a file, or executing a shell script in your terminal.

**In shell**
 1. Download [mfc.sh](mfc.sh)
 2. Move the file into a folder which will serve as your root music folder, e.g. `~/Music/My Library`
 3. Run the script with `. mfc.sh` and follow the prompts
 4. Done!

**Outside shell**
 1. Download [mfc.command](mfc.command)
 2. Move the file into a folder which will serve as your root music folder, e.g. `~/Music/My Library`
 3. Double click the file, and follow the prompts
 4. Done!

##### It doesn't work :(
You may have to correct the file permissions. `chmod +x mfc.sh` will fix it.

#### Windows Batch Script
 1. Download [MFC.exe](MFC.exe)
 2. Move the file into a folder which will serve as your root music folder, e.g. `C:\Music\My Library`
 3. Double click the file, and follow the prompts
 4. Done!

##### Source: Windows Batch Script
```DOS
@ECHO OFF
ECHO This program will create alphabetic folders...
pause
MD A-E
MD A-E\A
MD A-E\B
MD A-E\C
MD A-E\D
MD F-J
MD F-J\F
MD F-J\G
REM (and so on till the end)
ECHO Done!
pause
```

#### Contributing
Contributions are more than welcome! The original `.bat` file for Windows was written way back in 2008, and I lost the original source code along the way. Also, I'm in no way a Bash expert, therefore there might be a lot of optimization opportunities here!
