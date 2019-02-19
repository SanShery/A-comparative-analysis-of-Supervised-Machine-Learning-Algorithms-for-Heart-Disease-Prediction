heart.data <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data", header = FALSE, sep = ",", na.strings = '?') 
#naming the coloumns of our data set. 
names(heart.data) <- c("age", "sex", "cp", "trestbps", "chol", "fbs", "restecg","thalach", "exang", "oldpeak", "slope", "ca", "thal", "num") 
#We can view this data by using view(heart.data).  
#Next we check for any missing values and remove them,we see there are 6 missing values so just omit them. 
s = sum(is.na(heart.data)) 
heart.data <- na.omit(heart.data) 
#str(heart.data)