::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module C: SLR Hypothesis Testing**]{style="color: royalblue"}
:::

::: frame
Review and Preview Suppose we have $n$ (sample size) pairs of data
$(X_i,Y_i),i=1\dots,n$ $X$'s are fixed values $Y$'s are randomly
selected from the population at a given $X$ value We assume a linear
relationship $Y_i=\beta_0+\beta_1X_i+\epsilon_i$,
$\epsilon_i\sim (0,\sigma^2)$ The errors $\epsilon_i$ are at least
uncorrelated Given the data we can estimate $\beta_0,\beta_1$
$\widehat{\beta}_0 =\overline{Y}-\widehat{\beta}_1\overline{X}$
$\widehat{\beta}_1 = \frac{SSXY}{SSX}$ Because the values of
$\widehat{\beta}_0,\widehat{\beta}_1$ depend on the particular random
sample drawn from the population, these quantities are considered random
variables (estimators). Once we "plug in\" observed data, we have
estimates.
:::

::: frame
Review and Preview A typical goal of the analysis is to infer (draw
inference on) the values of $\beta_0,\beta_1$ supported by the data
(point and interval estimates), as well as test if particular values of
$\beta_0,\beta_1$ are consistent with the data (hypothesis testing where
e.g., $H_0:\beta_1=b_1$, and $b_1$ is a given constant such as 0). To
draw inference (interval estimates or tests) we need to know the
sampling distribution of the estimators
$\widehat{\beta}_0,\widehat{\beta}_1$, i.e., [What are the average
values]{.underline} of $\widehat{\beta}_0,\widehat{\beta}_1$ if we were
able to take repeated samples of the population [How much
variation]{.underline} is there in the values of
$\widehat{\beta}_0,\widehat{\beta}_1$ from one random sample to another
Given the model assumptions, we can derive Average values:
$E[\widehat{\beta}_0]=\beta_0$, $E[\widehat{\beta}_1]=\beta_1$
Variation:
$Var(\widehat{\beta}_0)=\sigma^2(\frac{1}{n}+\frac{\bar{X}^2}{SSX})$,
$Var(\widehat{\beta}_1)=\frac{\sigma^2}{SSX}$
:::

::: frame
Review and Preview Since $E[\widehat{\beta}_0]=\beta_0$ and
$E[\widehat{\beta}_1]=\beta_1$, we know that the estimators (formulas)
will give estimates that are centered at the true values.

::: columns
::: column
0.3

::: center
![image](pic/Rplot){height="1.1in"}
:::
:::

::: column
0.7 Histogram of observed values of $\widehat{\beta}_1$ if we took many
repeated samples from the population Since we have only one particular
dataset (sample), we are only able to observe one value of the slope,
not the whole distribution
:::
:::

The formulas for $Var(\widehat{\beta}_0),Var(\widehat{\beta}_1)$ tell us
how much spread there is in this histogram. However, the formulas also
involve $\sigma^2$ (the variance of errors). So we further estimate
$\sigma^2$ before drawing inference. We do this by "plug in\" an
estimate of $\sigma^2$, specifically
$\widehat{\sigma}^2=MSE=\frac{\sum_{i=1}^n(Y_i-\widehat{Y}_i)^2}{n-2}$
Hence
$\widehat{Var}(\widehat{\beta}_0)=\widehat{\sigma}^2(\frac{1}{n}+\frac{\bar{X}^2}{SSX})=MSE(\frac{1}{n}+\frac{\bar{X}^2}{SSX})$
[Hence]{style="color: white"}
$\widehat{Var}(\widehat{\beta}_1)=\frac{\widehat{\sigma}^2}{SSX}=\frac{MSE}{SSX}$
:::

::: frame
Review and Preview Note that all the above estimators are derived
without assuming independence or normality

One additional piece of information needed is the shape of the
histogram, i.e., the distribution of $\widehat{\beta}_1$,
$\widehat{\beta}_0$.

