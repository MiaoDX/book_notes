Interpretable Machine Learning
A Guide for Making Black Box Models Explainable.
Christoph Molnar

## 1.1

> Model-agnostic methods work by changing the input of the machine learning model and measuring changes in the output.

# Chapter 2 Interpretablity

> Interpretability is the degree to which a human can understand the cause of a decision -- Miller, Tim. 2017. “Explanation in Artificial Intelligence: Insights from the Social Sciences.” arXiv Preprint arXiv:1706.07269.

> .. distinguish between the terms interpretability/explainability and explanation. Making a machine learning interpretable can, but does not necessarily have to, imply providing a (human-style) explanation of a prediction.

## 2.4 Human-style Explanations

Human prefer short explanations, through explanations are not necessary except when we want a causal attribution or debugging the model.

> The realization that contrastive explanations matter, is an important finding for explainable machine learning.

> Explanations focus on the abnormal.


## 4.1 Linear Model

> If you suspect interactions of features or a non-linear association of a feature with the target value, then you can add interaction terms and use techniques like regression splines to estimate non-linear effects.

Not so sure of the `regression spline` technology.

> If you have repeated measurements, like multiple records per patient, the data points are not independent from each other and there are special linear model classes **to deal with these cases**, like mixed effect models or GEEs.

$R^2$. 
> It isn’t helpful to do interpretation on a model with very low $R^2$ or $\overline{R}^2$, because basically the model is not explaining much of the variance, so any interpretation of the weights are not meaningful.

### 4.1.6 Coding Categorical Features

So, there are various other ways to present the categorical features.

### 4.1.10 Sparse linear models

> You might even get into a situation with more features than instances and you can’t fit a standard linear model at all.

So we should prune some of the features when necessary.

## 4.2 Logistic Regression

> Logistic regression is the linear regression model made fit for classification problems.

It should be paid attention that, even with `regression` in name, logistic regression is for `classification` problem. Its output is always between 0 and 1 (a probability), with a threshold, we can do classification easily.

## 4.3 Decision Tree

### 4.3.4 Disadvantages

Can not deal well with linear relationships; can be quite **unstable**.

## 4.4 RuleFit

> The end product of the RuleFit procedure is a linear model with additional fancy features (the decision rules). 
> RuleFit consists of two components: The first component produces “rules” from decision trees and the second component fits a linear model with the original features and the new rules as input (hence the name “RuleFit”).

### 4.4.3 Theory

Yep, skipped again.

# Chapter 5 Model-Agnostic Methods

![Explainable machine learning -- Model agnostic methods](pics/ch5_model_agnositc.png)

The model agnostic methods are just a higher level, after the black-box machine learning methods.

## 5.1 Partial Dependence Plot (PDP)

Deal with one particular feature, 
> can show if the relationship between the target and a feature is linear, monotonic or something else.

## 5.2 Permutation Feature Importance

## 5.3 Local Surrogate Models (LIME)

[marcotcr/lime, local interpretable model-agnostic explanations](https://github.com/marcotcr/lime)

> LIME does a good job in creating selective explanations, which humans prefer. That’s why I see LIME more in applications where the recipient of the explanation is a lay-person or someone with very little time. It is not sufficient for complete causal attributions, so I don’t see LIME in compliance scenarios, where you are legally required to fully explain a prediction. 