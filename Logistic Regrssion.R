set.seed(10) 
+ logRegModel <- train(num ~ ., data = trainData, method = 'glm', family = 'binomial') 
+ logRegPrediction <- predict(logRegModel, testData) 
+ logRegPredictionprob <- predict(logRegModel, testData, type = 'prob')[2] 
+ logRegConfMat <- confusionMatrix(logRegPrediction, testData[, "num"]) 
+ #ROC Curve + library(pROC) 
+ AUC$logReg <- roc(as.numeric(testData$num), as.numeric(as.matrix((logRegPredictionprob))))$auc 
+ Accuracy$logReg <- logRegConfMat$overall['Accuracy'] #found names with str(logRegConfMat)   
+ **We will compare the results in results section** 