Note that we can re-write
$\widehat{\beta}_1=\frac{SSXY}{SSX}=\frac{\sum_{i=1}^n(X_i-\overline{X})Y_i}{SSX}$\
[$\widehat{\beta}_1$]{style="color: white"}$=\sum_{i=1}^nw_{1i}Y_i$,
where $w_{1i}=\frac{X_i-\overline{X}}{SSX}$
$\widehat{\beta}_0=\overline{Y}-\widehat{\beta}_1\overline{X}=\sum_{i=1}^n
    \frac{1}{n}Y_i-\sum_{i=1}^nw_{1i}Y_i\overline{X}=\sum_{i=1}^n(\frac{1}{n}-w_{1i}\overline{X})Y_i$\
[$\widehat{\beta}_1$]{style="color: white"}$=\sum_{i=1}^nw_{0i}Y_i$,
where $w_{0i}=\frac{1}{n}-w_{1i}\overline{X}$

Therefore, $\widehat{\beta}_1$ and $\widehat{\beta}_0$ are linear
combinations of $Y_i$
:::

::: frame
Review and Preview Under LINE, $Y_i\stackrel{i.i.d}{\sim}N(0,\sigma^2)$.
Thus $\widehat{\beta}_1$ and $\widehat{\beta}_0$ also follow normal
distributions (linear combination of normal is normal). That is,
$\boxed{\widehat{\beta}_1\sim N(\beta_1,\frac{\sigma^2}{SSX}),\; \widehat{\beta}_0\sim N(\beta_0,\sigma^2(\frac{1}{n}+\frac{\bar{X}^2}{SSX}))}$
Hence
$\frac{\widehat{\beta}_1-\beta_1}{\sqrt{{\sigma^2}/{SSX}}}\sim N(0,1)$
However, $\sigma^2$ is unknown and is estimated by
$\widehat{\sigma}^2=MSE$. Hence we need to understand what is the
distribution of $\frac{\widehat{\beta}_1-\beta_1}{\sqrt{MSE/{SSX}}}$
:::

::: frame
Outline

Topics:

Hypothesis testing

Testing slope, intercept parameters

Sums of squares

ANOVA table

Examples

Text (MPV, 5th ed): 2.3, 2.6, 2.7
:::

::: frame
Properties of Estimators

::: columns
::: column
0.5 $\widehat{\beta}_1=\frac{SSXY}{SSX}=\sum_{i=1}^nw_{1i}Y_i$, where
$w_{1i}=\frac{X_i-\overline{X}}{SSX}$ $E[\widehat{\beta}_1]  =\beta_1$
$Var(\widehat{\beta}_1) =  \frac{\sigma^2}{SSX}$
$\widehat{\beta}_1\sim N(\beta_1,\frac{\sigma^2}{SSX})$
:::

::: column
0.47

$\widehat{\beta}_0=\overline{Y}-\widehat{\beta}_1\overline{X}=\sum_{i=1}^nw_{0i}Y_i$,
where $w_{0i}=\frac{1}{n}-w_{1i}\overline{X}$
$E[\widehat{\beta}_0] = \beta_0$
$Var(\widehat{\beta}_0)  = \sigma^2\left\{\frac{1}{n} +
\frac{\overline{X}^2}{SSX} \right\}$
$\widehat{\beta}_0\sim N(\beta_0,\sigma^2(\frac{1}{n}+\frac{\bar{X}^2}{SSX}))$
:::
:::

$\widehat{\sigma}^2=\frac{\sum_{i=1}^n(Y_i-\widehat{Y}_i)^2}{n-2}=\frac{SSE}{n-2}=MSE$;
$E[\widehat{\sigma}^2]=  \sigma^2$ $\widehat{\beta}_0$ and
$\widehat{\beta}_1$ are normally distributed under LINE Because they are
linear combinations of $Y_i$ $SSE/\sigma^2$ follows a $\chi^2_{n-2}$
distribution (will be shown in Module F)
:::

