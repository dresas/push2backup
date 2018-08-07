# push2backup
The script makes a backup of a (user specified) folder each time it is started and save it as a zip-file (e.g. your file hosting service).

When the script is started for the first time, the folder to be backed up and the location of the backups are queried. From the second start of the script onwards the backup is created directly.
The backup is saved as a ZIP file. The name of the ZIP file is composed of the name of the source folder, the date and the current time. Example file name: 'name-of-source-folder'_YYYYMMDD_hhmmss.zip

Version 1.2
=
initial commit
