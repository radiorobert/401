
# Read in that big boy
atus <- read.csv("datasets/atus/atusact_0315.dat")
foodaway <- read.csv("datasets/foodaway.csv")
ncol(atus)
nrow(atus)

# Lets get all of the subsets for codes we want
#### 
# 01: Food prep & drink prep
# 02: Food Presentation
# 03: kitchen & food cleanup
# 99: sum
foodprep <- atus[atus$TRCODEP %in% c(020201,020202,020203,020299),] 
eating <- atus[atus$TRCODEP == '110101',]
buying.food <- atus[atus$TRCODEP == '70103',]
groceries <- atus[atus$TRCODEP == '70101',]

######## Build the dataframes
foodprep <- data.frame(id = foodprep[['TUCASEID']], activity = foodprep[['TRCODEP']], duration = foodprep[['TUACTDUR']])

eating <- data.frame(id = eating[['TUCASEID']], activity = eating[['TRCODEP']], duration = eating[['TUACTDUR']])

buying.food <- data.frame(id = buying.food[['TUCASEID']], activity = buying.food[['TRCODEP']], duration = buying.food[['TUACTDUR']])

groceries <- data.frame(id = groceries[['TUCASEID']], activity = groceries[['TRCODEP']], duration = groceries[['TUACTDUR']])
# make the activity column categorical
foodprep$activity <- as.factor(foodprep$activity)

# separate by years
foodprep.2015 <- foodprep[(foodprep$id - 2.015e+13) > 0,]
foodprep.2014 <- foodprep[foodprep$id > 2.014e+13 & foodprep$id < 2.015e+13,]
foodprep.2013 <- foodprep[foodprep$id > 2.013e+13 & foodprep$id < 2.014e+13,]
foodprep.2012 <- foodprep[foodprep$id > 2.012e+13 & foodprep$id < 2.013e+13,]
foodprep.2011 <- foodprep[foodprep$id > 2.011e+13 & foodprep$id < 2.012e+13,]
foodprep.2010 <- foodprep[foodprep$id > 2.010e+13 & foodprep$id < 2.011e+13,]
foodprep.2009 <- foodprep[foodprep$id > 2.009e+13 & foodprep$id < 2.010e+13,]
foodprep.2008 <- foodprep[foodprep$id > 2.008e+13 & foodprep$id < 2.009e+13,]
foodprep.2007 <- foodprep[foodprep$id > 2.007e+13 & foodprep$id < 2.008e+13,]
foodprep.2006 <- foodprep[foodprep$id > 2.006e+13 & foodprep$id < 2.007e+13,]
foodprep.2005 <- foodprep[foodprep$id > 2.005e+13 & foodprep$id < 2.006e+13,]
foodprep.2004 <- foodprep[foodprep$id > 2.004e+13 & foodprep$id < 2.005e+13,]
foodprep.2003 <- foodprep[foodprep$id > 2.003e+13 & foodprep$id < 2.004e+13,]

# build the time spent eating column
eating.2015 <- eating[(eating$id - 2.015e+13) > 0,]
eating.2014 <- eating[eating$id > 2.014e+13 & eating$id < 2.015e+13,]
eating.2013 <- eating[eating$id > 2.013e+13 & eating$id < 2.014e+13,]
eating.2012 <- eating[eating$id > 2.012e+13 & eating$id < 2.013e+13,]
eating.2011 <- eating[eating$id > 2.011e+13 & eating$id < 2.012e+13,]
eating.2010 <- eating[eating$id > 2.010e+13 & eating$id < 2.011e+13,]
eating.2009 <- eating[eating$id > 2.009e+13 & eating$id < 2.010e+13,]
eating.2008 <- eating[eating$id > 2.008e+13 & eating$id < 2.009e+13,]
eating.2007 <- eating[eating$id > 2.007e+13 & eating$id < 2.008e+13,]
eating.2006 <- eating[eating$id > 2.006e+13 & eating$id < 2.007e+13,]
eating.2005 <- eating[eating$id > 2.005e+13 & eating$id < 2.006e+13,]
eating.2004 <- eating[eating$id > 2.004e+13 & eating$id < 2.005e+13,]
eating.2003 <- eating[eating$id > 2.003e+13 & eating$id < 2.004e+13,]

