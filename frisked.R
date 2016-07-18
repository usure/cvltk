require(data.table)

for(i in 2003:2015){

dat <- read.csv(paste("2003_2015/", i, ".csv", sep=""))
dat <- as.data.table(dat)
#cat(paste("loading ", i, ".csv", "\n", sep=""))

cat("the number of black people frisked in", i, "is:", length(dat[race == "B"][frisked == "Y"]$race), "\n")
cat(length(dat[race == "B"][frisked == "Y"]$race)/length(dat[frisked == "Y"]$race) * 100, "%", sep="", "\n")

cat("the number of white people frisked in", i, "is:", length(dat[race == "W"][frisked == "Y"]$race), "\n")
cat(length(dat[race == "W"][frisked == "Y"]$race)/length(dat[frisked == "Y"]$race) * 100, "%", sep="", "\n")
cat("", "\n")


#cat(length(dat[race == "B"][frisked == "Y"]$race) > length(dat[race == "W"][frisked == "Y"]$race, "\n"))
}


