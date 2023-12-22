::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module K: Model Diagnosis**]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

Purpose Residuals and Properties of residuals Review of model
assumptions Impact of violating assumptions Use of residuals in model
diagnostics Correction strategies Outliers Examples

MPV 5th edition: Chapter 4 and 5
:::

::: frame
Regression Diagnostics Regression diagnostics includes assessment of:
Model assumptions (LINE) Influential observations/outliers
Multicollinearity
:::

::: frame
Linear Model: Assumptions

Model: ${\boldY} = \boldX\boldbeta + \boldepsilon$ Assumptions:
${\boldY}\sim N(\boldX\boldbeta,\sigma^2{\boldI})$

**L**inearity:
$E[Y_i]=\beta_0 + \beta_1X_{i1} + \ldots + \beta_{p-1}X_{i,p-1}$
Linearity w.r.t. $\beta$'s Functional form of $\boldX$: often the focus
of diagnostics for linearity **I**ndependence:
$\epsilon_i \perp \epsilon_j$, for $i\neq j$ **N**ormality:
$\epsilon_i\sim N(0,\sigma^2)$ **E**qual variance (homogeneity):
$Var(\epsilon_i)=\sigma^2$, for all $i$ Assumptions mainly about
$\epsilon_i$ and will be checked using residuals Since we cannot observe
the true $\epsilon_i$'s, we infer their behavior via the
$\widehat{\epsilon}_i$'s Residual is a measure of the variability of the
outcome not explained by the regression model
:::

::: frame
Violation of Assumptions Possible consequences of assumptions being
violated: $\widehat{\beta}_j$ biased $SE(\widehat{\beta}_j)$ inaccurate
CI's for $\beta_j$ inaccurate hypothesis tests invalid Impact depends on
which assumption is violated and the extent
:::

::: frame
Regression Diagnostics: Objectives Identify violation of model
assumptions Identify observations that may have too much influence on
the results Understand the impact of violating the assumption e.g.,
impact on confidence intervals or coefficients Assumptions will never
hold perfectly: degree of validity of model results depends on degree to
which assumptions hold

Be able to suggest potential corrective action e.g., transformation of
response

Regression diagnostics can involve an "iterative process" because
violation of one assumption can mask a violation of another assumption
:::

::: frame
[ **Types of Residuals** ]{style="color: royalblue"}
:::

::: frame
Conventional Residuals: Properties (review) Assume:
$\boldepsilon\sim N({\boldzero},\sigma^2{\boldI})$ Errors:
$\boldepsilon={\boldY}-E[{\boldY}]$ Residuals: & = & -\
& = & -\
& = & (-)\
\
E\[\] & = & (-)E\[\]\
& = & (-)\
& = & -\
& = & - (\^T)\^-1\^T\
& = &
:::

::: frame
Residuals: Properties (continued) Var() & = & Var({-} )\
& = & (-) \^2 (-)\^T\
& = & \^2(-)\^2\
& = & \^2(-) Therefore,
$\widehat{\boldepsilon}\sim N({\boldzero},\sigma^2\{{\boldI}-{\boldH}\})$,
since $\widehat{\boldepsilon}$ is a linear combination of Normals
:::

::: frame
Residuals: Properties (cont'd) Therefore, if $\boldepsilon \sim$ Normal,
then $\widehat{\boldepsilon}\sim$ Normal if
$E[{\boldepsilon}]={\boldzero}$, then
$E[\widehat{\boldepsilon}]={\boldzero}$ even if
$\{\epsilon_1,\ldots,\epsilon_n\}$ are mutually independent,\
$\{\widehat{\epsilon}_1,\ldots,\widehat{\epsilon}_n\}$ are not
independent
cov$(\widehat{\epsilon}_i,\widehat{\epsilon}_j)=-h_{ij}\sigma^2$ because
$Var(\widehat{\boldepsilon})=\sigma^2({\boldI}-{\boldH})$ even if
$Var(\epsilon_i)=\sigma^2$ for all $i$, $Var(\widehat{\epsilon}_i)\neq
\sigma^2$ for any $i$ in fact
$Var(\widehat{\epsilon}_i)=(1-h_{ii})\sigma^2\leq\sigma^2$
($h_{ii}\geq0$ since $\boldH$ is positive definite)
:::

::: frame
Standardized Residuals Standardized residuals (imperfect): \_i & = &
Rationale: $\widehat{\epsilon}_i$'s are unit-dependent (e.g., changing
units of $Y_i$ will change $\widehat{\epsilon}_i$)

