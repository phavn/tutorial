require(RODBC)

db <- odbcConnect("QV Training")
db

ordersTable <- sqlQuery(db, "SELECT * FROM orders",stringsAsFacotrs=FALSE)
