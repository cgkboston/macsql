# macsql
The first and only command line sql database for the mac
The following shows my local directory structure set up a similar structure on your linux machine/imac/macbook/macbookPro

**IMPORTANT**

add the following line to your ~/.bashrc file:
export MACSQL_HOME=/Users/$USER/make.money/macsql  (where $USER is your user name)

Before running the server, confirm the variable is set:
chriss-iMac:bin chriskennedy$ env|grep USER
USER=chriskennedy
chriss-iMac:bin chriskennedy$ env|grep MACSQL_HOME
MACSQL_HOME=/Users/chriskennedy/make.money/macsql
chriss-iMac:bin chriskennedy$ cat ~/.bashrc
export MACSQL_HOME=/Users/chriskennedy/make.money/macsql
export PATH=$PATH:$MACSQL_HOME/bin:$PYT/code:.
_________________________________________________________

Note this fully functional data server is actually quite small in terms of lines of code.  The reason for this is that 
macsql uses the unix command line utility set optimized with appropriate flags and switches.  This reduces code size and 
guarantees optimal performance for the OS you are running.

The following shows all of the executable files and directories for the macsql data server:
chriss-iMac:~ chriskennedy$ pwd
/Users/chriskennedy
chriss-iMac:~ chriskennedy$ cd make.money/macsql/bin/
chriss-iMac:bin chriskennedy$ wc -l *
       4 2grep
       4 alltabs
      12 backup
      32 create
      41 delete
      13 descr
       9 drop
      25 export
      62 help
     103 history
      27 insert
     163 macsql
       0 quit
      97 select
       8 truncate
     156 update
     756 total
chriss-iMac:bin chriskennedy$ wc -l bin/*
     110 bin/backupDB
     120 bin/createTable
      93 bin/deleteFromTable
      41 bin/dropTable
      48 bin/exportCsv
     209 bin/exportHtml
      62 bin/exportXml
      10 bin/fseek.py
      29 bin/getDate
      72 bin/insertIntoTable
     346 bin/selectFromTable
     115 bin/setWhere
      34 bin/tableHeader.html
      90 bin/transactions
      41 bin/truncateTable
    1420 total
__________________________________________
In addition to the bin and bin/bin folders above, there is folder for the data
$MACSQL_HOME/db with subfolders as shown below.  Simply create the folders on your server.
If they are not created, macsql likely will create them for you or can be easily updated to do so, 
but create the directories to be safe:

chriss-iMac:bin chriskennedy$ cd $MACSQL_HOME/db
chriss-iMac:bin chriskennedy$ ls -l
total 48
drwxr-xr-x  26 chriskennedy  staff    884 Sep 29 19:22 data
-rw-r--r--   1 chriskennedy  staff  18274 Oct  1 01:41 history.dat
drwxr-xr-x   2 chriskennedy  staff     68 Jan 28  2011 index
-rwxr-xr-x   1 chriskennedy  staff    906 Jan 28  2011 reset.history.tcsh
drwxr-xr-x  41 chriskennedy  staff   1394 Aug 22 19:07 tables

You'll see a reset.history.tcsh script in the db folder above.  This implements FULL shell history in the macsql command
line isql interface (Bang!Bang!, ...:)