Standardizing with $\widehat{\sigma}$ is very easy to do.

Patterns in $\widehat{z}_i$'s will be the same as
$\widehat{\epsilon}_i$'s, but easier to judge the magnitude of
$\widehat{\epsilon}_i$ because it is "standardized"

More meaningful to judge the magnitude of $\widehat{\epsilon}_i$
relative to its standard deviation
:::

::: frame
Standardized Residuals (continued)

$\widehat{z}_i$'s have mean $\approx 0$ and variance $\approx 1$

If model assumptions are correct,
$\widehat{z}_i\stackrel{\cdot}{\sim} N(0,1)$.\
Therefore $\widehat{z}_i$'s are more readily interpreted: P(\|\_i\| ) &
& 0.67\
P(\|\_i\| ) & & 0.95\
P(\|\_i\| ) & & 0.99 Advantage of $\widehat{z}$ over
$\widehat{\epsilon}$ is that we have a "rule of thumb\" to identify
large value: $|\widehat{z}_i| \geq 2.5$

Histogram, Q-Q (quantile-to-quantile) plot, box/whisker plot will have
same pattern as for $\widehat{\epsilon}_i$'s (to be introduced soon)
:::

::: frame
Internally Studentized Residuals Recall: $\widehat{\sigma}^2(1-h_{ii})$,
not $\widehat{\sigma}^2$, is an unbiased estimator of
$Var(\widehat{\epsilon}_i)$ Internally studentized residuals: \_i & = &
where $h_{ii}=\text{diag}(\boldH)_i=$ leverage for $i$'th individual
(the $i$-th element of the diagonal of the hat matrix)

$h_{ii}=\boldX_i^T (\boldX^T\boldX)^{-1}   \boldX_i$; Special case: in
SLR h\_ii & = & +

Reflects outlyingness in $\boldX$ space

$E[\widehat{r}_i]=  0$, $Var(\widehat{r}_i)\approx 1$,
$\widehat{r}_i\sim t_{df SSE}$. Note: when $df SSE$ (or sample size) is
large: $t_{df SSE}\approx N(0,1)$, $|t_{df SSE, 0.025}|\approx 2$
:::

::: frame
Externally Studentized Residuals

Externally studentized residuals: \_(-i) & = & $\widehat{\sigma}_{(-i)}$
is an estimator of $\sigma^2$, with $i$'th individual deleted

Rationale:

if $|\widehat{\epsilon}_i|$ is large, $\widehat{\sigma}^2$ may
over-estimate $\sigma^2$ $\widehat{\epsilon}_i$ can serve to mask its
own outlyingness by inflating $\widehat{\sigma}^2$ hence remove
influence of $\widehat{\epsilon}_i$ on $\widehat{\sigma}^2$ by removing
the data point

$E[\widehat{r}_{(-i)}]= 0$, $Var(\widehat{r}_{(-i)})\approx
1$, $\widehat{r}_{(-i)}\sim t_{dfSSE-1}$

Most sensitive residuals for detecting outliers

Also known as "leave-one-out/Jackknife" residuals
:::

::: frame
Comparing Residual Types

For large samples, $\widehat{\epsilon}_i$, $\widehat{z}_i$,
$\widehat{r}_i$, $\widehat{r}_{(-i)}$ tend to provide similar
information

For large samples, $\widehat{r}_{(-i)}$, $\widehat{r}_i$,
$\widehat{z}_i$ follow, approximately, a standard normal distribution
For small to moderate samples, a rank, in decreasing order of
sensitivity: $\widehat{r}_{(-i)}$ $\widehat{r}_i$ $\widehat{z}_i$
$\widehat{\epsilon}_i$
:::

::: frame
[ **Checking functional form of continuous predictor (linearity)**
]{style="color: royalblue"}
:::

