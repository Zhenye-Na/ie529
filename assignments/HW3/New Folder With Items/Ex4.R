# read csv file 
mydata = read.csv("/Users/macbookpro/Desktop/Ex4.csv")

x1<- mydata$MismatchScore;
x2<- mydata$Age;
t <- mydata$SurvivalTime;
y <- -log(t);
  
#fit log model
fit <- lm(y~x1 + x2)

#Results of the model
summary(fit)