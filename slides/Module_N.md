::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module N: Model Selection**]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

prediction

maximum model

criteria for comparing models

automated model selection

examples

Text (MPV): Chapter 10 Reading: *An Introduction to Statistical Learning
with Applications in R* (ISLR) Chapter 6
:::

::: frame
Model Selection for Inference vs Prediction Model selection for
**Inference**: we want $\widehat{\beta}$ to be close to $\beta$ requires
pre-specified scientific knowledge about the known or hypothesized
causal/biological mechanisms unbiased point estimation & valid inference
(interval estimation and hypothesis testing) Model selection for
**Prediction**: we want the best model for predicting future responses
The focus is more on the fitted model than on the individual parameters:
$\widehat{\beta}$ can even be biased If $p$ is too large, then there can
be overfitting (model follows the noise in *current* observations too
closely) and consequently poor predictions on *future* observations not
used in model training
:::

::: frame
Model Complexity vs Parsimony Suppose we have p = 30 covariates (in the
true model) and n = 50 observations. We could consider the following two
alternatives: We could fit a model using all of the covariates. In this
case, $\widehat{\beta}$ is unbiased for ${\beta}$, but it has very high
variance. We could fit a model using the five strongest predictors. In
this case, $\widehat{\beta}$ will be biased for ${\beta}$, but it will
have lower variance. For prediction, either approach 1 or approach 2
could perform better, depending on the circumstances
:::

::: frame
Training vs Test error

::: center
![image](pic/traintest4){width="3.5in"}
:::
:::

::: frame
Model Selection for Prediction: Big Picture

[$\bullet~~$]{style="color: royalblue"}Model selection methods generally
consist of the same essential steps:

Specify maximum/full model construct a list of all candidate covariates
Specify criterion for comparing competing models how well the model fits
current data (training error) how well the model predicts future
responses (test error) Select best (sequence of) model(s) where "best\"
is defined by (2) All-Possible-subsets Regression (APR) forward,
backward, hybrid Test error estimation and model validation Accuracy of
the predictions when we apply our model to previously unseen test data
not used to train the model indirectly estimate test error: criteria in
(2) directly estimate test error: cross-validation
:::

::: frame
Step 1: Specifying Maximum Model Maximum model: all covariates which are
candidates for inclusion in final model

Necessary to inspect data carefully before choosing candidate
covariates: covariates must be scored on a meaningful scale covariates
must have sufficient variability no covariate should be highly predicted
by remaining covariates (i.e., beware of potential high
$VIF_j=1/(1-R^2_j)$ ahead of time)

"Size" of maximum model ($p$) can be constrained by sample size (e.g.,
$\geq$`<!-- -->`{=html}5 subjects per parameter)

Statisticians and investigators should work closely together in
constructing maximum model
:::

::: frame
Step 3: Select Model Given a Criterion

We will introduce the approaches taking $p$-value as a criterion
Selection by $p$-value is a commonly used and traditional method We will
introduce other criteria (Step 2) in detail later

All-Possible-subsets Regression (APR) having chosen criterion for
comparing models, fit models using all possible combinations of
covariates final model is the one judged to be the *best* based on the
specified criterion

There are many ($2^p-1$) possible combinations of covariates we want to
avoid fitting and comparing all possible models desirable to apply
computationally efficient selection methods
:::

::: frame
Step 3: Classical Automated Selection Three "classical\" variations on
theme: Forward Selection: start with null model ($\beta_0$ only); add
covariates one at a time

Backward Elimination: start with full model; delete covariates one at a
time

Stepwise Regression (hybrid): combination of forward selection and
backward elimination

Other methods (not covered in 650), e.g., the LASSO
:::

::: frame
Algorithm 1: Forward Selection Pre-specify p-value threshold for
inclusion: $p_{\scriptscriptstyle\text{$I$}}$ (e.g., 0.05)

Begin with null model ($\beta_0$ only) $\mathcal{M}_0$

