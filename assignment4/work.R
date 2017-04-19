# Robert Blake
# 401 DSCI

#####
##### 1
#####

# Load up the salaries data
sal <- read.csv("/home/robertblake/Projects/401/assignment4/Salaries.csv")

# Plot basic salaries verses time colored for male and female
ggplot(sal, aes(yrs.service,salary)) + geom_point(aes(color = factor(sex)))



#####
##### 2
#####

# Grab some avgs. for each rank's years of service
mean(sal[sal['rank'] == 'Prof',]$yrs.service)
mean(sal[sal['rank'] == 'AsstProf',]$yrs.service)
mean(sal[sal['rank'] == 'AssocProf',]$yrs.service)

# basic plot yrs.service vs. salary, colored by rank
ggplot(sal,aes(yrs.service,salary)) + geom_point(aes(color = factor(rank)))




#####
##### 3
#####

# Just looking at both disciplines plotted
ggplot(sal,aes(yrs.service,salary)) + geom_point(aes(color = factor(discipline)))


# Separating the disciplines
sal.a <- sal[sal['discipline'] == 'A',]
sal.b <- sal[sal['discipline'] == 'B',]


# Plot a with a trendline
ggplot(sal.a,aes(yrs.service,salary)) + geom_point() + geom_smooth(model=lm)

# Plot b with a trendline
ggplot(sal.b,aes(yrs.service,salary)) + geom_point() + geom_smooth(model=lm)


##########################
# Part 2

# plot NO2 emissions against median value of homes, with a gradient on age of the homes.
ggplot(boston, aes(medv,nox)) + geom_point(aes(color = boston$age)) + scale_colour_gradient()


# Find a model using stepAIC
m1 <- lm(medv ~ ., data=boston)
best.fit <- stepAIC(boston.m, direction="both")
summary(best.fit)


# not sure what Im doign here
m2 <- glm(chas, family=binomial, data=boston)
m2 <- glm(chas ~ ., family=binomial, data=boston)
