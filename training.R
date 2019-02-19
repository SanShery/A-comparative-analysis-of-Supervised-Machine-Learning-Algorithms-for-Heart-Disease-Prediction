library(caret) 
+ set.seed(10) 
+ inTrainRows <- createDataPartition(heart.data$num, p = 0.7, list = FALSE) 
+ trainData <- heart.data[inTrainRows,] 
+ testData <- heart.data[ - inTrainRows,] 
+ nrow(trainData) / (nrow(testData) 
+ nrow(trainData)) 
#checking whether really 70% -> OK