::: frame
Functional form of continuous predictor Continuous covariates may have
nonlinear functional form of relationship with the outcome e.g. SBP vs
age Several approaches to check Approach 1: Partial regression plots
Approach 2: Categorizing predictor Approach 3: Testing and smoothing
approaches (future lecture)
:::

::: frame
Residual vs. covariate plots in SLR and MLR

In MLR: conditional association; in SLR, marginal=conditional. In simple
linear regression, can plot $\widehat{\epsilon}$ versus $X$ (or
$\widehat{Y}$) to assess linearity of $(X,Y)$ relationship can detect
departures from linearity, and nature of non-linear relationships If the
current functional form has captured the effect of $X$, then
$\widehat{\epsilon}_i$'s should be randomly scattered and show no trend
with $X$ For multiple linear regression, situation is more complicated
Plot of $\widehat{\epsilon}$ versus $X_k$ can be impacted other
covariates\" If $X_k$ is correlated with $X_j$, and $X_j$ has a
non-linear association with $Y$, then plot of $\widehat{\boldepsilon}$
vs $X_k$ will partially reflect non-linear association of $Y$ and $X_j$.
Solution: *Partial regression* plots
:::

::: frame
Approach 1: Partial Regression Plots Design matrix
$\boldX=[{\boldone}_n, X_1,\ldots, 
X_p]$ $\boldX_{-k}$ contains all covariates, except $X_{k}$

Regress ${\boldY}$ on $\boldX_{-k}$ and get residual
$\widehat{\boldepsilon}({\boldY}|\boldX_{-k})$
$\boldY=\boldX_{-k}\alpha%_{\scriptscriptstyle {\boldY}|\boldX_{-k} }
    +\epsilon({\boldY}|\boldX_{-k})$ Regress $X_{k}$ on $\boldX_{-k}$
and get residual $\widehat{\boldepsilon}(\boldX_{k}|\boldX_{-k})$
$X_{k}=\boldX_{-k}
    \boldbeta%_{\scriptscriptstyle\boldX_{k}|\boldX_{-k}}
    +\epsilon(\boldX_{k} |\boldX_{-k})$ Plot
$\widehat{\boldepsilon}(X_{k}|\boldX_{-k})$ vs.
$\widehat{\boldepsilon}({\boldY}|\boldX_{-k})$ both sets of residuals
are covariate-adjusted (and hence model dependent): remove
information/contribution from $\boldX_{-k}$ if linear, then shows the
*adjusted* effect of $X_k$; if nonlinear, then suggests a functional
form of $X_k$ (see also partial residual plot) can also help to spot
outliers (extreme residuals in the Y direction) and "leverage points"
(extreme residuals in the X direction)

::: center
![image](pic/partial2.png){height="0.9in"}
:::
:::

::: frame
Partial Regression Plots--Example [Example]{.underline}: Suppose we want
to study association between Sytolic blood pressure (SBP) and covariates
Age ($A_{i}$), Quetlet intex ($Q_i$), and smoking $S_{i}$.
$SBP_i = \beta_0 + \beta_A A_i + \beta_Q Q_i + \beta_S S_i
+ \epsilon_i$

We want to assess functional relationship between $SBP$ and $Age$ Fit
first model:
$SBP_i   =  \gamma_0 +  \gamma_1 Q_{i} + \gamma_3 S_i +\epsilon_{i(SBP|Q,S)}$

obtain residuals, $\widehat{\epsilon}_{i(SBP|Q,S)}$'s Fit second model:
$A_{i}  =  \alpha_0 + \alpha_1 Q_{i} + \alpha_2 S_i +\epsilon_{i(Age|Q,S)}$
obtain residuals $\widehat{\epsilon}_{i(A|Q,S)}$'s Plot
$\widehat{\epsilon}_{i(SBP|Q,S)}$ vs. $\widehat{\epsilon}_{i(Age|Q,S)}$
pattern in plot describes association between $Age$ and $SBP$, adjusting
for $Q$ and $S$
:::

::: frame
Approach 2: Categorize Continuous Predictor

