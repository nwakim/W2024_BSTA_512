::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module B: Simple Linear Regression**]{style="color: royalblue"}
:::

::: frame
Outline Announcements Module B Topics: Simple linear regression (SLR)
model

Interpretation of parameters

Parameter estimation

Properties of least squares estimators

Estimation of variance

Relevant readings from Textbook: Chapters 1 and 2
:::

::: frame
[**Simple Linear Regression (SLR) Model** ]{style="color: royalblue"}
:::

::: frame
Simple Linear Regression Model: $$\begin{aligned}
Y_i & = & \beta_0 + \beta_1X_i + \epsilon_i \nonumber
\end{aligned}$$ $Y_i$: response, dependent variable

$\beta_0$: intercept (fixed, unknown)

$\beta_1$: slope (fixed, unknown)

$X_i$: covariate, predictor variable (fixed)

$\epsilon_i$: error term (random, unobservable)

Observed are the ordered pairs: ($X_i,Y_i$), for $i=1,\ldots,n$
:::

::: frame
"Linear" Models "Linearity" refers to the fact that the mean can be
written as a weighted sum of *parameters*:

i.e., $E[Y_i|X_i]=\sum_{k=1}^q w_k\beta_k$

Examples of linear models (covered in more detail later):
$E[Y_i|X_i] = \beta_0+ \beta_1X_i^2$

$E[Y_i|X_i] = \beta_0+ \beta_1\exp(X_i)$

$E[Y_i|X_i] = \beta_0+ \beta_1\log(1+X_i)$

Examples of non-linear models (not covered in this class):

$E[Y_i|X_i] = \exp\{\beta_0+ \beta_1X_i\}$

$E[Y_i|X_i] = [1+ \exp\{-(\beta_0+ \beta_1X_i)\}]^{-1}$

$E[Y_i|X_i] = \beta_0+ \exp\{\beta_1X_i\}$
:::

::: frame
Assumptions for estimation (not sufficient for inference)

Assumptions about errors: First and second moment:
$\epsilon_i\sim (0,\sigma^2)$ for all $i$ Uncorrelated:
$cov(\epsilon_i,\epsilon_j)=E[\epsilon_i\epsilon_j] =0$, for all $i$,
$j$, $i\neq j$ Uncorrelated $\not\Rightarrow$ independence Later we will
consider inference (hypothesis testing), and we will further assume that
$\epsilon_i\stackrel{i.i.d}{\sim} N(0,\sigma^2)$ (independence and
normality)

These imply assumptions about distribution of $Y_i$ at each $X_i$
$E[Y_i\mid X_i]=\beta_0+\beta_1X_i$ (depends on $X_i$)
$Var(Y_i\mid X_i)=Var(Y_i)=\sigma^2$ (does not depend on $X_i$) $Y_i$
and $Y_j$ are uncorrelated, $i\neq j$
:::

::: frame
A full list of assumptions (LINE) for estimation and inference

$Y_i=\beta_0+\beta_1X_i+\epsilon_i$ \"Linearity\": the model is
correctly specified $E[Y_i|X_i]=\beta_0+\beta_1X_i$

$\epsilon_i \ind \epsilon_j$, $i\neq j$ \"Independence\" hence
$Y_i \ind Y_j$, $i\neq j$

$\epsilon_i\sim N(0,\sigma^2)$ \"Normality\": errors follow normal
distribution w/ mean $0$, variance $\sigma^2$ hence
$Y_i\mid X_i\sim N(\beta_0+\beta_1X_i,\sigma^2)$

$\sigma^2_i=Var[Y_i|X_i]=\sigma^2<\infty$ \"Equal variance\": errors
have equal variance $\sigma^2$
:::

::: frame
Fixed Design $X_i$'s treated as fixed constants, throughout this course
Think of sampling $Y$ at each level of $X$ In reality, $X_i$ may be
random: measurement error (e.g., body weight)

scale not perfectly balanced and/or natural fluctuation (e.g., body
weight; water retention)

Preferably, randomness in $X_i$ is small (negligible)
:::

::: frame
Model Components

Relationship between $X$ and mean of $Y$ is described by a line:
$$E[Y_i|X_i]=\beta_0+\beta_1X_i \;\;(\epsilon_i=Y_i-E[Y_i|X_i])$$

