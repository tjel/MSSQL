# MSSQL

#### Configure and launch SQL Server in a Docker container on Ubuntu
```bash
sudo docker pull microsoft/mssql-server-linux
sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=<password>' -p 1433:1433 -d microsoft/mssql-server-linux
sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=<password>' -p <host_port>:<container_port> -v ~/DB/mssql:/var/opt/mssql -d microsoft/mssql-server-linux
sudo docker exec -it <container_name> /opt/mssql-tools/bin/sqlcmd -S <host_IP> -U sa -P <password>
```


#### Import, unzip and copy backup files
```bash
mv AdventureWorks.zip AW2014.zip
scp AW2014.zip <username>@<Docker_host_IP>:~/Downloads/AW2014.zip
sudo unzip ~/Downloads/AW2014.zip -d ~/DB/mssql/data/
```

#### Restoring database from backup file
```SQL
RESTORE DATABASE AdventureWorks 
FROM DISK = 'C:\var\opt\mssql\data\AdventureWorks2014.bak'
WITH MOVE 'AdventureWorks2014_Data' 
TO 'C:\var\opt\mssql\data\AdventureWorks_Data.mdf',
MOVE 'AdventureWorks2014_Log' 
TO 'C:\var\opt\mssql\data\AdventureWorks_Log.ldf';
GO
```

```
USE AdventureWorks;
GO
```
