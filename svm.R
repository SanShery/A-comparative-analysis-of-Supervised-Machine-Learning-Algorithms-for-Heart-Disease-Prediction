>set.seed(10) 
+ svmModel <- train(num ~ ., data = trainData2, 
+ method = "svmRadial", 
+ trControl = fitControl, 
+ preProcess = c("center", "scale"), 
+ tuneLength = 8, 
+ metric = "ROC") 
+ svmPrediction <- predict(svmModel, testData2) 
+ svmPredictionprob <- predict(svmModel, testData2, type = 'prob')[2] 
+ svmConfMat <- confusionMatrix(svmPrediction, testData2[, "num"]) 
+ #ROC Curve 
+ AUC$svm <- roc(as.numeric(testData2$num), as.numeric(as.matrix((svmPredictionprob))))$auc 
+ Accuracy$svm <- svmConfMat$overall['Accuracy']