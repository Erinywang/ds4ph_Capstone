library(flexdashboard)
library(tidyverse)
library(ggplot2)
library(reshape2)
library(dplyr)
library(leaflet)
library(plotly)
library(DT)
library(glmnet)

heart = read_csv("https://raw.githubusercontent.com/Erinywang/ds4ph_Capstone/main/heart.csv") %>% 
    rename(rtbp = trtbps, rtecg = restecg) %>%
    mutate(sex = as.factor(sex), cp = as.factor(cp), fbs = as.logical(fbs)) 

htdf = select(heart,-"output")
datatable(htdf)

ht = select(heart, age, sex, cp, rtbp, chol, fbs, output)
dt = sort(sample(nrow(ht), nrow(ht)*.8))
ht_train = ht[dt,]
ht_test = ht[-dt,]

fit = glm(formula = output ~ age + sex + cp + rtbp + chol + fbs,
          family = "binomial", data = ht_train)
summary(fit)

x_train = model.matrix(output ~ age + sex + cp + rtbp + chol + fbs, data = ht_train)
y_train = ht_train$output

fit1 = cv.glmnet(x_train, y_train, alpha = 0.2, family = "binomial", type.measure = "mse")
plot(fit1)

lambda = fit1$lambda.1se
coef(fit1,s = lambda)


x_test = model.matrix(output ~ age + sex + cp + rtbp + chol + fbs, data = ht_test)
y_test = ht_test$output

prob = predict(fit1,newx = x_test,s = lambda, type = "response")

predict = rep(0, nrow(ht_test))
predict[prob > .5] = 1

table(pred = predict,true = ht_test$output)

mean(predict == ht_test$output)


