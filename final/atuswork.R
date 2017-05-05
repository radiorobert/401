library(ggplot2)
library(plyr)
atus <- read.csv("datasets/atus/extracts/activity_atus.csv")

# pull all the activity codes of interest
atus.cook <- atus[atus$ACTIVITY %in% c(20200,20201,20202,20203,20299,150201),]

# group by year, then rename and plot
atus.main <- aggregate(atus.cook$DURATION, list(atus.cook$YEAR),FUN=mean)
atus.main <- rename(atus.main,c("Group.1" = "YEAR", "x"="all.act.avg"))

# group by year and activity, then rename and plot
atus.main.2 <- aggregate(atus.cook$DURATION, list(atus.cook$YEAR,atus.cook$ACTIVITY),FUN=mean)
atus.main.2 <- rename(atus.main.2,c("Group.1" = "YEAR", "Group.2" = "ACTIVITY","x"="act.avg"))
g <- ggplot(atus.main.2, aes(YEAR,act.avg,color=as.factor(ACTIVITY))) + geom_line() +
    labs(caption = "* not elsewhere classified", 
         color = "Activity", x = "Year", 
         y = "Minutes", title="Average Time Spent on Cooking Tasks") +
    scale_color_discrete(name = "Acitivity", 
                        labels=c("Food and Drink Preparation", "Food Presentation",
                                 "Kitchen and Food Clean-up",
                                 "Food and Drink Prep, Serving, Clean-up: n.e.c.*", "Total")) + 
    theme(text = element_text(size=16,family="Input Serif"))
