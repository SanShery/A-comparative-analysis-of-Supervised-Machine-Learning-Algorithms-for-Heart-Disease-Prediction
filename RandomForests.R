>library(randomForest) 
+ set.seed(10) 
+ RFModel <- randomForest(num ~ ., +data = trainData, 
+ importance = TRUE, 
+ ntree = 2000) 
+ #varImpPlot(RFModel) 
+ RFPrediction <- predict(RFModel, testData)
+ RFPredictionprob = predict(RFModel, testData, type = "prob")[, 2] 
+  
+ RFConfMat <- confusionMatrix(RFPrediction, testData[, "num"]) 
+  
+ AUC$RF <- roc(as.numeric(testData$num), as.numeric(as.matrix((RFPredictionprob))))$auc + Accuracy$RF <- RFConfMat$overall['Accuracy'] 