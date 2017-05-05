library(foreign)
bmi <- read.xport("datasets/nhanes/BMX.XPT")
bmis <- mean(bmi$BMXBMI, na.rm=TRUE)

files <- c("B","C","D","E","F","G","H")
for(i in files) {
    tmp <- read.xport(paste("datasets/nhanes/BMX_",i,".XPT", sep=''))
    bmis <- c(bmis, mean(tmp$BMXBMI, na.rm=TRUE))
}

years <- seq(1999,2013,2)
bmi.hanes <- data.frame("YEAR" = years, "avg.bmi" = bmis)


#################### Let's get the meals eaten at home
# For the 1999-2000 dataset, we look at DRD040Z and it's key
# 8 = friends house
# 9 = Home
# 14 = Someone's House
#
# I feel like these are all "home meals"
# the rest are "out", and I'm assuming prepared by someone else.
# 
# Other interesting ones: 7 = Fast food, 16 Takeout
vars <- c("DRD040Z","DR1_040Z","DR2_040Z")
tmp <- read.xport("datasets/nhanes/DRXIFF.XPT")
meals <- count(tmp$DRD040 %in% c(8,9,14))[2,'freq'] / nrow(tmp)

tmp <- read.xport("datasets/nhanes/DRXIFF_B.XPT")
meals <- c(meals, count(tmp$DRD040Z)[1,'freq']/nrow(tmp))

files <- c("C","D","E","F","G","H")
for(i in files) {
    tmp <- read.xport(paste("datasets/nhanes/DR1IFF_",i,".XPT", sep=''))
    tmp2 <- read.xport(paste("datasets/nhanes/DR2IFF_",i,".XPT", sep=''))

    meals <- c(meals, mean(count(tmp$DR1_040Z)[1,'freq']/nrow(tmp),count(tmp2$DR2_040Z)[1,'freq']/nrow(tmp2)))
}

hmeals.hanes <- data.frame("YEAR" = years, "home.meals" = meals)