::: frame
Precision of Slope Estimator Recall:
$Var(\widehat{\beta}_1)=\sigma^2/SSX$,
$\widehat{Var}(\widehat{\beta}_1)=MSE/SSX$ precision of
$\widehat{\beta}_1$ increases as variability in the $X$ covariate
increases Compare two studies:

::: columns
::: column
0.5 Study #1: $SSX$ is quite large
:::

::: column
0.5 Study #2: $SSX$ is quite small
:::
:::

Q: For which study should $\widehat{\beta}_1$ be more precise?
:::

::: frame
[**Hypothesis Testing** ]{style="color: royalblue"}
:::

::: frame
Review in Module A: t Distribution

If $Z\sim \mbox{N}(0,1)$ and $S^2\sim \chi^2_{df}$ and $Z$ and $S^2$ are
independent, then $$\begin{aligned}
\frac{Z}{\sqrt{S^2/df}} & \sim & t_{df} \nonumber
\end{aligned}$$

Symmetric, centered at 0,
$t_{df} \stackrel{df\rightarrow \infty}{\rightarrow} \mbox{N}(0,1)$

Note that $\widehat{\beta}_1\sim N(\beta_1,\frac{\sigma^2}{SSX})$ and
$SSE/\sigma^2\sim\chi^2_{n-2}$ under LINE
$Z=\frac{\widehat{\beta}_1-\beta_1}{\sqrt{\frac{\sigma^2}{SSX}}}\sim N(0,1)$,
$S^2=\frac{SSE}{\sigma^2}\sim \chi^2_{n-2}$, and
$S^2/(n-2)=\frac{MSE}{\sigma^2}$
$$\boxed{\frac{\widehat{\beta}_1-\beta_1}{\sqrt{\frac{\sigma^2}{SSX} \frac{MSE}{\sigma^2}}}=\frac{\widehat{\beta}_1-\beta_1}{\sqrt{ {MSE}/{SSX} }}\sim t_{n-2}}\label{tdist}$$
:::

::: frame
Hypothesis Testing: General General procedure for hypothesis testing:

Pose $H_0$ (and $H_1$)

Set up an appropriate test statistic: involves parameter of interest
computable using observed data tractable sampling distribution

Compute test statistic using observed data

Pre-specify significant level $\alpha$ (often $\alpha=0.05$)

Determine either:

rejection region method: whether test statistic falls in rejection
region $p$-value method: whether $p$-value $<\alpha$

CI method: if null value falls in confidence interval (CI)

Translate "answer\" back to the language in which question was initially
posed
:::

::: frame
Hypothesis Testing: Slope To test $H_0:\beta_1=0$, we can use the
following statistic: $$\begin{aligned}
T  =%= \frac{\widehat{\beta}_1}{{SE}(\widehat{\beta}_1)}=
  \frac{\widehat{\beta}_1}{\sqrt{\widehat{Var}(\widehat{\beta}_1)}} = \frac{\widehat{\beta}_1}{\sqrt{MSE/SSX}}&
\sim &  t_{n-2} \nonumber
\end{aligned}$$

Three different ways to conduct this hypothesis test rejection region
method; $p$-value method; CI method
:::

::: frame
1. Rejection Region Method Recall: $H_0: \beta_1=0$ We're assuming a
universe where the null hypothesis is true We look at how
unlikely/extreme the observed data look like

Note: $T$ is the computed value of the test statistic, whereas $t_{df}$
is a $t$-distributed random variable with $df$ degrees of freedom

$t_{df,q}$ denotes the $q$th percentile, for $t_{df}$

Rejection Region Method Determine the cut-point(s) for a given
significance level $\alpha$ Cut-point(s) is $t_{df,q}$, $q=1-\alpha$ or
$1-\alpha/2$ depending on $H_1$ Reject $H_0$ when $T$ is beyond the
cut-point(s)