At each step, add the most significant covariate, provided
$p<p_{\scriptscriptstyle\text{$I$}}$ for $k\!=\!0,\dots,p\!-\!1$, fit
$p\!-\!k$ models that add 1 predictor to $\mathcal{M}_k$ e.g., in the
first step, $k=0$, fit $p$ SLRs covariate with lowest $p$-value
($p<p_{\scriptscriptstyle\text{$I$}}$) gets entered into model
$\mathcal{M}_{k\!+\!1}$

Procedure terminates when no more covariate meets the
$p_{\scriptscriptstyle\text{$I$}}$-rule
($p<p_{\scriptscriptstyle\text{$I$}}$) or all covariates have been added
:::

::: frame
Algorithm 2: Backward Elimination Pre-specify p-value for omitting:
$p_{\scriptscriptstyle\text{$O$}}$ (e.g., 0.05)

Begin with maximum model $\mathcal{M}_p$

At each step, eliminate least significant covariate, provided
$p\!>\!p_{\scriptscriptstyle\text{$O$}}$ for $k\!=\!p,\dots,1$, fit $k$
models that remove 1 predictor from $\mathcal{M}_k$ e.g., in the first
step, $k=p$, fit $p$ models each w/ $p-1$ predictors covariate with
highest $p$-value ($p\!>\!p_{\scriptscriptstyle\text{$O$}}$) gets
removed to obtain $\mathcal{M}_{k\!-\!1}$

Procedure terminates when no more covariate meets the
$p_{\scriptscriptstyle\text{$O$}}$-rule
($p>p_{\scriptscriptstyle\text{$O$}}$), i.e., all covariates are
significant in the sense that $p<p_{\scriptscriptstyle\text{$O$}}$
:::

::: frame
Algorithm 3: Stepwise Regression Pre-specify
$p_{\scriptscriptstyle\text{$I$}}$ and
$p_{\scriptscriptstyle\text{$O$}}$ satisfying $p_O\geq p_I$

Begin with null model ($\beta_0$ only)

Proceed as in forward selection. At each step:

add most significant covariate, provided
$p<p_{\scriptscriptstyle\text{$I$}}$

then, remove least significant covariate, if
$p>p_{\scriptscriptstyle\text{$O$}}$

Procedure terminates when no more covariates added or deleted

Idea: After adding each new variable, seek to remove one variable that
no longer provide an improvement in the model fit Attempts to more
closely mimic APR while retaining the computational advantages
:::

::: frame
Algorithm 3: Stepwise Regression (continued) Opinion quite varied
regarding appropriate $p_{\scriptscriptstyle\text{$O$}}$ e.g.,
$p_{\scriptscriptstyle\text{$O$}}=0.10$ or $p_O=0.25$
$p_{\scriptscriptstyle\text{$I$}}$ often set to 0.05

Why higher $p_{\scriptscriptstyle\text{$O$}}$: test statistics involve
$\widehat{\sigma}^2$ in current model, which may be an overestimate if
too few covariates in the model consequently, $p$-values may be inflated
and artificially exceed $p_{\scriptscriptstyle\text{$O$}}$
:::

::: frame
Limitations of Classical Automated Selection Greedy search and not
necessarily find the optimal: e.g., best $\mathcal{M}_1$ includes
$\{X_1\}$ but $\mathcal{M}_2$ includes $\{X_2,X_3\}$ sometimes,
covariate is only significant in the presence of others Tend to break
down when: $p$ is very large (e.g., $p>n$, can't do backward
elimination) multicollinearity: large VIFs thus questionable $p$-values

F-tests are problematic both during and after selection: In forward
selection $F$-tests are conservative for early stages at each step,
$\widehat{\sigma}^2$ in denominator of F-statistic is not
$\widehat{\sigma}_{full}^2$ Multiple comparison problem during selection
we ask the same dataset too many questions (hypotheses) and can get a
small $p$-value simply by chance Post-selection inference: F-tests in
the final model are not valid theoretical results for F-test assume $p$
is fixed, but with automated selection we are also "estimating" $p$
:::

::: frame
Implementation of Automated Selection Straightforward in SAS PROC REG
are specified with the SELECTION= option in the MODEL statement In R The
olsrr package, e.g., ols_step_forward_p(), ols_step_backward_p()