A line is determined by two numbers: intercept and slope

$\beta_0=E[Y_i|X_i=0]$ = intercept of regression line "Mean weight for
individuals at age zero\" $\beta_1=\Delta E[Y] /\Delta X$= slope of
regression line Change in mean of $Y$ per unit increase in $X$
$$\beta_1 = \frac{E[Y_i|X_i=x_2]-E[Y_i|X_i=x_1]}{x_2-x_1}$$
:::

::: frame
Model Components

Suppose two subjects (e.g., $i$=1, $i$=2) differ by 1 unit of $X_1$
(age); the difference in $E[Y]$ (mean weight) will be $\beta_1$, since
e.g. $E[Y_1|X_1=7]  =  \beta_0 + \beta_1 7$\
$E[Y_1|X_1=6]  =  \beta_0 + \beta_1 6$ subtracting the right and left
sides gives $\beta_1$ Are the above results dependent on the specific
$X_i$ values used? Linearity assumes: "for every unit change in $X$, the
mean difference in $Y$ is constant\", regardless of the value of $X$
:::

::: frame
Model Components $\beta_0$, $\beta_1$ are scale-dependent when
interpreting $\beta_0$ and $\beta_1$, units are considered $\beta_1$
reflects the magnitude of the ($X_i,Y_i$) association; often of much
greater inherent interest than $\beta_0$ Notwithstanding, a useful
interpretation of $\beta_0$ is preferable
:::

::: frame
Interpretation example 1 $Y_i=$ serum cholesterol (mg/dL)

$X_i=$ systolic blood pressure (SBP; mm Hg)

Model: $Y_i = \beta_0+\beta_1X_i+\epsilon_i$

$\beta_1=$ mean difference in serum cholesterol (mg/dL) per one unit
higher in SBP (mm Hg)

$\beta_0=$ mean serum cholesterol (mg/dL) for patients with SBP=0 (is
zero SBP possible for live persons?)
:::

::: frame
Interpretation example 2 e.g., study of adult males age 20-39

$Y_i=$ weight (kg)

$X_i=$ age (years)

Model: $Y_i = \beta_0+\beta_1X_i+\epsilon_i$

$\beta_1=$ mean change in weight (kg) per year increase in age

$\beta_0=$
:::

::: frame
Regression: Extrapolation Generally, inference/conclusions should
respect the range of observed covariate values

e.g., return to the age/weight example$\ldots$

Age/weight model which applies to\
$20\leq age \leq 39$ may be quite different from that which applies to
someone age 65 Relationship may no longer be linear

Predictions should generally not be made outside the observed range of
the $X_i$'s ![image](pic/extra2){height="1.4in"}
:::

::: frame
Centering Covariate to make intercept interpretable Original model:
$Y_i=\beta_0+\beta_1 X_i +\epsilon_i$ Define $X_i^*=X_i-\overline{X}$,
where $\overline{X}=n^{-1}\sum_{i=1}^nX_i$

Revised Model: $Y_i=\beta_0^*+\beta_1^*X_i^*+\epsilon_i^*$

We still have: $\epsilon_i^*\sim N(0,\sigma^2)$ The error is unchanged,
i.e., $\epsilon_i^* = \epsilon_i$ Graphically we have a shift in axis:
:::

::: frame
Centering Covariate: Interpretation of Intercept Recall: interpretation
of $\beta_0$ in original model: $E[Y_i|X_i]=\beta_0+\beta_1X_i$, thus,
$\beta_0=E[Y_i|X_i=0]$ "Mean weight for individuals at age zero\" For
the revised model: $E[Y_i|X_i^*]=\beta_0^*+\beta_1^*X_i^*$, thus,
$\beta_0^*=E[Y_i|X_i^*=0]=E[Y_i|X_i=\overline{X}]$

"Mean weight for individuals with average age\"
:::

::: frame
Centering Covariate: Slope Interpretation is unchanged Original model:
$$\begin{aligned}
\beta_1 &  = & \frac{E[Y_i|X_i=x_2 ]-E[Y_i|X_i=x_1]}{x_2-x_1 }
\nonumber
\end{aligned}$$

