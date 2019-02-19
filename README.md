# A-comparative-analysis-of-Supervised-Machine-Learning-Algorithms-for-Heart-Disease-Prediction
 Taken four supervised machine learning algorithms and compared their competency in terms of the accuracy achieved by them in predicting 
 the occurrence of heart disease. We compare and contrast the state of art systems used for Heart disease diagnosis that use machine 
 learning. We have taken a set of 14 different attributes to predict heart disease,
 placing regard to the presence of reversible defect in thalassemia and asymptomatic chest pain being present or not.
 We run the chosen algorithms on our datasets and get the collective results. We analyze these results and conclude on which is the best 
 approach in maximum cases for accuracy is disease diagnosis. 
 
 DATASET: Cleveland heart dataset which is available at UCI. 
 VARIABLES: The 14 variables defined are as follows:- 1.age: Age of patient,
 2.sex:Sex,1for male,
 3.cp:chest pain,
 4.trestbps:resting blood pressure,
 5.chol:serum cholesterol,
 6.fbs:fasting blood pressure,
 7.restecg:resting elctroc.result(1 anomality),
 8.thalach:maximum heart rate achieved,
 9.exang:exercise induction angina(1 yes),
 10.oldpeak:ST depression induc.ex,
 11.slope:slope of peak exercise ST.,
 12.ca:number of major vessels,
 13.thal:no explanation provided, but probably thalassemia(3 normal; 6 fixed defect; 7 reversible defect),
 14.num.diagonosis/status of heart disease.
 
 Now the variable that we want to predict is num with value 0, i.e. <50% diameter narrowing and >50% diameter narrowing. 
 Our assumption will be that every value with 0 means that heart is okay, and if the values are 1,2,3,4 then heart disease.
 
Divided the data sets into training and testing data set,30% of data is hold out as testing that is not seen in training data set. During the training of boosted trees and support vector machines cross validation is used to maximize the ROC (parameter tuning) and maximize the result.
Logistic regression performed the best with accuracy .87 while tree based models with different tuning parameters performed slightly worse.
Boosted tree model was used to compare importance of different variables due to easier procedure and it turned out that having a reversible defect thalassemia is most important factor followed by asymptomatic chest pain.
This overall analysis showed working of various machine learning algorithms on heart disease data set. 
