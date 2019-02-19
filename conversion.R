+ convert.magic <- function(obj, types) { 
+     for (i in 1:length(obj)) { 
+         FUN <- switch(types[i], character = as.character, 
+                                    numeric = as.numeric, 
+                                    factor = as.factor) 
+         obj[, i] <- FUN(obj[, i]) 
+     } 
+     obj 
+ } 
+  
+ convert.names <- function(row) { 
+     row = gsub("sex1", "male", row) 
+     row = gsub("thal7", "reversable defect thalassemia", row) 
+     row = gsub("thal6", "fixed defect thalassemia", row) 
+     row = gsub("cp4", "asymptomatic chest pain", row) 
+     row = gsub("cp3", "non-anginal chest pain", row) 
+     row = gsub("cp2", "atypical angina chest pain", row) 
+     row = gsub("oldpeak", "ST depression from exercise", row) 
+     row = gsub("thalach", "maximum heart rate achieved", row) 
+     row = gsub("trestbps", "resting blood pressure", row) 
+     row = gsub("ca2", "2 major vessels col/b fluoro., ca2", row) 
+     row = gsub("ca1", "1 major vessel col/b fluoro., ca1", row) 
+     row = gsub("slope2", "flat peak exercise ST segment", row) 
+     row = gsub("slope1", "upsloping peak exercise ST segment", row) 
+     row = gsub("slope3", "downsloping peak exercise ST segment", row) 
+     row = gsub("chol", "serum cholestoral", row) 
+     row = gsub("exang", "exercise induced angina", row) 
+     row = gsub("restecg2", "restec: showing left ventricular hypertrophy 
+     by Estes criteria", row) 
+     row = gsub("restecg1", "restec: having ST-T wave abnormality", row) 
+     row = gsub("fbs1", "fasting blood sugar > 120 mg/dl", row) + }