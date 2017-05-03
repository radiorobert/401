# Robert Blake
# 401 DSCI

#####
##### 1
#####

# Load up the salaries data
sal <- read.csv("/home/robertblake/Projects/401/assignment4/Salaries.csv")

# Plot basic salaries verses time colored for male and female
g.sex <- (ggplot(sal, aes(x = yrs.service,y= salary, color=sex))
            + geom_point()
            + scale_color_manual(name="Sex",values=c('Female' = 'firebrick3', 'Male'='cornflowerblue'))
            + ggtitle('Salary vs. Sex vs. Years of Service')
            + theme(plot.title = element_text(size=20, face="bold", margin = margin(10,0,10,0)))
            + labs(x="Time")
            + labs(y="Salary ($)")
            + labs(x="Years of Service")
            + geom_smooth(method=lm, se=FALSE, fullrange=TRUE)
            )

#####
##### 2
#####

# Grab some avgs. for each rank's years of service
mean(sal[sal['rank'] == 'Prof',]$yrs.service)
mean(sal[sal['rank'] == 'AsstProf',]$yrs.service)
mean(sal[sal['rank'] == 'AssocProf',]$yrs.service)

# basic plot yrs.service vs. salary, colored by rank
g.rank <- (ggplot(sal, aes(x = yrs.service,y= salary, color=rank))
            + geom_point()
            + scale_color_manual(name="Rank",values=c('AssocProf' = 'firebrick3', 'AsstProf'='cornflowerblue', 'Prof'='darkolivegreen4'))
            + ggtitle('Salary vs. Rank vs. Years of Service')
            + theme(plot.title = element_text(size=20, face="bold", margin = margin(10,0,10,0)))
            + labs(x="Time")
            + labs(y="Salary ($)")
            + labs(x="Years of Service")
            + geom_smooth(method=lm, se=FALSE)
            )






#####
##### 3
#####

# Just looking at both disciplines plotted
g.disc <- (ggplot(sal, aes(x = yrs.service,y= salary, color=discipline))
            + geom_point()
            + scale_color_manual(name="Discipline",values=c('A' = 'firebrick3', 'B'='cornflowerblue'))
            + ggtitle('Salary vs. Discipline vs. Years of Service')
            + theme(plot.title = element_text(size=20, face="bold", margin = margin(10,0,10,0)))
            + labs(x="Time")
            + labs(y="Salary ($)")
            + labs(x="Years of Service")
            + geom_smooth(method=lm, se=FALSE)
            )

##########################
# Part 2

libary(MASS)
data(Boston)

boston <- Boston # capital B's were too hard

# pairs plot to get some basic ideas of what's going on
plot(boston)

# plot NO2 emissions against median value of homes, with a gradient on age of the homes.
g.nox <- (ggplot(boston, aes(x = medv,y= nox, color=age))
            + geom_point()
            + scale_colour_gradient()
            + ggtitle('Nox vs. Median Value of Homes in Boston')
            + theme(plot.title = element_text(size=20, face="bold", margin = margin(10,0,10,0)))
            + labs(x="Median Value")
            + labs(y="Nitrogen Oxides (ppm)")
            )



# plot crim vs distance with colors by rad metric
g.crim.dis <- (ggplot(boston, aes(dis,crim, color=rad)) 
               + geom_point() 
               + scale_colour_gradient() 
               + ggtitle('Distance from Employment Centers vs. Crime Rate')
               + theme(plot.title= element_text(size=15, face="bold", margin = margin(10,0,10,0)))
               + labs(x="Distance to Employment Centers", y="Crim Rate (%)"))

# put a bunch together into a plot against median value
g.medv.crim <- (ggplot(boston, aes(x = medv,y= crim, color=dis))
            + geom_point()
            + scale_colour_gradient()
            + ggtitle('Crime Rate vs. Median Value in Boston')
            + theme(plot.title = element_text(size=20, face="bold", margin = margin(10,0,10,0)))
            + labs(x="Median Value")
            + labs(y="Crime Rate (%)")
            )


# Find a model using stepAIC
m1 <- lm(medv ~ ., data=boston)
best.fit <- stepAIC(m1, direction="both")
summary(best.fit)

# pull 10% random rows as test data
test.data <- Boston[sample(1:nrow(Boston),10),]

# create the comparison between actual data of median value vs predicted using the previously made model
compare.results <- data.frame(actual=test.data$medv, predicted=predict(best.fit,test.data, interval="predict", level=0.95))
compare.results