Centered model: $$\begin{aligned}
\beta_1^* &  = & \frac{E[Y_i|X_i^*=x_2
]-E[Y_i|X_i^*=x_1]}{x_2-x_1 }
\nonumber \\
&  \stackrel{X_i^*=X_i-\overline{X}}{\longeq} & \frac{E[Y_i|X_i=\overline{X}+x_2
]-E[Y_i|X_i=\overline{X}+x_1]}{x_2-x_1 }
\nonumber \\
&  = & \frac{E[Y_i|X_i=\overline{X}+x_2
    ]-E[Y_i|X_i=\overline{X}+x_1]}{(\overline{X}+x_2)-(\overline{X}+x_1) }
\nonumber
\end{aligned}$$
:::

::: frame
[**Parameter Estimation** ]{style="color: royalblue"}
:::

::: frame
Parameter Estimation: Preliminaries Truth $\beta_0$, $\beta_1$: true
parameters, fixed, unknown $E[Y_i|X_i]=\beta_0+\beta_1X_i$: true mean is
not observable $\epsilon_i=Y_i-E[Y_i|X_i]$: true errors, unobservable
Estimators $\widehat{\beta}_0$, $\widehat{\beta}_1$: estimators,
computed using observables
$\widehat{Y}_i=\widehat{E}[Y_i|X_i]=\widehat{\beta}_0+\widehat{\beta}_1X_i$,
estimated mean (fitted value) $\widehat{\epsilon}_i=Y_i-\widehat{Y}_i$,
estimated errors (residuals) Note: textbook uses $e_i$ to denote
estimated errors. I prefer using the hat notation,
$\widehat{\epsilon}_i$, to emphasize it is an $estimated$ error.
:::

::: frame
Parameter Estimation: Deterministic Model Consider a model for
temperature : $C=$ degrees Celsius $F=$ Fahrenheit
$F_i = \beta_0 + \beta_1C_i$ at day $i$

If I give you data about two days: $(C=10, F=50)$ and $(C=20,F=68)$, can
you determine $\beta_0$ and $\beta_1$?
:::

::: frame
Parameter Estimation when there is noise SLR:
$Y_i = \beta_0 + \beta_1 X_i + \epsilon_i$

$\beta_0 + \beta_1 X_i$: mean component (deterministic)

$\epsilon_i$: error component (random)

Impact of noise If there was no $\epsilon_i$, we could use any two
$(X_i,Y_i)$ pairs to estimate $\beta_0$ and $\beta_1$

Due to presence of $\epsilon_i$, estimation is more complicated

Require a method to estimate our parameters which uses [all]{.underline}
data points
:::

::: frame
Method of Estimation Scatter plot of data:

::: center
![image](pic/1){height="1.5in"}
:::

An infinite number of lines of the form $E[Y_i|X_i]=\beta_0+\beta_1X_i$
are available Need to find the line which best fits the data $\ldots$
Need to select 'best' version of ($\widehat{\beta}_0,\widehat{\beta}_1$)
:::

::: frame
Method of Estimation How to find a best-fitting line?

::: center
![image](pic/2){height="1.5in"}
:::

Method: Least Squares Estimation (or OLS: ordinary least squares) Idea:
chooses the line that minimizes the sum of squares of the vertical
distances from the observed points to the line.
:::

::: frame
Least Squares Method The Least Squares Estimators (LSEs) of $\beta_0$
and $\beta_1$ are the estimators which minimize the sum of squares error
(SSE): $$\begin{aligned}
SSE & = & \sum_{i=1}^n \widehat{\epsilon}_i^2 ~~ = ~~~~~~~~~~~~~~\nonumber \\
&  & \nonumber \\
& = & \nonumber
\end{aligned}$$ To minimize $SSE$, find the values of
$\widehat{\beta}_0$ and $\widehat{\beta}_1$ which solve the following
system of equations: $$\begin{aligned}
\frac{\partial SSE}{\partial\widehat{\beta}_0} =0  & &
\frac{\partial SSE}{\partial\widehat{\beta}_1} =0 \nonumber
\end{aligned}$$
:::

::: frame
Least Squares Estimators

