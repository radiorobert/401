# read datasets
rt15.8991 <- read.csv("datasets/csfii/8991/rt15.csv")
rt20.8991 <- read.csv("datasets/csfii/8991/rt20.csv")
rt30.8991 <- read.csv("datasets/csfii/8991/rt30.csv")
#rt35.8991 <- read.csv("datasets/csfii/8991/rt35.csv")
#rt40.8991 <- read.csv("datasets/csfii/8991/rt40.csv")
rt50.8991 <- read.csv("datasets/csfii/8991/rt50.csv")

rt15.9498 <- read.csv("datasets/csfii/9498/rt15.csv")
#rt20.9498 <- read.csv("datasets/csfii/9498/rt20.csv")
rt25.9498 <- read.csv("datasets/csfii/9498/rt25.csv")
#rt30.9498 <- read.csv("datasets/csfii/9498/rt30.csv")
#rt35.9498 <- read.csv("datasets/csfii/9498/rt35.csv")
#rt40.9498 <- read.csv("datasets/csfii/9498/rt40.csv")
#rt50.9498 <- read.csv("datasets/csfii/9498/rt50.csv")

# set up vectors for columns of interest
crt15.8991 <- c("ID","SHOP_FRQ","SHOP_KND","AMT_GRO","AMT_GROU","AMT_AWY","AMT_AWYU", "INCOME","YEAR")
crt20.8991 <- c("ID","AGE","SEX","OVERWGT","BMI")
crt30.8991 <- c("ID","WITHWHOM","HOMEFOOD","FASTFOOD","AWAYSRCE")
#crt35.8991
#crt40.8991
crt50.8991 <- c("ID","DOCTOR1","DOCTOR2","DOCTOR3","DOCTOR4","DOCTOR5","DOCTOR6","DOCTOR7","DOCTOR8")

crt15.9498 <- c("HHID","INCOME","SHP_AWAY","SHP_FAST","SHP_GROC","YEAR")
#crt20.9498 
crt25.9498 <- c("HHID","AGE","SEX","BMI_SP","DOCTOR1","DOCTOR2","DOCTOR3","DOCTOR4","DOCTOR5","DOCTOR6","DOCTOR7")
#crt35.9498
#crt40.9498
#crt50.9498

# pull just columns of interest and merge them as well
x8991 <- merge(rt15.8991[crt15.8991],rt20.8991[crt20.8991],by='ID')
x8991 <- merge(x8991,rt30.8991[crt30.8991],by='ID')
x8991 <- merge(x8991,rt50.8991[crt50.8991],by='ID')

x9498 <- merge(rt15.9498[crt15.9498],rt25.9498[crt25.9498],by='HHID')
x9498$BMI <- x9498$BMI_SP


# make a main dataframe
main <- x8991

main$YEAR[main$YEAR == 1] <- 1989 
main$YEAR[main$YEAR == 2] <- 1990
main$YEAR[main$YEAR == 3] <- 1991

bmi.year <- data.frame(rbind(main['BMI'],x9498['BMI']),rbind(main['YEAR'],x9498['YEAR']))

# In the older datasets, if there was no response to BMI the value was set to 999.99
bmi.year$BMI[bmi.year$BMI == 999.99] <- NA
