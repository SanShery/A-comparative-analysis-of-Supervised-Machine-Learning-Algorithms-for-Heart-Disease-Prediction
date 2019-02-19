> row.names <- names(Accuracy) 
+ col.names <- c("AUC", "Accuracy") 
+ cbind(as.data.frame(matrix(c(AUC, Accuracy), nrow = 5, ncol = 2, 
+ dimnames = list(row.names, col.names)))) 
> boostImp = varImp(boostModel, scale = FALSE) 
+ row = rownames(varImp(boostModel, scale = FALSE)$importance) 
+ row = convert.names(row)
+ rownames(boostImp$importance) = row 
+ plot(boostImp, main = 'Variable importance for heart failure prediction with boosted tree') 
>