# read csv file 
mydata <- read.csv("/Users/macbookpro/Desktop/Ex5.csv")

y <- mydata$SecondHeartAttack;
x <- mydata$AngerScore;

# change "YES" or "NO" into booleans
for (i in mydata$SecondHeartAttack){
	if (i == "Yes"){
		i <- 1
	}
	else{
		i <- 0
	}
}


# perform logistic regression on dataset
mylogit <- glm(y ~ x, data = mydata, family = "binomial")

# show the summary
summary(mylogit)