Function stepwise() writen by Dr. Paul A. Rubin:
<https://rubin.msu.domains/code/stepwise_demo.nb.html>\
(demo.Rmd uploaded to Canvas, helpful for optional hw11)
:::

::: frame
:::

::: frame
:::

::: frame
:::

::: frame
:::

::: frame
:::

::: frame
:::

::: frame
:::

::: frame
:::

::: frame
Training vs Test error

::: center
![image](pic/traintest4){width="3.5in"}
:::
:::

::: frame
Model Selection for Prediction: Big Picture

[$\bullet~~$]{style="color: royalblue"}Model selection methods for the
purpose of prediction generally consist of the same essential steps:

Specify maximum/full model construct a list of all candidate covariates
Specify criterion for comparing competing models how well the model fits
current data (training error) how well the model predicts future
responses (test error) Select best (sequence of) model(s) where "best\"
is defined by (2) All-Possible-subsets Regression (APR) forward,
backward, hybrid Test error estimation and model validation Accuracy of
the predictions when we apply our model to previously unseen test data
not used to train the model indirectly estimate test error directly
estimate test error: cross-validation
:::

::: frame
Step 2: Criteria for Comparing Models
$R^2$[$=\widehat{corr}(\widehat{Y},Y)^2$: nondecreasing when covariates
are added]{style="color: white"}

$R_a^2$[$= 1-\frac{\widehat{\sigma}^2}{SSY/(n-1)}$: increase or decrease
when covariates added]{style="color: white"} [ $R_a^2$-based model
selection equivalent to MSE-based
($\widehat{\sigma}^2$)]{style="color: white"} $\widehat{\sigma}^2$[:
when we include $X_{p+1}$, $\widehat{\sigma}^2_p=\frac{SSE_p}{n-p}$ vs
$\widehat{\sigma}^2_{p+1}=\frac{SSE_{p+1}\downarrow}{n-p-1\downarrow}$]{style="color: white"}
[decrease in $SSE$ is not offset by corresponding loss of $df_E$
]{style="color: white"}

$PRESS$

Mallows $C_p$ Others: e.g., Akaike information criterion (AIC), Bayesian
information criterion (BIC)
:::

::: frame
Step 2: Criteria for Comparing Models

$R^2=\widehat{corr}(\widehat{Y},Y)^2$: nondecreasing when covariates are
added

$R_a^2$[$= 1-\frac{\widehat{\sigma}^2}{SSY/(n-1)}$: increase or decrease
when covariates added]{style="color: white"} [ $R_a^2$-based model
selection equivalent to MSE-based
($\widehat{\sigma}^2$)]{style="color: white"} $\widehat{\sigma}^2$[:
when we include $X_{p+1}$, $\widehat{\sigma}^2_p=\frac{SSE_p}{n-p}$ vs
$\widehat{\sigma}^2_{p+1}=\frac{SSE_{p+1}\downarrow}{n-p-1\downarrow}$]{style="color: white"}
[decrease in $SSE$ is not offset by corresponding loss of $df_E$
]{style="color: white"}

$PRESS$

Mallows $C_p$ Others: e.g., Akaike information criterion (AIC), Bayesian
information criterion (BIC)
:::

::: frame
Step 2: Criteria for Comparing Models

$R^2=\widehat{corr}(\widehat{Y},Y)^2$: nondecreasing when covariates are
added

$R_a^2= 1-\frac{\widehat{\sigma}^2}{SSY/(n-1)}$: increase or decrease
when covariates added $R_a^2$-based model selection equivalent to
MSE-based ($\widehat{\sigma}^2$) $\widehat{\sigma}^2$[: when we include
$X_{p+1}$, $\widehat{\sigma}^2_p=\frac{SSE_p}{n-p}$ vs
$\widehat{\sigma}^2_{p+1}=\frac{SSE_{p+1}\downarrow}{n-p-1\downarrow}$]{style="color: white"}
[decrease in $SSE$ is not offset by corresponding loss of $df_E$
]{style="color: white"}

