require(sqldf)

fullList <- read.table(file="FullList.csv", header=TRUE, sep=",")
centrList <- read.table(file="centrList.csv", header=TRUE, sep=",")

sql_string <- "SELECT * FROM fullList, centrList WHERE fullList.Hostname LIKE centrList.Hostname"

comb <- sqldf(sql_string, stringsAsFactors=FALSE)
comb

write.csv(comb, "JoinedLists.csv")


centrifyDomainFixDF <- read.csv(file="centrify_domainfix.csv", header=TRUE)
centrifyIPHostnameDF <- read.csv(file="centrIPHostname.csv", header=TRUE, sep=",")

sql_string <- "SELECT centrifyDomainFixDF.Hostname,centrifyIPHostnameDF.IP_Address FROM centrifyDomainFixDF, centrifyIPHostnameDF WHERE centrifyIPHostnameDF.Hostname LIKE centrifyDomainFixDF.Hostname"
comb <- sqldf(sql_string, stringsAsFactors=FALSE)
comb
write.csv(comb,"centrify_domainfix_hosts.csv")
