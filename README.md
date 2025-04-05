
# About Shellmark

![directory-marks-logo](https://github.com/scoopex/directory-marks/assets/288876/11a5166d-4b5d-467b-9836-f8647f062c7a)


"directory-marks" is a bash shell script that allows you to save and jump to periodically used directories.
This tool is based on a prior implementation of ["shellmark](https://github.com/sonjiku/shellmark) and
["bashmarks"](https://github.com/huyng/bashmarks).
The fork was necessary because I did not receive any feedback on pull requests. If one of the authors would
like to review and accept my adjustments, I would be happy to send them to them via pull request.


## Installation

1. Clone repository
   ```
   git clone git@github.com:scoopex/directory-marks.git
   ```
2. Installation
   ```
   cd directory-marks`
   export INSTALL_DIR="$HOME/bin"
   make install
   ```
3. Add the shell completion to your `.bashrc` configuration.
   (this is essential to to "directory-marks")
   ```
   make config
   exec bash
   ```
4. Use it:
   ```
   cdm --help
   cdm -s os-configs /etc
   cdm -s os-logs /var/log
   cdm os-<TAB><TAB>
   ```


## Shell Commands

```
$ cdm --help

Usage: cdm [OPTIONS] [directory-mark...] [directory]

  -d, --delete  Deletes directory-marks from list
  -g, --go      Goes (cd) to the directory pointed to by directory-mark
  -p, --print   Prints the directories pointed to by directory-marks
  -s, --set     Saves DIRECTORY or else $PWD as directory-mark
  -r, --replace Replaces DIRECTORY or else $PWD as directory-mark
  -h, --help    Lists all available directory-marks
  -l, --list    Lists all available directory-marks
  -L, --listdir Lists all available directory-marks and the directories they point to
```

## Example Usage

```
$ cd /var/www/
$ cdm -s webfolder
$ pwd
/var/www/
$ cd /usr/local/lib/
$ cdm -s locallib
$ cdm -l
locallib
webfolder
$ cdm -p webfolder
/var/www/

$ cdm --go <TAB><TAB>
webfolder     locallib
$ cdm --go  l<TAB>
$ cdm --go locallib
$ cdm web
$ pwd
/var/www/
$ cdm simpsons
bash: cd: Error: Shellmark does not exist!: No such file or directory
$ cdm -d webfolder web
```

## Where directory-marks are stored

All of your directory bookmarks are saved in `~/.config/shell/directory-marks`
but that can easily be changed just by changing the DMFILE environment variable.