buying.food.2015 <- buying.food[(buying.food$id - 2.015e+13) > 0,]
buying.food.2014 <- buying.food[buying.food$id > 2.014e+13 & buying.food$id < 2.015e+13,]
buying.food.2013 <- buying.food[buying.food$id > 2.013e+13 & buying.food$id < 2.014e+13,]
buying.food.2012 <- buying.food[buying.food$id > 2.012e+13 & buying.food$id < 2.013e+13,]
buying.food.2011 <- buying.food[buying.food$id > 2.011e+13 & buying.food$id < 2.012e+13,]
buying.food.2010 <- buying.food[buying.food$id > 2.010e+13 & buying.food$id < 2.011e+13,]
buying.food.2009 <- buying.food[buying.food$id > 2.009e+13 & buying.food$id < 2.010e+13,]
buying.food.2008 <- buying.food[buying.food$id > 2.008e+13 & buying.food$id < 2.009e+13,]
buying.food.2007 <- buying.food[buying.food$id > 2.007e+13 & buying.food$id < 2.008e+13,]
buying.food.2006 <- buying.food[buying.food$id > 2.006e+13 & buying.food$id < 2.007e+13,]
buying.food.2005 <- buying.food[buying.food$id > 2.005e+13 & buying.food$id < 2.006e+13,]
buying.food.2004 <- buying.food[buying.food$id > 2.004e+13 & buying.food$id < 2.005e+13,]
buying.food.2003 <- buying.food[buying.food$id > 2.003e+13 & buying.food$id < 2.004e+13,]

groceries.2015 <- groceries[(groceries$id - 2.015e+13) > 0,]
groceries.2014 <- groceries[groceries$id > 2.014e+13 & groceries$id < 2.015e+13,]
groceries.2013 <- groceries[groceries$id > 2.013e+13 & groceries$id < 2.014e+13,]
groceries.2012 <- groceries[groceries$id > 2.012e+13 & groceries$id < 2.013e+13,]
groceries.2011 <- groceries[groceries$id > 2.011e+13 & groceries$id < 2.012e+13,]
groceries.2010 <- groceries[groceries$id > 2.010e+13 & groceries$id < 2.011e+13,]
groceries.2009 <- groceries[groceries$id > 2.009e+13 & groceries$id < 2.010e+13,]
groceries.2008 <- groceries[groceries$id > 2.008e+13 & groceries$id < 2.009e+13,]
groceries.2007 <- groceries[groceries$id > 2.007e+13 & groceries$id < 2.008e+13,]
groceries.2006 <- groceries[groceries$id > 2.006e+13 & groceries$id < 2.007e+13,]
groceries.2005 <- groceries[groceries$id > 2.005e+13 & groceries$id < 2.006e+13,]
groceries.2004 <- groceries[groceries$id > 2.004e+13 & groceries$id < 2.005e+13,]
groceries.2003 <- groceries[groceries$id > 2.003e+13 & groceries$id < 2.004e+13,]


#### make the big data frame
results <- data.frame(year = 2003:2015,foodprep = 
                      c(mean(foodprep.2015$duration), mean(foodprep.2014$duration), mean(foodprep.2013$duration), mean(foodprep.2012$duration), mean(foodprep.2011$duration), mean(foodprep.2010$duration), mean(foodprep.2009$duration), mean(foodprep.2008$duration), mean(foodprep.2007$duration), mean(foodprep.2006$duration), mean(foodprep.2005$duration), mean(foodprep.2004$duration), mean(foodprep.2003$duration)),
                  eating = 
                  c(mean(eating.2015$duration), mean(eating.2014$duration), mean(eating.2013$duration), mean(eating.2012$duration), mean(eating.2011$duration), mean(eating.2010$duration), mean(eating.2009$duration), mean(eating.2008$duration), mean(eating.2007$duration), mean(eating.2006$duration), mean(eating.2005$duration), mean(eating.2004$duration), mean(eating.2003$duration)),
                  buying.food =
                  c(mean(buying.food.2015$duration), mean(buying.food.2014$duration), mean(buying.food.2013$duration), mean(buying.food.2012$duration), mean(buying.food.2011$duration), mean(buying.food.2010$duration), mean(buying.food.2009$duration), mean(buying.food.2008$duration), mean(buying.food.2007$duration), mean(buying.food.2006$duration), mean(buying.food.2005$duration), mean(buying.food.2004$duration), mean(buying.food.2003$duration)),
                  groceries =
                  c(mean(groceries.2015$duration), mean(groceries.2014$duration), mean(groceries.2013$duration), mean(groceries.2012$duration), mean(groceries.2011$duration), mean(groceries.2010$duration), mean(groceries.2009$duration), mean(groceries.2008$duration), mean(groceries.2007$duration), mean(groceries.2006$duration), mean(groceries.2005$duration), mean(groceries.2004$duration), mean(groceries.2003$duration)))



######
# Make Graphs

# Bar graph for expenditures on eating out
ggplot(foodaway, aes(year,expenditure.on.food.out)) + geom_col()