$PRESS$

Mallows $C_p$ Others: e.g., Akaike information criterion (AIC), Bayesian
information criterion (BIC)
:::

::: frame
Step 2: Criteria for Comparing Models

$R^2=\widehat{corr}(\widehat{Y},Y)^2$: nondecreasing when covariates are
added

$R_a^2= 1-\frac{\widehat{\sigma}^2}{SSY/(n-1)}$: increase or decrease
when covariates added $R_a^2$-based model selection equivalent to
$\widehat{\sigma}^2$-based $\widehat{\sigma}^2$: when we include
$X_{p+1}$, $\widehat{\sigma}^2_p=\frac{SSE_p}{n-p}$ vs
$\widehat{\sigma}^2_{p+1}=\frac{SSE_{p+1}\downarrow}{n-p-1\downarrow}$
decrease in $SSE$ is not offset by corresponding loss of $df_E$

$PRESS$

Mallows $C_p$ Others: e.g., Akaike information criterion (AIC), Bayesian
information criterion (BIC)
:::

::: frame
Fit v.s. Predictive Criteria $R^2$, $R^2_a$, $\widehat{\sigma}^2$: all
are functions of $\widehat{\epsilon}_i$'s: reflect how well the model
*fits current data* (training error) do not reflect how well the model
*predicts future responses* (test error)

Residuals $\widehat{\epsilon}_i^2$'s may underestimate true errors
$\epsilon_i^2$'s $\widehat{Y}_i$ is not independent of $Y_i$ and may be
artificially drawn towards it (particularly for high influence points)
In fact, one can show that
$SSE=\|\widehat{\boldepsilon}\|^2\leq \|\boldepsilon\|^2$: "The training
error is often overly optimistic -- it underestimates the true error\"

Residuals $\widehat{\epsilon}_i^2$'s (training error) also underestimate
the test errors
:::

::: frame
Model Selection for Prediction: Big Picture

[$\bullet~~$]{style="color: royalblue"}Model selection methods for the
purpose of prediction generally consist of the same essential steps:

Specify maximum/full model Specify criterion for comparing competing
models how well the model fits current data (training error)
$R^2,R^2_{adj},\widehat{\sigma}^2$ [ how well the model predicts future
responses (test error)]{style="color: black"} Select best (sequence of)
model(s) where "best\" is defined by (2) Test error estimation and model
validation [ indirectly estimate test error]{style="color: black"}
directly estimate test error: cross-validation
:::

::: frame
Model Selection for Prediction: Big Picture

[$\bullet~~$]{style="color: royalblue"}Model selection methods for the
purpose of prediction generally consist of the same essential steps:

Specify maximum/full model Specify criterion for comparing competing
models how well the model fits current data (training error)
$R^2,R^2_{adj},\widehat{\sigma}^2$ [**how well the model predicts future
responses (test error)**]{style="color: black"} Select best (sequence
of) model(s) where "best\" is defined by (2) Test error estimation and
model validation [**indirectly estimate test
error**]{style="color: black"} directly estimate test error:
cross-validation
:::

::: frame
Prediction error residuals Deleted residuals (or prediction error
residuals)

\_i(-i)=Y_i-\_i(-i)= where $\widehat{Y}_{i(-i)}$ is the predicted value
for the $i^{th}$ observation from a fitted model where the $i^{th}$
observation was left out Note: now $\widehat{Y}_{i(-i)}$ is independent
of $Y_i$

$\widehat{\epsilon}_{i(-i)}$ also known as "$PRESS$\" residual, denoted
as $PRESS_i$ Rationale: \[leave-one-out\] systematically remove each
observation, pretend it is future data and measure performance of
prediction Instead of defining criteria ($\widehat{\sigma}^2$ and $R^2$)
based on $\widehat{\epsilon_i}^2$, we can use the prediction error
residual $\widehat{\epsilon}_{i(-i)}$ Prediction counterparts of $SSE$
and $R^2$: the $PRESS$ and $R^2_{pred}$
:::