$$0=\frac{\partial SSE}{\partial\widehat{\beta}_0} =
-2\sum_{i=1}^n (Y_i-\widehat{\beta}_0-\widehat{\beta}_1X_i)
\label{eq:derbeta0}$$
$$0=\frac{\partial SSE}{\partial\widehat{\beta}_1} =
-2\sum_{i=1}^n X_i(Y_i-\widehat{\beta}_0-\widehat{\beta}_1X_i)
\label{eq:derbeta1}$$
:::

::: frame
Least Squares Estimators From
([\[eq:derbeta0\]](#eq:derbeta0){reference-type="ref"
reference="eq:derbeta0"}) we have:
$$\boxed{\widehat{\beta}_0 =\overline{Y}-\widehat{\beta}_1\overline{X}}\label{beta0}$$

Substitute $\widehat{\beta}_0$ into
([\[eq:derbeta1\]](#eq:derbeta1){reference-type="ref"
reference="eq:derbeta1"}) we get
$$\sum_{i=1}^nX_i(Y_i {\color{red}{ -\overline{Y}+\widehat{\beta}_1\overline{X}}} -
\widehat{\beta}_1X_i) = 0$$ Thus $$\begin{aligned}
\sum_{i=1}^nX_i(Y_i-\overline{Y}) & = & \widehat{\beta}_1
\sum_{i=1}^nX_i(X_i-\overline{X}) \nonumber
\end{aligned}$$ Which gives:
$$\boxed{\widehat{\beta}_1 = \frac{SSXY}{SSX}},\label{beta1}$$ where
$SSXY =
{\sum_{i=1}^n X_i(Y_i-\overline{Y}), \;\;SSX = \sum_{i=1}^n X_i(X_i-\overline{X})}$
:::

::: frame
A little more on $SSXY$ and $SSX$

::: center
$SSXY =
{\sum_{i=1}^n X_i(Y_i-\overline{Y}), \;\;SSX = \sum_{i=1}^n X_i(X_i-\overline{X})}$
:::

Home exercise: Show that $$\begin{split}
SSXY &= \sum_{i=1}^n(Y_i-\overline{Y})(X_i-\overline{X})= n\left\{\overline{X\cdot Y}-\overline{X}\cdot\overline{Y}\right\}\\
SSX &= \sum_{i=1}^n(X_i-\overline{X})^2= n\left\{\overline{X^2}-\overline{X}^2\right\}
\end{split}$$ "The slope is the sample covariance of $X$ and $Y$,
divided by the sample variance of $X$\" Recall
$\text{cov}(X,Y)=E[(X-E[X])(Y-E[Y])]=E[XY]-E[X]E[Y]$ [Recall
]{style="color: white"}$Var(X)=E[(X-E[X])^2]=E[X^2]-E[X]^2$\
Turns out this applies to sample variance and covariance as well.
Helpful to keep in mind that "sum of centered variables is zero\":
:::

::: frame
A little more on $SSXY$ and $SSX$

Home exercise: Show that

"The slope is the sample covariance of $X$ and $Y$, divided by the
sample variance of $X$\", i.e.,
$\widehat{\beta}_1=\frac{\frac{1}{n-1}SSXY}{\frac{1}{n-1}SSX}$, where
$\frac{1}{n-1}SSXY = \frac{1}{n-1}\sum_{i=1}^n(Y_i-\overline{Y})(X_i-\overline{X})$
is the sample covariance
$\frac{1}{n-1}SSX = \frac{1}{n-1}\sum_{i=1}^n(X_i-\overline{X})^2$ is
the sample variance Recall $\text{cov}(X)=E[(X-E[X])(Y-E[Y])]$\
[Recall ]{style="color: white"}$Var(X)=E[(X-E[X])^2]$ Helpful to keep in
mind that "sum of centered variables is zero\":
$\sum_i (Y_i-\overline{Y})=\sum_i (X_i-\overline{X})=0$
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
[**Properties of Least Squares Estimators** ]{style="color: royalblue"}
:::

::: frame
Properties of Estimators (Definitions) Suppose $\widehat{\theta}$ is an
estimator of $\theta$ $\widehat{\theta}$: estimator (random, depends on
random sample of data);

$\theta$: estimand (fixed, generally unknown true value)

Various criteria used to evaluate estimators: Bias:
$\mbox{bias}(\widehat{\theta})=E[\widehat{\theta}]-\theta$ We say
$\widehat{\theta}$ is an unbiased estimator if
$E[\widehat{\theta}]=\theta$