Replace continuous with categorical covariates, then examine pattern in
coefficients of indicator variables Functional form of indicator
variables can't be misspecified e.g., blood pressure data:
$SBP_i = \beta_0 + \beta_A A_i + \beta_Q Q_i + \beta_S S_i
+ \epsilon_i$ We want to assess functional relationship between $SBP$
and $Age$ Eliminate the linearity assumption by treating age as
categorical: Break age into groups containing (approximately) equal
numbers of subjects and set up indicator covariates: AG\_1i & = & I(41
A_i \< 48)\
AG\_2i & = & I(48 A_i \< 54)\
AG\_3i & = & I(54 A_i \< 59)\
AG\_4i & = & I(59 A_i)
:::

::: frame
Categorizing approach, continued (1) Revised model: E\[SBP_i\] & = &
\_0 + \_A2AG\_2i + \_A3AG\_3i +\_A4AG\_4i + \_Q Q_i + \_S S_i Now, plot
$\widehat{\beta}_{A1}$, $\widehat{\beta}_{A2}$ $\dots$,
$\widehat{\beta}_{A4}$ against group-specific medians set
$\widehat{\beta}_{A1}\equiv0$; $\widehat{\beta}_{A1}$ $\dots$,
$\widehat{\beta}_{A4}$ are adjusted group mean differences Plot reflects
true nature of association between $A_i$ and $E[SBP_i]$ linear?
quadratic? U-shaped? threshold? If plot approximately linear: evidence
in favor of linearity assumption
:::

::: frame
Violation of Linearity Assumption If linearity fails $\ldots$
$\widehat{\boldbeta}$: $\widehat{\boldY}$: $\widehat{\sigma}^2$:
$\widehat{Var}(\widehat{\boldbeta})$: confidence intervals: hypothesis
tests:

Possible solutions: modify the model $\ldots$ additional covariates
transform ${\boldY}$; e.g., $log({\boldY})$, $\sqrt{{\boldY}}$ transform
certain $\boldX_k$'s
:::

::: frame
Violation of Linearity Assumption If linearity fails $\ldots$
$\widehat{\boldbeta}$: biased $\widehat{\boldY}$: biased
$\widehat{\sigma}^2$: biased $\widehat{Var}(\widehat{\boldbeta})$:
biased confidence intervals: invalid hypothesis tests: wrong inference

Possible solutions: modify the model additional covariates transform
certain $\boldX_k$'s based on the plots transform ${\boldY}$; e.g.,
$log({\boldY})$, $\sqrt{{\boldY}}$
:::

::: frame
[ **Independence Assumption** ]{style="color: royalblue"}
:::

::: frame
Independence Assumption Independence: (multivariate normal + )
$E[\epsilon_i \epsilon_j]=0$ for $i\neq j$

implies: $Y_i$ independent of $Y_j$, $i\neq j$

to assess validity of independence assumption, careful consideration of
study design is essential

violations of independence often clear from sampling scheme

e.g., if $Y_i$'s are time-ordered, may be serial correlation;
$E[\epsilon_i \epsilon_{i+1}]\neq 0$

e.g., subjects in a study are clustered

e.g., response measured repeatedly on each subject

Note: recall that residuals are never independent
:::

::: frame
Independence Assumption: Autocorrelation : errors are correlated
(sequenced) often occurs when response is measured over time
$\mbox{cov}(\epsilon_i \epsilon_{i+\ell})\neq 0$, for some $\ell$ (lag)
e.g., lag-2 autocorrelation: $E[\epsilon_i \epsilon_{i+1}]\neq 0$
$E[\epsilon_i \epsilon_{i+2}]\neq 0$ $E[\epsilon_i \epsilon_{i+k}]=0$,
for $k>2$
:::

::: frame
Independence: Detecting Autocorrelation

plot $\widehat{\epsilon}_i$'s versus $i$ (index) positive
autocorrelation: adjacent residuals have same sign negative
autocorrelation: sign of residuals alternates Note: only if index $i$
has a meaningful order, e.g. time plot $\widehat{\epsilon}_i$ vs.
$\widehat{\epsilon}_{i-1}$ positive correlation: positive trend negative
correlation: negative trend
:::

