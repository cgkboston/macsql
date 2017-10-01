#!/usr/bin/python
# a simple python program to open a file seek to a location and print a line
import os,sys
table = os.environ['MACSQL_HOME'] + "/db/data/" + sys.argv[1]
position = int(sys.argv[2])
datafile = open(table, 'r')
datafile.seek(position,0)
data = datafile.readline()
print data
datafile.close()