Sampling variance:
$Var(\widehat{\theta})=E[\widehat{\theta}-E(\widehat{\theta})]^2$

Mean squared error:
$mse(\widehat{\theta})=Var(\widehat{\theta}) + \mbox{bias}(\widehat{\theta})^2$
Often there is a trade-off between bias and sampling variance, which is
measured by the MSE

Our goal in the next few slides is to find:
$E(\widehat{\beta}_0),~E(\widehat{\beta}_1),~Var(\widehat{\beta}_0),~Var(\widehat{\beta}_1)$
:::

::: frame
Recall the expected value of sums of random variables, from Module A:
Let $a_1,\ldots,a_n$ be constants. Recall:

$E[a_iY_i]=a_iE[Y_i]$
$$E\left[\sum_{i=1}^n a_i Y_i \right] = \sum_{i=1}a_i E[Y_i]\label{sumofrv}$$
Note: result does not require independence among the $Y_i$'s
:::

::: frame
Expected value of $\widehat{\beta}_1$ Claim: $\widehat{\beta}_1$ is an
unbiased estimator of $\beta_1$, i.e., $E(\widehat{\beta}_1)=\beta_1$
Proof:
:::

::: frame
Expected value of $\widehat{\beta}_0$ Claim: $\widehat{\beta}_0$ is an
unbiased estimator of $\beta_0$, i.e., $E(\widehat{\beta}_0)=\beta_0$
Proof: $$\begin{aligned}
E[\widehat{\beta}_0] & \stackrel{(\ref{beta0})}{\longeq} &
E[\overline{Y}-\widehat{\beta}_1\overline{X}]\stackrel{ \text{E(sum)=sum(E)} }{\longeq}E[\overline{Y}] - E[\widehat{\beta}_1\overline{X}]   \\
& \longeq &
n^{-1}\sum_{i=1}^nE[Y_i] - E[\widehat{\beta}_1\overline{X}]  \\
& \stackrel{\text{model def}}{\longeq} &
n^{-1}\sum_{i=1}^n E[\beta_0+\beta_1 X_i+\epsilon_i]-\beta_1\overline{X} \\
& \stackrel{E[\epsilon_i]=0}{\longeq} & n^{-1}\sum_{i=1}^n
(\beta_0+\beta_1X_i)-\beta_1\overline{X}  \\
& \longeq & \beta_0 
\end{aligned}$$
:::

::: frame
Recall the variance of sums of random variables, from Module A:

Let $a_1,\ldots,a_n$ be constants. Recall: $Var(a_iY_i)=a_i^2Var(Y_i)$
$\mbox{cov}(X,aY)=a\mbox{cov}(X,Y)$\
$\mbox{cov}(X,Y_1+Y_2)=\mbox{cov}(X,Y_1)+\mbox{cov}(X,Y_2)$
$Var\left( \sum_{i=1}^n a_iY_i \right) = \sum_{i=1}^n
    \sum_{j=1}^n a_i a_j \mbox{cov}(Y_i,Y_j)$\
${\color{white}{Var\left( \sum_{i=1}^n a_iY_i \right)}}=\sum_{i=1}^{n}a_i^2Var(Y_i)  +2 \sum_{i=1}^{n-1}
    \sum_{j=i+1}^n a_i a_j \mbox{cov}(Y_i,Y_j)$ In particular $$\boxed{
        Var(a_1Y_1+a_2Y_2)=a_1^2Var(Y_1)+a_2^2Var(Y_2)+2a_1a_2\text{cov}(Y_1,Y_2)
    }\label{varof2sum}$$

If $Y_i$'s are uncorrelated, then
$$\boxed{Var\left(\sum_{i=1}^n a_iY_i\right) = \sum_{i=1}^n a_i^2Var(Y_i)}\label{varofsum}$$
:::

::: frame
Variance of $\widehat{\boldbeta}_1$ Claim:
$Var(\widehat{\beta}_1)=\sigma^2/SSX$ Proof:

$$\begin{aligned}
Var(\widehat{\beta_1}) & \longeq & Var\left(  \frac{SSXY}{SSX} \right) \stackrel[\text{constant}]{SSX\text{ is a}}{\longeq} SSX^{-2}Var(SSXY) \\
& \longeq & SSX^{-2}Var\left\{ \sum_{i=1}^n Y_i (X_i-\overline{X}) \right\}\\
& \stackrel{(\ref{varofsum}) \text{ w/ } a_i=X_i-\overline{X}}{\longeq} & SSX^{-2}\sum_{i=1}^n \left\{(X_i-\overline{X})^2 Var(Y_i) \right\}\\
& \longeq & SSX^{-1} \sigma^2
\nonumber
\end{aligned}$$
:::

::: frame
Variance of $\widehat{\boldbeta}_0$ Claim:
$Var(\widehat{\beta}_0) = \sigma^2 \left\{\frac{1}{n} +
\frac{\overline{X}^2}{SSX} \right\}$ Proof: $$\begin{aligned}
Var(\widehat{\beta}_0) & = & Var(\overline{Y} - \widehat{\beta}_1\overline{X} ) \\
&& \mbox{Here $\overline{Y}$ and $\widehat{\beta}$ are random, $\overline{X}$ is fixed}\\
& \stackrel{(\ref{varof2sum})}{\longeq} & Var(\overline{Y}) + \overline{X}^2 Var(\widehat{\beta}_1) - 2\overline{X}\mbox{cov}(\overline{Y},\widehat{\beta}_1)\\
&& \mbox{Next slide shows that cov}(\overline{Y},\widehat{\beta}_1) =0\mbox{, thus,}\\
& = & \frac{\sigma^2}{n} + \overline{X}^2 \frac{\sigma^2}{SSX} 
\end{aligned}$$
:::

::: frame
Covariance: $\overline{Y},\widehat{\boldbeta}_1$ Claim:
$\mbox{cov}(\overline{Y},\widehat{\beta}_1)=0$ Proof:

$$\begin{aligned}
%       &&\mbox{cov}(\overline{Y},\widehat{\beta}_1) \\
        \mbox{cov}(\overline{Y},\widehat{\beta}_1) & \stackrel{ (\ref{beta1}) }{\longeq} & \mbox{cov}\big(\overline{Y},\frac{\sum_{i=1}^n (X_i-\overline{X})Y_i }{SSX}\big) \\
        &\stackrel[\text{cov(a)=a(cov)}]{ \text{cov(sum)=sum(cov)} }{\longeq} & \frac{1}{SSX}
        \sum_{i=1}^n    (X_i-\overline{X})\mbox{cov}(\overline{Y}, Y_i)\\
        &{\longeq} & \frac{1}{SSX}
        \sum_{i=1}^n    (X_i-\overline{X})\mbox{cov}(\frac{1}{n}\sum_{\myi=1}^nY_\myi, Y_i)\\
        %%%
        &\stackrel[\text{for all $i\neq j$}]{\text{cov$(Y_i,Y_j)=0$}}{\longeq}&
        \frac{1}{SSX}
        \sum_{i=1}^n    (X_i-\overline{X})\underbrace{cov(\frac{1}{n}Y_i,Y_i)}_{\text{$\sigma^2/n$}}\\
        &\stackrel{\text{$\sum_{i=1}^n  (X_i-\overline{X})\sigma^2=0$}}{\longeq}&0
    
\end{aligned}$$
:::

::: frame
[**Estimating the sampling variance\
of the regression coefficients** ]{style="color: royalblue"}
:::

::: frame
Estimating $Var(\widehat{\beta}_0)$ and $Var(\widehat{\beta}_1)$ We have
shown that the true sampling variances of the regression coefficients
are: $Var(\widehat{\beta}_1)=\sigma^2/SSX$
$Var(\widehat{\beta}_0)= \sigma^2 \left\{\frac{1}{n} +
\frac{\overline{X}^2}{SSX} \right\}$ However, $\sigma^2$ is generally
unknown. In SLR we use the estimator:
$$\boxed{\widehat{\sigma}^2 =\frac{1}{n-2} \sum_{i=1}^n \widehat{\epsilon}_i^2}\stackrel{\text{def}}{\longeq}\frac{SSE}{n-2}\stackrel{\text{def}}{\longeq}MSE$$

where $\widehat{\epsilon}_i=Y_i-\widehat{Y}_i$ is the residual
(estimated errors)

