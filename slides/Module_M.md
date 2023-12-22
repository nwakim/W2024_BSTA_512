::: frame
Reminder

Please send a list of team member responsibility and arrangement of
tasks to both instructors and both GSIs via email (due on Nov 29th at
11:59pm). Each team only needs to email one copy. Please copy all team
members.
:::

::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module M: Multicollinearity** ]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

Causes of multicollinearity

Quantifying degree of collinearity

Impact on regression coefficients

Remedial measures

Examples

Textbook (MPV, 5th Ed.): Chapter 9, and 3.10
:::

::: frame
Multicollinearity In MLR, we expect the covariates to be *somewhat*
correlated

: one or more columns of ${\boldX}$ is **highly correlated** with (some
of) the remaining columns

"highly correlated" means "almost" linear dependency, e.g.
$\boldX_i\approx a_j\boldX_j$ for some $j$
$\boldX_i\approx \sum_{j\neq i} a_j\boldX_j$ for some $j$'s

i.e., ${\boldX}$ will be **"almost" less than full rank (LTFR)**
Perfectly LTFR: $(\boldX^T\boldX)$ is not invertible "almost" LTFR:
"technically\" full rank hence can invert $(\boldX^T\boldX)$, but may
still have some problems
:::

::: frame
Sources of Multicollinearity Multicollinearity may arise for various
reasons; e.g.,

inadequate sampling e.g., sampling frame which leads to study population
with similar covariate values poor choice of model covariates e.g.,
including covariates which are measuring the same underlying entity,
e.g. polynomial term; weight and BMI

ill-conditioned covariates e.g., categorical variables with very few
subjects in a category, or covariates with very little variability
:::

::: frame
Consequences of Multicollinearity

Major issue when objective is *estimation* and/or *inference*

coefficients can be unstable variances ($Var(\widehat{\beta})$) inflated

Somewhat less of an issue when primary goal is *prediction* Predictions
based on fitted model will be OK as long as the new observations have
covariate values well within the data used to fit the model inaccurate
for even slight extrapolations
:::

::: frame
Measure of Multicollinearity Measure impact of multicollinearity It can
be shown that Var(\_j)=\^2{(\^T)\^-1}\_jj=\_ $\frac{1}{1-R^2_j}$ is
referred to as the **variance inflation factor (VIF)**, where $R^2_j$ is
the $R^2$ from the model where we regress ${\boldX}_j$ on the remaining
columns of ${\boldX}$: \_j = \^\*\_0 \_n + \_-j  \^\* + \^\* Large
$R_j^2$ indicates near-linear relationship between $\boldX_j$ and all
other covariates, i.e. multicollinearity; hence larger inflation in
$Var(\widehat{\beta}_j)$
:::

::: frame
Measure of Multicollinearity (continued)

Variance inflation factor (VIF) $VIF_j=\frac{1}{1-R^2_j}$ Doesn't depend
on $\boldY$ e.g., if we fit
$\log({\boldY}) = \boldone_n \gamma_0 + {\boldZ}\boldgamma + {\boldepsilon}$,
$VIF_j$ remains the same Invariant under centering and scaling of all
covariates Because
$R^2_j=\widehat{corr}(\boldX_j,\widehat{\boldX}_j={\boldX}_{-j}\widehat{\alpha})^2$
e.g., if we fit
${\boldY} = \boldone_n \gamma_0 + {\boldZ}\boldgamma + {\boldepsilon}$,
where
${\boldZ}_j=\frac{{\boldX}_j-\overline{X}_j\boldone_n }{\sqrt{SSX_j}}$,
then $VIF_j$ remains the same, and
$Var(\widehat{\gamma}_j)=\frac{\sigma^2}{1-R_j^2}$ as $SSZ_j=1$
$VIF_j \geq 1$ because
$R_j^2=1-\frac{\sum_{i=1}^n(Y_i-\widehat{Y}_i)^2}{\sum_{i=1}^n(Y_i-\overline{Y})^2}\in [0,1]$
$VIF_j =1$: $\boldX_j$ is uncorrelated with all other covariates
($R_j^2=0$) $VIF_j > 10$: large effect of multicollinearity on
$Var(\widehat{\beta}_j)$
:::

::: frame
Measure of Multicollinearity (continued)

Interpretation: $VIF_j$ is the ratio of the variance of
$\widehat{\beta}_j$ in a dataset with correlations among covariates
(i.e.,
$Var(\widehat{\beta}_j)=\frac{\sigma^2}{ SSX_j} \frac{1}{1-R^2_j}$) vs
the variance in an "ideal" dataset where the covariates are perfectly
uncorrelated with $\boldX_j$ (i.e.,
$Var(\widehat{\beta}_j)=\frac{\sigma^2}{ SSX_j}$) and everything else
the same.
:::

::: frame
Need for additional diagnostics VIFs tell us which coefficients'
variances are being inflated due to collinearity
$Var(\widehat{\beta}_j)=\frac{\sigma^2}{ SSX_j} \frac{1}{1-R^2_j}$\
i.e., if large proportion of variance of ${\boldX}_j$ is explained by
other covariates in the model, then $Var(\widehat{\beta}_j)$ will be
large (compared to when columns of are orthogonal) However, VIFs do not
tell us *which* of the remaining covariates are the ones that explain
the variance of ${\boldX}_j$ If we can find *which* covariates are
collinear with ${\boldX}_j$, we can investigate why and propose a
corrective action (e.g., remove some of the columns of ${\boldX}$ (if
you are interested, see textbook Chapter 9.3)
:::

::: frame
Multicollinearity: Remedies

Typically: remove one or more of the covariates involved in the
collinearity problem

Fit (SSR) of regression model will likely *not* be notably reduced (Why
not?)

Often one covariate eliminated at a time

could remove $X_k$ with largest $VIF_k$ first

procedure continued until collinearity problem has been resolved
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
Questions?
:::

::: frame
Ridge Regression Alternative to OLS

In presence of multicollinearity, $\widehat{\boldbeta}$ from OLS is
still unbiased, although unstable reflected by large
$Var(\widehat{\boldbeta})$

Mean squared error of an estimator mse() & = & bias\^2() + Var()
reflects a compromise between bias and variance.

Key idea: may be possible to reduce *mse* by introducing *bias*
:::

::: frame
Ridge Regression: Method

Ridge estimator: \_R & = & (\^T + k)\^-1 **X**\^T, where $k$ is a
(small) constant

Several methods for choosing $k$; e.g, k & = & where $\boldbeta$ is
$p\times 1$

could update $k$ sequentially

Advantage: you don't have to kick out any covariates Disadvantage:
traditional inference not exact
:::
