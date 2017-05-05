library(ggplot2)
source("nhanes.R")
source("csfiiwork.R")

bmi <- rbind(bmi.csfii, bmi.hanes)
g <- ggplot(bmi, aes(YEAR,avg.bmi)) + geom_line(color = "tomato", size=2)
g <- g + labs(title="American Body Mass Index (BMI) vs. Time", x="Year", y = "Avg. BMI")

foodex <- read.csv("datasets/foodaway.csv")
g <- ggplot(merge(foodex, bmi, by.x= "year", by.y = "YEAR"), 
       aes(year, expenditure.on.food.out,color = "blue")) +
    geom_line(size=2) + geom_line(aes(year,avg.bmi,color="tomato"), size = 2) +
    labs(title="BMI & Food Expenditures on non-groceries in America", x="Year", y="") + 
    scale_color_discrete(name="",labels=c("% Household Income Spent", "Body Mass Index(BMI)"))+
    theme(text=element_text(size=16,family="Input Serif"))



everything <- merge(all.meals,bmi,by="YEAR")
everything <- merge(everything, foodex, by.x="YEAR", by.y="year")
everything <- rename(everything, c("expenditure.on.food.out" = "food.away.expend"))

# this is the big one of all i guess
g2 <- ggplot(everything, aes(YEAR, home.meals * 100, color="cobalt")) + geom_line(size=2) +
    geom_line(aes(YEAR,avg.bmi, color="goldenrod"),size=2) +
    geom_line(aes(YEAR,food.away.expend, color="tomato"),size=2) +
    labs(title = "BMI | Food Out Expend. | Meals at Home", x="Year", y="") +
    scale_color_discrete(name="",labels= c("Percent of Meals\n had at Home\n", 
                                           "Average Body Mass Index\n",
                                           "Percent Income Spent\n on Food Away from Home"))+
    theme(text = element_text(size=16,family="Input Serif"))