$\widehat{\sigma}^2$ reflects average squared distance between $Y_i$'s
and $\widehat{Y}_i$'s

Large $\widehat{\sigma}^2$ implies large amount of scatter in $Y_i$'s
around estimated regression line
:::

::: frame
Estimating $Var(\widehat{\beta}_0)$ and $Var(\widehat{\beta}_1)$
(continued) Recall sample variance when $\mu$ is unknown (module A)
Sample: $Y_1,\ldots,Y_n$

Estimated mean: $\widehat{E}[Y_i]=\overline{Y}$ for all $i$

Sample variance:
$$\widehat{Var}(Y_i) = \frac{1}{  {\color{red}n-1}  } \sum_{i=1}^n
(Y_i-\overline{Y})^2$$ Estimating sample variance of error $\ldots$
Sample: $(X_1,Y_1),\ldots,(X_n,Y_n)$

Estimated mean:
$\widehat{E}[Y_i|X_i]=\widehat{\beta}_0+\widehat{\beta}_1X_i$

Sample variance:
$$\widehat{Var}(Y_i) =\widehat{\sigma}^2=  \frac{1}{  {\color{red}n-2}  } \sum_{i=1}^n
(Y_i-\widehat{Y}_i)^2$$ Note: difference in divisor (Q: Why?)
:::

::: frame
Estimator of $\boldsigma^2$ in SLR

The $-2$ in the denominator comes from the number of degrees of freedom
$df$ in the $SSE$ $df =$ the number of observations that are free to
vary\
[$df$]{style="color: white"} $=$ number of contributions ($n$)- number
of constraints Example for $df$ in SSE: Suppose we observe
$Y_1,\dots,Y_n$ and $\mu_Y$ is known, then $df = n$ $Y_1$, $Y_2$ ($n=2$)
and $\mu_Y$ is unknown and estimated by $\overline{Y}$, then once $Y_1$
and $\overline{Y}$ are known, $Y_2$ is not free to vary. There is 1 df
lost in SSE due to estimation of $\overline{Y}$, $df = n-1$
$(X_1,Y_1),\ldots,(X_n,Y_n)$ and estimated
$\widehat{\beta}_0,\widehat{\beta}_1$. There are 2 df lost in SSE due to
estimation of $\widehat{\beta}_0,\widehat{\beta}_1$, $df = n-2$ For
$\widehat{\sigma}^2$: two constraints from the two estimated parameters
$\widehat{\beta}_0$, $\widehat{\beta}_1$ It can be shown that
$\widehat{\sigma}^2$ as defined in previous slide is an unbiased
estimator of $\sigma^2$
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
Interpretation Interpretation check list: [Units]{.underline},
**direction (for slope not intercept)**, *magnitude*,
["average/mean\"]{style="color: red"},
["estimated\"]{style="color: royalblue"}

$\widehat{\beta}_0 = 646.483$

$\widehat{\beta}_1=-14.041$
:::

::: frame
Interpretation Interpretation check list: [Units]{.underline},
**direction**, *magnitude*, ["estimated\"]{style="color: royalblue"},
["average/mean\"]{style="color: red"}, in which population

$\widehat{\beta}_0 = 646.483$ The [estimated]{style="color: royalblue"}
[mean]{style="color: red"} sleep time for someone who is age 0 (a
newborn) is *646.483* [minutes]{.underline}

$\widehat{\beta}_1=-14.041$ The [estimated]{style="color: royalblue"}
[mean]{style="color: red"} difference in sleep time for one
[year]{.underline} **increase** in age is **-***14.041*
[minutes]{.underline} Comparing two children who differ in age by one
[year]{.underline}, the **older** individual has an
[estimated]{style="color: royalblue"} [mean]{style="color: red"} sleep
time that is *14.041* [minutes]{.underline} **lower**. We
[estimated]{style="color: royalblue"} that children who are one
[year]{.underline} **older** sleep, [on average]{style="color: red"},
*14.041* [minutes]{.underline} **less**.
:::

::: frame
Acknowledgement

  ----------------------------------
   ![image](pic/lan){height="30mm"}
               Lan Luo
          University of Iowa
  ----------------------------------

Thank you for your notes!
:::

::: frame
Questions?
:::
