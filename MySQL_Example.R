#=================================================================
#   MySQL_Example.R
#
#   Michael Louis Pastor 
#   10/10/2021
#

# Connect to MySQL
#



# SQL
#install.packages("RMySQL")
library(RMySQL)
#install.packages("RMariaDB")
library(RMariaDB)



mydb = dbConnect(MySQL(), user='root', password='password', 
                 dbname='honeybee_data', host='localhost')
dbListTables(mydb)

rs <-  dbSendQuery(mydb, 'select * from bip-colony-loss-data-annual-all')
data = fetch(rs, n=-1)

dbSendQuery(mydb, 'select * from vhoneyneonic_v03')




