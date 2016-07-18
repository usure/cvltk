require(data.table)

cat("REASON FOR FRISK - INAPPROPRIATE ATTIRE FOR SEASON", "\n")

for(i in 2003:2015){

dat <- read.csv(paste("2003_2015/", i, ".csv", sep=""))
dat <- as.data.table(dat)

cat("the number of black people frisked for inappropiate attire for season", i, "is:", length(dat[race == "B"][rf_attir == "Y"]$race), "\n")
cat(length(dat[race == "B"][rf_attir == "Y"]$race)/length(dat[rf_attir == "Y"]$race) * 100, "%", sep="", "\n")

cat("the number of white people frisked for inappropiate attire for season", i, "is:", length(dat[race == "W"][rf_attir == "Y"]$race), "\n")
cat(length(dat[race == "W"][rf_attir == "Y"]$race)/length(dat[rf_attir == "Y"]$race) * 100, "%", sep="", "\n")
cat("", "\n")

#cat(length(dat[race == "B"][frisked == "Y"]$race) > length(dat[race == "W"][frisked == "Y"]$race, "\n"))
}