::: frame
Autocorrelation: Durbin-Watson Test (Chap 14) consider: departure from
independence in form of lag 1 autocorrelation (first order)
$\mbox{corr}(\epsilon_i, \epsilon_{i+1})=\rho$, $i=1,\ldots,n-1$
Durbin-Watson Test: hypotheses: $H_0: \rho=0$ vs. $H_1:\rho > 0$ test
statistic: DW & = & (1-) 2 Distribution depends on $\boldX$, but bounds
are available (Table A.6) reject $H_0$ if $DW < DW_L$ fail to reject
$H_0$ if $DW > DW_U$ inconclusive if $DW_L \leq DW \leq DW_U$ to test
$H_0$ vs. $H_1:\rho <0$, use $(4-DW)$ as test statistic
:::

::: frame
Impact of Lack of Independence if $e_i$ and $e_j$ are correlated
($i\neq j$): $\widehat{\boldbeta}:$ $\widehat{\sigma}^2:$
$Var({\widehat{\boldbeta}}):$ CI's, hypothesis tests:
:::

::: frame
Impact of Lack of Independence if $e_i$ and $e_j$ are correlated
($i\neq j$): $\widehat{\boldbeta}:$ unbiased, normally distributed
$\widehat{\sigma}^2:$ biased The conclusion that
$E[\widehat{\sigma}^2]=\sigma^2$ depends on independence ($n$ is no
longer the effective sample size) $Var({\widehat{\boldbeta}}):$
$Var\{(\boldX^T\boldX)^{-1}\boldX^T\boldY\}=(\boldX^T\boldX)^{-1}\boldX^T{\color{royalblue}\boldsymbol{\Sigma}}\boldX(\boldX^T\boldX)^{-1}$
where $\boldSigma$ is not a diagonal matrix CI's, hypothesis tests:
invalid
:::

::: frame
Independence: Remedies In BIOSTAT 653 conditional approach: random
effects, mixed models let $Y_{ij}=$ response, $j$'th subject in $i$'th
cluster e.g, $Y_{ij} = \beta_{0i} + \beta_1 X_{ij} + \epsilon_{ij}$,
where $\beta_{0i}\sim N(\beta_0,\sigma^2_0)$ dependence among subjects
captured by $\sigma^2_0$ $Y_{ij}$ conditionally independent of $Y_{ik}$,
given $\beta_{0i}$ marginal approach: Use a "working\" correlation
structure model: unchanged from the independence case compute
$\widehat{\boldbeta}$ as if subjects were independent use adjusted
(robust) version of variance estimator
:::

::: frame
Independence: Remedies (continued) e.g., time-ordered data: include
*time* as covariate need to ensure that effect of time is modelled
correctly may or may not solve problem; need to examine residuals may
need to depart from linear regression altogether appeal to *time series
analysis* (regression methods specially developed for time-ordered data)
:::

::: frame
[ **Constant Variance Assumption** ]{style="color: royalblue"}
:::

::: frame
Assessing Constant Variance Plot $\widehat{\boldepsilon}$ vs.
$\widehat{\boldY}$ to assess homogeneity assumption

should be a random scatter

common departure: $|\widehat{\epsilon}_i|$ increases with
$\widehat{Y}_i$ (cone shape), implying that the variance is an
increasing function of the mean common in linear modelling of count/rate
data

Note: residuals are heterogeneous, i.e.,
$Var(\widehat{\epsilon}_i)\neq\sigma^2$, but shouldn't have patterns

::: center
![image](pic/hetero.png){height="1.7in"}
:::
:::

::: frame
Model Assumptions: Constant Variance If homogeneity fails $\ldots$
$\widehat{\boldbeta}$: $\widehat{\sigma}^2$:
$\widehat{Var}(\widehat{\boldbeta})$: hypothesis tests, CI's: Possible
solutions: weighted least squares (Chapter 5.5.2 and 5.5.3) variance
stabilizing transformations (Chapter 5.2) robust regression (Chapter
15.1) robust standard errors
:::

