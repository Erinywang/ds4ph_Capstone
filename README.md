# Cardic Health Assessment Tool
--- 
**Creators: Yiran Wang, Ziyan Xu**

**Link to Live Dashboard:** <a href="https://erinywang.shinyapps.io/CardicFinal/" target = "_blank"> Cardic Health Assessment Tool</a>

**Link to raw dashboard code:** <a href = "https://github.com/ds4ph-bme/capstone-project-Erinywang/blob/main/CardicFinal.Rmd" target = "_blank"> Raw Code</a>

**Link to Video:** <a href = "                 " target = "_blank"> Video</a>


---
### Description of our project 
Cardiovascular disease describes a range of conditions that affect your heart. 
According to CDC, the most common type of heart disease in USA is coronary artery disease (CAD). 
Due to the complexity of our biological systems and environmental stressors, 
the risk factor of cardiovascular disease range from diabetes which coorelate with blood sugar level, 
overweight and//or obesity, and unhealthy life style such as physical inactivity, excessive alcohol use, and cigarette use.

For this capstone project our team is intended to construct a regression model based on a dataset 
which includes 12 variables of cardiovascular disease related risk factors, the sample size is 70000 in total.

There are 3 types of input features:
Objective: factual information;
Examination: results of medical examination;
Subjective: information given by the patient.

---
### Quality details
The main function of the app is to generate the probability of having cardiovascular disease given the user input variables
and a lasso regression model generate from a large dataset. 
The app uses age-based mean for user input if the variable is unknown for the user.

We attempted to test both generalized, multivariable linear model as well as a Lasso regression model, 
and selected the desired model for prediction based on accuracy, sensitivity, and specificity of each model. 
The second part of the app includes lists the coefficients of the each variables and the evaluation outcomes for both regression models.

On a supplementary page, an explanation of each variable is listed, as well as a brief introduction to the dataset. 
Digital and graphical data representation are performed, showing a heatmp coorelation of all the variables listed on the dataset,
and a countplot of disease outcome seperated by sex.

---
### Division of group work
Yiran Wang:

Ziyan Xu:
