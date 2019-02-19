ibrary(caret) 
+ set.seed(10) 
+ objControl <- trainControl(method = 'cv', number = 10, repeats = 10) 
+ gbmGrid <- expand.grid(interaction.depth = c(1, 5, 9), 
+ n.trees = (1:30) * 50, +shrinkage = 0.1, 
+ n.minobsinnode = 10) 
+ # run model + boostModel <- train(num ~ ., data = trainData, method = 'gbm', 
+ trControl = objControl, tuneGrid = gbmGrid, verbose = F) 
+ # See model output in Appendix to get an idea how it selects best model 
+ #trellis.par.set(caretTheme()) 
+ #plot(boostModel) 
+ boostPrediction <- predict(boostModel, testData) 
+ boostPredictionprob <- predict(boostModel, testData, type = 'prob')[2] 
+ boostConfMat <- confusionMatrix(boostPrediction, testData[, "num"]) 
+  
+ #ROC Curve 
+ AUC$boost <- roc(as.numeric(testData$num), as.numeric(as.matrix((boostPredictionprob))))$auc 
+ Accuracy$boost <- boostConfMat$overall['Accuracy']