::: frame
Model Assumptions: Constant Variance If homogeneity fails $\ldots$
$\widehat{\boldbeta}$: remain valid $\widehat{\sigma}^2$: not well
defined $\widehat{Var}(\widehat{\boldbeta})$: invalid
$Var\{(\boldX^T\boldX)^{-1}\boldX^T\boldY\}=(\boldX^T\boldX)^{-1}\boldX^T{\color{royalblue}Var(\boldY)}\boldX(\boldX^T\boldX)^{-1}$
${\color{white}{Var\{(\boldX^T\boldX)^{-1}\boldX^T\boldY\}}}\neq (\boldX^T\boldX)^{-1}\boldX^T{\color{royalblue}\boldsymbol{\sigma^2\boldI}}\boldX(\boldX^T\boldX)^{-1}$
hypothesis tests, CI's: invalid because SE($\widehat{\beta}$) invalid
Possible solutions: weighted least squares (Chapter 5.5.2 and 5.5.3)
variance stabilizing transformations (Chapter 5.2) robust regression
(Chapter 15.1) robust standard errors
:::

::: frame
Weighted Least Squares

Suppose constant variance is violated, but the responses are
uncorrelated, i.e., ${\boldepsilon}\sim N({\boldzero}, {\boldW})$, where
${\boldW}=\mbox{diag}\{\boldsymbol{w}_1,\ldots,\boldsymbol{w}_n\}$ where
$\boldsymbol{w}_i\neq \boldsymbol{w}_j$ for some $i\neq j$
$Var\{(\boldX^T\boldX)^{-1}\boldX^T\boldY\}=(\boldX^T\boldX)^{-1}\boldX^T{\color{royalblue}\boldsymbol{\boldW}}\boldX(\boldX^T\boldX)^{-1}$
We can estimate:

\_W &=& (\^T\^-1)\^-1\^T\^-1\
Var(\_W) & =& (\^T\^-1)\^-1

Typically, $\boldW$ is unknown and needs to be estimated from
$\widehat{\epsilon}_i$'s
:::

::: frame
Variance-Stabilizing Transformations

Variance-stabilizing transformations (VST) can be used when strong
evidence against the constant variance assumption exists

Idea: often, when $Var(Y_i)$ is not constant, it is a function of
$E[Y_i]$. Thus we: choose a function $g(\cdot)$ s.t. $Var(g(Y_i))$ is
not a function of $E[Y_i]$ fit $g(\boldY)=\boldX\boldgamma+\bolddelta$

Caveat: $\boldgamma$ has different interpretation than $\boldbeta$ in
$\boldY=\boldX\boldbeta+\boldepsilon$
:::

::: frame
Non-Constant Variance: Example

Suppose $Y_i$ follows a Poisson distribution From BIOS 601 we know
$E[Y_i]=Var(Y_i)=\boldX_i^T\boldbeta$ (non-constant!)

Set $g(x)=\sqrt{x}$ due to the following approximation:
$$Var(g(Y_i)) \approx  %Var\{\left.\frac{\partial g(x)}{\partial x}\right|_{x=E[Y_i]}   (Y_i)\} =
         \left\{ \left.\frac{\partial g(x)}{\partial
            x} \right|_{x=E[Y_i]} \right\}^2 Var(Y_i)$$

this result is exact only when $g(x)$ is linear here,
$\{\partial g/\partial x\}^2=(4x)^{-1}$, such that $Var(\sqrt{Y_i})=1/4$

Therefore, although $Var(Y_i)$ is non-constant, $Var(\sqrt{Y_i})$ is a
constant
:::

::: frame
Common VST's

Examples of variance-stabilizing transforms:

::: center
   $Var(Y_i)$      $g(Y_i)$
  ------------ ----------------
   $\sigma^2$       $Y_i$
    $E[Y_i]$     $\sqrt{Y_i}$
   $E[Y_i]^2$    $\log(Y_i)$
   $E[Y_i]^3$   $1/\sqrt{Y_i}$
   $E[Y_i]^4$      $1/Y_i$
:::

These are ordered from weakest to strongest $\ldots$ We don't know
exactly which one to choose. So: Plot residuals vs fitted values Use
prior experience Involves some trial and error
:::

::: frame
Robust standard errors

Robust standard errors correctly estimate variability of parameter
estimates even under non-constant variance Use empirical estimates of
the variance in $Y$ at each $X$ value rather than assuming this variance
is the same for all $X$ values Regression point estimates will be
unchanged Robust or empirical standard errors will give correct
confidence intervals and p-values In R: lmtest::coeftest()
:::

