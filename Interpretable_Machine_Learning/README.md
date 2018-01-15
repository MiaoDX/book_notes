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