"The observed data ($T$) is beyond what we would expect to see
($t_{df}$) if there were truly no association\"
:::

::: frame
1. Rejection Region Method (continued)

Specifying appropriate rejection region

if $H_1: \beta_1>0$, then reject when $[T>t_{n-2,0.95}]$

if $H_1: \beta_1<0$, reject when $[T<-t_{n-2,0.95}]$

if $H_1: \beta_1\neq 0$, reject when $[|T|>t_{n-2,0.975}]$
:::

::: frame
2. $p$ Value Method Recall: $H_0: \beta_1=0$ We're assuming a universe
where the null hypothesis is true $p$-value is the probability of data
(not probability of the hypothesis) $p$ value is the probability of
getting results at least as extreme as the ones you observed *under the
null* $p$ value does not tell you the probability that the null is false
$p$ Value Method First, compute $p$-value if $H_1: \beta_1>0$, then
$p=P(t_{n-2}>T)$ if $H_1: \beta_1<0$, then $p=P(t_{n-2}<T)$ if
$H_1: \beta_1\neq 0$, then $p=2\times P(t_{n-2}>|T|)$ Then, reject $H_0$
when $p<\alpha$
:::

::: frame
3. Confidence Interval Method Generally, only applied when $H_1$ is
two-sided, e.g., $H_1:\beta_1\neq b_1$

$H_0: \beta_1=b_1$ Confidence Interval Method Compute 95% CI for
$\beta_1:$\
$95\%\; \mbox{CI}(\beta_1) = \left(\widehat{\beta}_1 -
t_{n-2,0.975}\sqrt{\frac{MSE}{SSX}}  ,\widehat{\beta}_1 +
t_{n-2,0.975}\sqrt{\frac{MSE}{SSX}}  
\right)$ CI contains values we can't rule out If we repeat sampling a
lot of times, then about 95% of the time the CI contains the unknown
true value (not necessarily your current CI)

Reject $H_0$ when $b_1$ is outside the CI At what level of significance
would $H_0$ be rejected?
:::

::: frame
Interpreting Tests of Slope If $H_0:\beta_1=0$ is rejected, we conclude
that: Slope of regression line is significantly different from 0 $X$ and
$Y$ have a significant linear association If $H_0:\beta_1=0$ fails to be
rejected, we conclude that: We have insufficient evidence that the slope
of the regression line is non-zero $X$ and $Y$ exhibit no significant
*linear* association

Note These tests won't tell you if $H_0$ or $H_1$ is true They tell you
"strength of evidence\": sig or not sig
:::

::: frame
Interpreting Tests of Slope (continued)

On the other hand, must not over-interpret *significant* result for
$\beta_1$

e.g., we may reject $H_0:\beta_1 = 0$, but
$E[Y_i|X_i]=\beta_0+\beta_1 X_i$ need not be the correct model $\ldots$

::: center
![image](pic/fig23){width="3in"}
:::
:::