::: frame
Criterion 4. Prediction Sum of Squares (PRESS) Define the $PRESS$
(*prediction sum of squares*) statistic: PRESS & = & \_i=1\^n
\_i(-i)\^2= \_i=1\^n {}\^2 Not necessary to re-fit model Accounted for
high leverage $h_{ii}$ but not high residual Reasonable to select model
with lowest $PRESS$

Another measure, *prediction* $R^2$: R\^2\_pred & = & 1 - $R^2_{pred}$
measures ability to predict *future* responses $R^2$ and $R_a^2$ relate
to model's ability to predict *current* data

This is also known as "leave one out" cross-validation!
:::

::: frame
Residual taxonomy$^1$

::: center
:::
:::

::: frame
Criterion 5. Mallows' $C_p$ Total variation in prediction $\widehat{Y}$
is due to bias and variance: \_p =\_i=1\^n { \_ + \_} $\Gamma_p$
corresponds to a specific model (with $p$ parameters) Mallows' $C_p$ is
an estimate of $\Gamma_p$: C_p = \_p =(\_+\_) $SSE_p$: from the model
being evaluated, underestimates test error
$\widehat{\sigma}_{full}^2=SSE_{\scriptscriptstyle full} /(n-p_{\scriptscriptstyle full})$:
from full (maximum) model Mallows' $C_p$ strikes a balance between bias
and variance Recall: $p\uparrow$, Var($\widehat{Y}$)$\uparrow$. In
$C_p$: when $p\uparrow$, $SSE_p\downarrow$ but
$2p\widehat{\sigma}_{full}^2\uparrow$ (penalty) The model with the
smallest $C_p$ is selected
:::

::: frame
Other Criterion: e.g. AIC and BIC

Recall Mallows' $C_p$\
$C_p = \widehat{\Gamma}_p =\frac{1}{n}(\underbracket{SSE_p}_\text{training error of current model}+\underbracket{2p\widehat{\sigma}_{full}^2}_\text{adjustment for underestimation})$

Akaike information criterion (AIC): $2\log \mathcal{L}+2p$\
$AIC = \frac{1}{n{\color{royalblue}\widehat{\sigma}_{full}^2}}(\underbracket{SSE_p}_\text{training error of current model}+\underbracket{2p\widehat{\sigma}_{full}^2}_\text{adjustment for underestimation})+c$
Equivalent to Mallows' $C_p$ in MLR with Normal data Bayesian
information criterion (BIC)\
$BIC = \frac{1}{n{\color{royalblue}\widehat{\sigma}_{full}^2}}(\underbracket{SSE_p}_\text{training error of current model}+\underbracket{{\color{royalblue}\log(n)}p\widehat{\sigma}_{full}^2}_\text{adjustment for underestimation})+c
%\nonumber\ee$ Places a heavier penalty on models with large $p$ because
$\log(n)>2$ for any $n>7$
:::

::: frame
Model Selection for Prediction: Big Picture

[$\bullet~~$]{style="color: royalblue"}Model selection methods for the
purpose of prediction generally consist of the same essential steps:

Specify maximum/full model Specify criterion for comparing competing
models how well the model fits current data (training error)
$R^2,R^2_{adj},\widehat{\sigma}^2$ [how well the model predicts future
responses (test error)]{style="color: black"} $C_p$, AIC, BIC, etc.
Select best (sequence of) model(s) where "best\" is defined by (2) Test
error estimation and model validation [ indirectly estimate test
error]{style="color: black"} via an adjustment to the training error to
account for overfitting directly estimate test error: cross-validation
:::

::: frame
Use of Criteria: Example True model:
$Y=1 + 0.1 *X_1 + 0.2*X_2 + 0.01*X_3 + 0.4*X_4  + \epsilon$,
$\epsilon \sim N(0,0.2)$ Suppose true model is unknown, select best
*predictive* model Measures for 3 possible models:

::: center
  $X$'s      $R^2$    $\widehat{\sigma}^2$   $R^2_a$   $R^2_{pred}$   $C_p$
  --------- -------- ---------------------- --------- -------------- -------
  2,4        0.2896         0.04186          0.2882       0.2852      34.4
  2,4,1      0.3123         0.04057          0.3102       0.3065       3.3
  2,4,1,3    0.3125         0.04059          0.3098       0.3055       5.0
:::

Note that even though $X_3$ is in the true model, its effect is not
large enough to offset the 'costs' to estimate it
:::

::: frame
Step 4: Model Validation Ultimately, desirable to test final model on
external data set or newly collected data Use existing data to develop
model Assess model's predictive ability in new data is a useful
alternative
:::

::: frame
Step 4: Model Validation: K-fold cross-validation Split data into $K$
equally sized data sets called $\boldD_1,\dots,\boldD_K$ For
$j=1,\dots,K$, train model on $\boldD_{(-j)}$ data; test on $\boldD_j$;
Average the measures of predictive ability across the $K$ pieces

::: center
![image](pic/kfolds.png){height="1.9in"}
:::

$K=n$: "leave one out" cross-validation, e.g., $PRESS$ statistic $K=2$:
"data spiting\": half training and half testing data
:::

::: frame
Model Selection for Prediction: Big Picture

[$\bullet~~$]{style="color: royalblue"}Model selection methods for the
purpose of prediction generally consist of the same essential steps:

Specify maximum/full model

Specify criterion for comparing competing models [**how well the model
fits current data (training error)**]{style="color: royalblue"}
$R^2,R^2_{adj},\widehat{\sigma}^2$

[**how well the model predicts future responses (test
error)**]{style="color: royalblue"} $PRESS,~C_p$, AIC, BIC Select best
(sequence of) model(s) where "best\" is defined by (2) Test error
estimation and model validation [**indirectly estimate test
error**]{style="color: royalblue"} via an adjustment to the training
error to account for overfitting $C_p$, AIC, BIC, etc. [**directly
estimate test error: cross-validation**]{style="color: royalblue"}
$PRESS$ & k-fold cross validation
:::

::: frame
![image](pic/thankyou.jpg){height="2in"}
:::

::: frame
Optional Readings: True Errors vs. Residuals Claim:
$||\widehat{\boldepsilon} ||^2 \leq  ||{\boldepsilon} ||^2$ Proof: & = &
(**I** - )\
& = & (**I** - ) (+ )\
& = & - + (**I** - )\
& = & (**I** - ) Therefore, \|\| \|\|\^2 & = & {(**I** - ) }\^T (**I** -
)\
& = & \^T (**I** - )\
& = & \|\| \|\|\^2 - \^T Note:
${\boldepsilon}^T {\boldH}{\boldepsilon}={\boldepsilon}^T {\boldH^T\boldH}{\boldepsilon} = ({\boldH}{\boldepsilon )}^T ({\boldH}{\boldepsilon}) ={(\boldepsilon^*)}^T (\boldepsilon^*) \geq  0$
where $\boldepsilon^* = {\boldH} \boldepsilon$
:::

::: frame
Optional Readings: Justification of Mallows' $C_p$ \_p &= & { \_i=1\^n
\[E(\_i - Y_i)\]\^2 + \_i=1\^n Var( \_i)}\
&= &{\_i=1\^n \[E(\_i)\]\^2 + \^2 p}

Recall $\frac{SSE_p}{\sigma^2}\sim \chi^2_{n-p,\lambda}$ with mean =
$n-p + \lambda$, i.e.,
$$E\left[\frac{SSE_p}{\sigma^2}\right] = (n-p) + \frac{\sum_{i=1}^n [E(\widehat{\epsilon}_i)]^2}{\sigma^2}$$

Thus, we can re-write: \_p &= &E- (n-p) + p
:::

::: frame
Optional Readings: Justification of Mallows' $C_p$ (continued) \_p &=
&E- (n-p) + p

Mallows' $C_p$ is a plug-in estimator: C_p \_p&=& -(n-p)+ p\
&= &-(n-p)+ p\
& = & p + { -1 }(n-p)
:::

::: frame
Questions?
:::