::: frame
[ **Normality Assumption** ]{style="color: royalblue"}
:::

::: frame
Normality Assumption Several ways to check assumption that
$\epsilon_i\sim N(0,\sigma^2)$ normality: histogram (stem & leaf plots)

box-whisker plots (boxplots)

quantile-to-quantile (Q-Q) plots

Shapiro-Wilks Test (among other tests for normal distribution)
:::

::: frame
Approach 1: Histogram

Histogram of $\widehat{\epsilon}_i$'s: should approximate the shape of a
zero-mean normal distribution; i.e., symmetric bell-shaped light tailed

Caveat: Need a fairly large number of individuals to get reliable
information from histogram Histograms of the same data but using
different bin sizes (breaks) and/or different cut-points may look quite
different

Q: Why not simply plot histogram of $Y_i$'s? The distribution of $Y$
might look very non-bell shaped yet normality of errors may still hold
-- e.g., predictor itself might be highly skewed
:::

::: frame
Approach 2: Box-Whisker Plot Box-whisker plots (Boxplot): provides
information on symmetry of distribution

symmetric distribution: terminology: $q\%$ of the
$\widehat{\epsilon}_i$'s are $\leq$ the $q$'th percentile mean equals
median 25th and 75th percentiles are equal distance from median median
of $\widehat{\epsilon}_i$'s should be $\approx$ 0

::: center
![image](pic/boxplot.png){height="1.5in"}
:::
:::

::: frame
Approach 3: Q-Q plot Normal probability plot: rank the $\widehat{z}_i$'s
in ascending order: \_(1) \< \_(2) \< ...\< \_(n) if the $\epsilon_i$'s
are truly normal, then $\widehat{z}_{(i)}$'s should resemble order
statistics from a size $n$ standard normal sample plot
$\widehat{z}_{(i)}$'s against the i-th quantile
$\Phi^{-1}(\frac{i-1/2}{n})$, where $\Phi^{-1}(\cdot)$ is inverse of
standard normal cumulative distribution function (cdf)

A special case of the quantile-to-quantile (Q--Q) plot: for a normal
distribution Plot should be straight line
:::

::: frame
Approach 3: Q-Q plot ![image](pic/qq.png){height="3in"}
:::

::: frame
Shapiro-Wilks Test Shapiro-Wilks Test: formally examines correlation
between $\widehat{z}_{(i)}$'s and their expected values under normality
$H_0: \epsilon_i\sim N(0,\sigma^2)$; $H_1:\overline{H}_0$ under $H_0$,
E\[\_(i)\|H_0\] & = & \^-1() set:
$\widehat{\boldZ}_{(\cdot)}=[\widehat{z}_{(1)},\ldots,\widehat{z}_{(n)}]$

test statistic:
$\widehat{\rho}^2(\widehat{\boldZ}_{(\cdot)},E[\widehat{\boldZ}_{(\cdot)}|H_0])$,
\^2(\_(),E\[\_()\|H_0\]) & = & { }\^2

low values: evidence against $H_0$ In R: shapiro.test(). If $p>0.05$: we
can assume normality
:::

::: frame
Model Assumptions: Normality If Normality does not hold $\ldots$
$\widehat{\boldbeta}$: $\widehat{\sigma}^2$:
$\widehat{Var}(\widehat{\boldbeta})$: hypothesis tests, CI's: Possible
solution: transform ${\boldY}$ Note: OLS is quite robust to departures
from normality By CLT: even if violation of normality, sample mean of
variables tends towards a normal distribution as sample size grows
:::

::: frame
Model Assumptions: Normality If Normality does not hold $\ldots$
$\widehat{\boldbeta}$: remains unbiased (does not rely on normality)
$\widehat{\sigma}^2$: remains unbiased (does not rely on normality)
$Var(\widehat{\boldbeta})=\sigma^2(\boldX^T\boldX)^{-1}$: still valid
formula (only requires uncorrelated and homogeneity)
$\widehat{Var}(\widehat{\boldbeta})$: unbiased hypothesis tests, CI's:
invalid under small sample size; valid if sample size is large Possible
solution: transform ${\boldY}$ ($\sqrt{\boldY}, \log(\boldY)$) Note: OLS
is quite robust to departures from normality By CLT: even if violation
of normality, sample mean of variables tends towards a normal
distribution as sample size grows
:::

