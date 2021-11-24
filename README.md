
# DBMS Lab - Batch - 3

This is a repository conatining all the related files and databases for the DBMS Lab.
Here is the link to [my lab record 📒](https://raghunathan.notion.site/DBMS-Lab-Record-b86b4800e70a454eaef12f404425825e).



## MySql for WSL Installation

[🐧 How to install WSL in windows 10](https://youtu.be/_fntjriRe48?t=85) <br>
[👉 MySql Installation microsoft docs](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-database#:~:text=your%20use%20case.-,Install%20MySQL,-To%20install%20MySQL)


## Starting MySql in WSL
Install my-project with npm

```bash
   sudo /etc/init.d/mysql start

   sudo mysql
```
___

## Exporting database
Go to the directory you want to save the file in first
```bash
   sudo mysqldump -u root -p db_name > fine_name.sql
```

## Importing database
```bash
   sudo mysql -u root -p new_db_name < backup_file_name.sql
```