::: frame
Interpreting Tests of Slope (cont'd) Conversely, if we fail to reject
$H_0:\beta_1=0$, we must not over-interpret the result i.e., $\beta_1$
measures the *linear* association between $X$ and $Y$ relationship need
not be linear perhaps $X$ and $Y$ are strongly associated, but a linear
model inadequately describes the relationship $\ldots$

::: center
![image](pic/fig22){width="3in"}
:::
:::

::: frame
[**Hypothesis Testing: Intercept**]{style="color: royalblue"}
:::

::: frame
Hypothesis Testing: Intercept

Can carry out test of $H_0:\beta_0=b_0$ using t-test: $$\begin{aligned}
T  =  \frac{\widehat{\beta}_0-b_0}{\sqrt{\widehat{Var}(\widehat{\beta}_0)}} & \sim & t_{n-2}
\nonumber
\end{aligned}$$

Can apply $p$ value, CI and rejection rejection-region methods as
described previously
:::

::: frame
Hypothesis Testing: Intercept (continued) Typically, interest lies in
$\beta_1$ rarely are investigators interested in $\beta_0$ Q: Can we
remove $\beta_0$ from the model if\
$H_0: \beta_0=0$ vs. $H_1: \beta_0\neq 0$ fails to be rejected? consider
two models fitted to the same data set: model 1:
$Y_i=\beta_0+\beta_1 X_i + \epsilon_i$ model 2:
$Y_i=\beta_1 X_i + \epsilon_i$

Removing $\beta_0$ in fact means forcing $\beta_0=0$ may distort our
inference on $\beta_1$, with $|\widehat{\beta}_1|$ exaggerated
:::

::: frame
Example 1 A study is conducted to examine the relationship between a
child's age and the amount the child sleeps per night. A sample of n=15
children is collected and the average number of minutes slept per night
over a 1-week period is recorded. A simple linear regression model (of
sleep on age) is fitted, with $\widehat{\beta}_1=1.00$,
$\widehat{Var}(\widehat{\beta}_1)=0.25$ Note: $t_{13,0.975}=2.16$,
$t_{13,0.95}=1.771$, $t_{13,0.90}=1.35$ Note: these are not the data
from the example in Module B Answer the following questions (assume
$\alpha=0.05$).
:::

::: frame
Example 1 (cont'd) A rather skeptical clinician claims that the study
was a waste of money, since it is clear that sleeping patterns are not
associated with age among children. Carry out an appropriate hypothesis
test of this claim.

null hypothesis:\
alternative hypothesis:\
test statistic: reference distribution: rejection region: decision:
:::

::: frame
Example 1 (cont'd) Based on personal experience, a pediatrician believes
that sleep time increases with age. Carry out an appropriate hypothesis
test of this claim.

null hypothesis:\
alternative hypothesis:\
test statistic: reference distribution: rejection region: decision:
:::

::: frame
Example 1 (cont'd) A previous study found that the average amount slept
per night increased by 1.5 minutes per year of age. Conduct a hypothesis
test to determine if the results of the current study are consistent
with this finding.

null hypothesis:\
alternative hypothesis:\
test statistic: reference distribution: rejection region: decision:
:::

::: frame
Example 1 (cont'd) Based on the model, estimate the difference between
5- and 9-year olds with respect to average sleep time.

Compute a 95% confidence interval for the difference between 5- and
9-year olds with respect to average sleep time.
:::

::: frame
Example 1 (cont'd) Compute an interval estimate of $\beta_1$
:::

::: frame
Example 1 (cont'd) A previous study found that the average amount slept
per night increased by 1.6 minutes per year of age. A second similar
study yielded an estimate of 2.0 minutes. In addition, a third study
estimates $\beta_1$ to be 2.5. Conduct hypothesis tests to determine if
the results of the current study are consistent with each of these
findings.
:::

::: frame
[**Sums of Squares: ANOVA Table**]{style="color: royalblue"}
:::

::: frame
SLR: ANOVA Table ANOVA: analysis of variance used when $X$ is
categorical (e.g., gender, hospital, state, etc) method for comparing
category-specific means can be cast as a special case of linear
regression often de-emphasized, since regression methods can handle any
ANOVA analysis ANOVA Table: applicable to linear regression, generally
(regardless of whether $X$ is categorical) summarizes variation in
response variable
:::

::: frame
ANOVA: Sums of Squares

::: columns
::: column
0.5

sum of squares:\
$\boxed{SSY = \sum_{i=1}^n (Y_i-\overline{Y})^2}$

Total variation in $Y$
:::

::: column
0.5 ![image](pic/ss){width="2in"}
:::
:::

::: columns
::: column
0.5 sum of squares:
$\boxed{SSR = \sum_{i=1}^n (\widehat{Y}_i-\overline{Y})^2}$ Variation in
$Y$ explained by the regression model Between group variation (think of
$\widehat{Y}_i$ as group mean)
:::

::: column
0.5 sum of squares:\
$\boxed{SSE = \sum_{i=1}^n (Y_i-\widehat{Y}_i)^2}$ Variation in $Y$
unexplained by the regression model With group variation (think of
$\widehat{Y}_i$ as group mean)
:::
:::
:::

::: frame
Key identity and Degrees of Freedom
$\boxed{\underbrace{\sum_{i=1}^n (Y_i-\overline{Y})^2}_{SSY}=\underbrace{\sum_{i=1}^n (\widehat{Y}_i-\overline{Y})^2}_{SSR}+\underbrace{\sum_{i=1}^n (Y_i-\widehat{Y}_i)^2}_{SSE}}$

total variation = variation explained + unexplained by regression
$\underbrace{dfSSY}_{n-1} = \underbrace{dfSSR}_{1} + \underbrace{dfSSE}_{n-2}$

You will show this in Homework 2. Consider showing
$\sum_{i=1}^nX_i (Y_i-\widehat{Y}_i)  =0$: "the residual and covariate
are orthogonal\"
$\sum_{i=1}^n (Y_i-\widehat{Y}_i) = \sum_{i=1}^n \widehat{\epsilon}_i =0$:
"the residuals sum to zero\" from how $\widehat{\beta}_1$ and
$\widehat{\beta}_0$ are obtained
($\frac{\partial SSE}{\partial \widehat{\beta}_1}=\frac{\partial SSE}{\partial \widehat{\beta}_0}=0$)
:::

::: frame
Mean Square

We define the *mean square* as the ratio of the sum of squares ($SS$) to
its corresponding degrees of freedom ($df$): $$\begin{aligned}
MS(\cdot) \nonumber & = & \frac{SS(\cdot)}{df(\cdot)} \nonumber
\end{aligned}$$

Two most important are mean square error and mean square regression:
$$\begin{aligned}
MSE & = & \frac{SSE}{dfE} \nonumber \\ \nonumber \\ MSR & = &
\frac{SSR}{dfR} \nonumber
\end{aligned}$$

Q: What use did we see previously for MSE?
:::

::: frame
ANOVA Table Typical ANOVA table (e.g., in R output of anova() function)

  -------- -- ---- -- ---- -- ---- -- --- -- ---
                                             
   Source      SS      df      MS      F      p
                                             
                                             
   model                                     
                                             
   error                                     
                                             
   total                                     
                                             
                                             
  -------- -- ---- -- ---- -- ---- -- --- -- ---
:::

::: frame
[**Coefficient of Determination: R Squared** ]{style="color: royalblue"}
:::

::: frame
Coefficient of Determination

Given no linear association: We could simply use the sample mean to
predict $E(Y)$. The variability between the data and this simple
prediction is SSY. Given linear association: Using $X$ permits a
potentially better prediction of $Y$ via $E(Y| X)$ What did we gain by
using $X$? compute the proportion of the total variation that can be
explained by the regression on $X$

Define: *coefficient of determination*,
$$R^2= \frac{SSR}{SSY} %= 1-\frac{SSE}{SSY}$$ "Proportion of variation
in $Y$, explained by the regression model\" $0 \leq R^2 \leq 1$
:::

::: frame
Interpreting R-squared $R^2$ is, actually, comparing the fit of two
different models $SSE$ relates to error from the model: $Y_i=$ $SSY$ is
actually an 'SSE', but from the model: $Y_i=$ It is guaranteed that
$SSY\geq SSE$ question is: how much is the improvement?
:::

::: frame
Coefficient of Determination

Correspondingly, $1-R^2=$ proportion of $Y$'s variability not accounted
for by $Y$'s (linear) association with $X$, $$\begin{aligned}
1-R^2 & = & \frac{SSE}{SSY}   \nonumber
\end{aligned}$$

If $Y_i=\beta_0+\beta_1X_i$ (note: no error term), then $R^2=1$

$R^2$ must be interpreted with caution e.g., suppose the true underlying
model is $Y_i=\beta_0+\beta_1X_i^2+\epsilon_i$

if the model $E[Y_i]=\beta_0+\beta_1X_i$ is fitted, $R^2$ could be very
low, even though $X$ is a predictor of $Y$
:::

::: frame
$R^2$ (continued) $R^2$ equals the squared sample correlation between
$Y$ and $\widehat{Y}$

Recall Module A: sample correlation
$$\widehat{corr}(X,Y) = \frac{SSXY}{\sqrt{SSX\cdot SSY}}$$

then $R^2=\widehat{corr}(Y,\widehat{Y})^2$

Note: although related, $R^2$ and $\widehat{\beta}_1$ are measuring
different entities

$R^2$: reflects fit of model

$\widehat{\beta}_1$: reflects magnitude $(X,Y)$ association
:::

::: frame
[**F Test: Using Sums of Squares** ]{style="color: royalblue"}
:::

::: frame
Review in Module A: F Distribution

If $X_1^2\sim \chi^2_{df1}$ and $X_2^2\sim \chi^2_{df2}$, where
$X_1^2\perp X_2^2$, then: $$\begin{aligned}
\frac{X_1^2/df1}{X_2^2/df2} & \sim & F_{df1,df2} \nonumber
\end{aligned}$$

only takes on positive values

connection to $t$ distribution:

$$\begin{aligned}
\{ t_{df} \}^2 & \stackrel{{\cal D}}{=} & F_{1,df} \nonumber
\end{aligned}$$
:::

::: frame
Hypothesis Testing: SLR

Hypotheses of interest: $H_0:\beta_1=0$ vs. $H_1:\beta_1\neq 0$

Recall: to test $H_0:\beta_1=0$, we can use the following T statistic:
$T  =%= \frac{\widehat{\beta}_1}{{SE}(\widehat{\beta}_1)}=
\frac{\widehat{\beta}_1}{\sqrt{\widehat{Var}(\widehat{\beta}_1)}} = \frac{\widehat{\beta}_1}{\sqrt{MSE/SSX}}
\sim   t_{n-2}$

::: columns
::: column
0.5 The null model ($\beta_1=0$)\
$Y_i=\beta_0+\epsilon_i$ $\widehat{\beta}_0=\overline{Y}$;
$\widehat{Y}_i=\overline{Y}$
$SSE_{H_0} = \sum_{i=1}^n(Y_i-\overline{Y})^2$
:::

::: column
0.5 The alternative model ($\beta_1\neq 0$)\
$Y_i=\beta_0+\beta_iX_i+\epsilon_i$
$\widehat{Y}_i=\widehat{\beta}_0+\widehat{\beta}_1X_i$
$SSE_{H_1} = \sum_{i=1}^n(Y_i-\widehat{Y}_i)^2$
:::
:::

How to use sums of squares to derive a test statistic for
$H_0:\beta_1=0$ vs. $H_1:\beta_1\neq 0$?
:::

::: frame
Constructing Test Statistic Need to construct a statistic which involves
$\beta_1$ and for which we can derive the sampling distribution

We will show in future Modules that under $H_0$

$SSY/\sigma^2\sim\chi_{n-1}^2$

$SSR/\sigma^2\sim\chi_1^2$

$SSE/\sigma^2\sim\chi_{n-2}^2$

$SSR$ and $SSE$ are independent

Key result: ratio of independent scaled (by df) Chi-square random
variates yields an F-distribution
:::

::: frame
Hypothesis Testing (continued)

Since, under $H_0$, $SSR$ and $SSE$ are independent: $$\begin{aligned}
\frac{\frac{SSR}{\sigma^2}}{\frac{SSE}{(n-2)\sigma^2}} & \sim & F_{1,n-2} \nonumber
\end{aligned}$$

Therefore, set $$\begin{aligned}
F=\frac{MSR}{MSE} & \sim & F_{1,n-2} \nonumber
\end{aligned}$$

Implication: we can test $H_0$ by computing $F$, then assessing how
reasonable it is to think that a value at least as extreme as $F$ would
have arisen from the $F_{1,n-2}$ distribution
:::

::: frame
Hypothesis Testing: F Test

Procedure (F test):

compute $F=MSR/MSE$

compute $p=P(F_{1,n-2} \geq F|H_0)$

if $p<0.05$, then reject $H_0$; otherwise, *fail to reject* $H_0$

Notes: $F$ test is two-sided

$F_{1,n-2}$ distribution is one-tailed ($F\geq 0$)

$p$ value and rejection-region methods apply
:::

::: frame
SLR Slope: Revisited Q: How are the $t$ and $F$ tests related? A: in
SLR, they are equivalent.

$$\begin{aligned}
T & = & \frac{\widehat{\beta}_1}{\sqrt{MSE/SSX}}
\sim  t_{n-2} \nonumber \\ \nonumber \\
F & = & \frac{MSR}{MSE}  \sim  F_{1,n-2} \nonumber
\end{aligned}$$

Recall Module A: $\{t_{df}\}^2\equiv F_{1,df}$ Can also show $F=T^2$
When $T$ falls in the rejection region (from $t_{df}$), so will $F$
(from $F_{1,df}$)
:::

::: frame
Hypothesis Testing: $t$ and $F$ tests We have stated that, for
$H_0:\beta_1=0$ vs. $H_1:\beta_1\neq 0$ (two-sided test), the reference
null distributions of the $F$ and $T^2$ statistics are equivalent

Advantage of $t$-test, relative to $F$-test: can perform one-sided tests
e.g., consider $H_0:\beta_1=0$ vs. $H_1:\beta_1>0$

$$\begin{aligned}
t = \frac{\widehat{\beta}_1}{\widehat{SE}(\widehat{\beta}_1)}
\nonumber
\end{aligned}$$

reject $H_0$ when $t>t_{n-2,0.95}$
:::

::: frame
R-squared vs. F

$F$ is a direct function of $R^2$: $$\begin{aligned}
F & = & \left\{ \frac{R^2}{1-R^2} \right\}\times \frac{dfE}{dfR}
\nonumber
\end{aligned}$$

Overall $F$ test is equivalent to testing $R^2$ adjusting for $df$
distribution of $F$ is easier to derive
:::

::: frame
Example 2 A study is carried out in order to evaluate the relationship
between birth weight (measured in g/100) and estriol levels (measured as
mg/24h based on urine samples). Data were collected on a total of n=31
mothers-to-be and their newborns. A straight line regression model was
used for analysis. Read in the data file (estriol1.sas7bdat), which is
stored as a permanent SAS set (using sas7bdat::read.sas7bdat) Obtain a
listing of the variables (using psych::describe) Check if there is any
missing data (using psych::describe) Fit an SLR model (both using lm()
and by hand) Obtain the F statistic and corresponding p value (both
using anova() and by hand)
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
:::

::: frame
:::

::: frame
Example 2 (cont'd) Estimate the marginal variance of birth weight.

Estimate the variance of birth weight, conditional on estriol level.
:::

::: frame
:::

::: frame
Example 2 (cont'd) Does birth weight depend on estriol level? Carry out
an appropriate t test.
:::

::: frame
:::

::: frame
Example 2 (cont'd) Use an F test to determine whether estriol levels are
associated with birth weight.
:::

::: frame
:::

::: frame
Example 2 (cont'd) What percentage of the variation in birth weight is
explained by estriol level?
:::

::: frame
Questions?
:::