::: frame
Summary

                            **Check**                     **Estimates**   **Tests/CIs**        **Correct**
  ------- ---------------------------------------------- --------------- --------------- ------------------------
   **L**             Partial regression plot;              Problematic     Problematic       Transform X or Y
                      Categorize (step-wise)                                             
   **I**                      Design                          Valid        Problematic           BIOS 653
   **E**   Plot $\widehat{{\epsilon}}\sim\widehat{{Y}}$       Valid        Problematic    Weighted Least Squares
                                                                                          Transform Y; Robust SE
   **N**              Hist; boxplot; QQ plot                  Valid        Problematic         Transform Y
                        Shapiro-Wilks Test                                if $n$ small   
:::

::: frame
All models are wrong but some are useful
$E(\boldY)\! =\! \boldX\boldbeta$ is a convenient way to measure the
association that I'm interested in ("useful\"), but I don't believe the
model ("wrong\"). Since I have a random sample, I'm comfortable assuming
that my errors are uncorrelated (by design). But why should I believe
that my errors are homoscedastic? Maybe the instrument that measures the
outcome is less accurate for larger outcome values. My errors are not
really normal, but if my sample is large then I don't need to worry
about that. (And most of this class did not rely on normality anyway!)
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
[ **Outliers** ]{style="color: royalblue"}
:::

::: frame
Outliers We observe data points of the form: (Y_i,X\_i1,...,X\_ik)

"Outliers" $\longrightarrow$ extreme values Consider the $i$'th
individual; can be extreme in several ways: $Y_i$, i.e., "outlying in
${\boldY}$"

$x_{ij}$, outlying w.r.t. $\boldX_j$ row $\boldX_i^T$, outlying w.r.t
$\boldX$

$\widehat{\epsilon}_i$ outlying relative to $\widehat{\boldepsilon}$:
outliers
:::

::: frame
Impact of Outliers Outliers can distort $\widehat{\beta}_j$'s recall:
sample means are sensitive to outliers $\widehat{\beta}_j$ is a weighted
sample mean of $Y_i$'s hence can be distorted Outliers may also distort
$\widehat{\sigma}^2$ $\widehat{\epsilon}_i$ outlier
$\Rightarrow \widehat{\sigma}^2=\frac{1}{n-p}\sum_{i=1}^n\widehat{\epsilon}_i^2$
Often difficult to detect outliers in $\boldX$-space visually (unless
SLR)
:::

::: frame
Leverage: Hat Diagonals $h_{ii}=$ leverage for $i$'th individual
$(i,i)$'th element of the ${\boldH}$ matrix Reflects outlyingness in
$\boldX$ space measures distance between $\boldX_i^T$ and
$\overline\boldX^T$

$\widehat{Y}_i$ and hence $\widehat{\epsilon}_i$ will be driven by the
units with large $h_{ii}$

Calculation: $h_{ii}=\boldX_i^T (\boldX^T\boldX)^{-1}   \boldX_i$

special case: SLR, h\_ii & = & +
:::

::: frame
Leverage: Interpretation

Individuals with large $h_{ii}$ may have disproportionate impact on the
$\widehat{\beta}_j$'s

Various criteria for "large" $h_{ii}>2\times \overline{h}$, where
$\overline{h}=\mbox{\# parameters}/n$ $0.2 \leq h_i
\leq 0.5$: moderate; $h_i>0.5$: large

Often useful to rank $h_{ii}$'s, in addition to applying the criteria

Note: $0 \leq h_{ii} \leq 1$
:::

::: frame
Outliers, summary

Important to detect outliers

Generally, not interested in formal test of outlyingness power of
existing tests is driven by $n$

but, small samples are where outliers may have the greatest impact!

Rarely should outliers be discarded

appropriate efforts should be made to ensure that the outliers *really
do* represent the process under study

not the result of data collection or coding error

discarding outliers may change the population to which the analysis
conclusions can generalize
:::

::: frame
Questions?
:::
