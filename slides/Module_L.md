::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module L: Influence Diagnostics**]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

Outliers

Influence

Connection with leverage

Impact on regression coefficients

Impact on variance estimator

Examples

Text (MPV, 5th Ed.): Chapter 6
:::

::: frame
Big Picture

::: columns
::: column
0.5 A perfect world ![image](pic/fig11){height="1.3in"}
:::

::: column
0.5 Life is not perfect ![image](pic/fig12){height="1.3in"}
:::
:::

Red and blue are **high leverage points**: extreme $X_i$ Impact
$\widehat{Var}(\widehat{\beta})$ (due to $(\boldX^T\boldX)^{-1}$); May
impact $\widehat{\beta}$

Green and blue are **outliers**: extreme $\widehat{\epsilon}_i$ (big
vertical distance) Impact $\widehat{\sigma}^2$; May impact
$\widehat{\beta}$

Blue is an **influential point**: extreme $X_i$ and extreme
$\widehat{\epsilon}_i$ Impacts $\widehat{\beta}$ in addition to
$\widehat{Var}(\widehat{\beta})$ and $\widehat{\sigma}^2$
:::

::: frame
[ **Outliers** ]{style="color: royalblue"}
:::

::: frame
Outliers We observe data points of the form: (Y_i,X\_i1,...,X\_i,p)

Values of the $i$-th individual can be extreme in several ways: $Y_i$ is
extreme $\boldX_{i\cdot}$ is extreme

All can potentially lead to $\widehat{\epsilon}_i$ outlying relative to
$\widehat{\boldepsilon}$

"Outliers" = an observation with large residual $\widehat{\epsilon}_i$
An outlier is a point that does not fit the model

Often difficult to detect outliers in $\boldX$-space visually (unless
SLR)
:::

::: frame
Leverage: Hat Diagonals Reflects outlyingness in $\boldX$ space

$h_{ii}=$ leverage for $i$'th individual $(i,i)$'th element of the
${\boldH}$ matrix Calculation:
$h_{ii}=\boldX_i^T (\boldX^T\boldX)^{-1}   \boldX_i$

special case: SLR, h\_ii & = & +

High leverage points may have disproportionate impact on
$\widehat{\beta}$'s Since
$Var(\widehat{\epsilon}_i)=(1-h_{ii})\sigma^2$, if the leverage is large
then the fit will be "forced" close to $Y_i$
:::

::: frame
Leverage: Facts and Interpretation Bounds: (because $\boldH$ is
symmetric and positive semi-definite) & h\_ii &

Sample mean: = \_i=1\^n h\_ii = = =

Criterion for outlyingness in ${\bf X}$-space:

$h_{ii} > 2\overline{h}=2\frac{p}{n}$ $0.2 \leq h_{ii} < 0.5$: moderate;
$h_{ii}>0.5$: large

Often useful to rank $h_{ii}$'s, in addition to applying the criteria
:::

::: frame
Impact of Outliers Outliers can distort $\widehat{\sigma}^2$
$\widehat{\epsilon}_i$ outlier
$\Rightarrow \widehat{\sigma}^2=\frac{1}{n-p}\sum_{i=1}^n\widehat{\epsilon}_i^2$

Outliers can distort $\widehat{\beta}_j$'s recall: sample means are
sensitive to outliers $\widehat{\beta}_j$ is a weighted sample mean of
$Y_i$'s hence can be distorted
:::

::: frame
Outliers, summary

Generally, not interested in formal test of outlyingness power of
existing tests is driven by $n$: little power for small samples

small samples are where outliers may have the greatest impact!

Rarely should outliers be discarded

appropriate efforts should be made to ensure that the outliers *really
do* represent the process under study

not the result of data collection or coding error

discarding outliers may change the population to which the analysis
conclusions can generalize
:::

::: frame
[ **Influence Diagnostics** ]{style="color: royalblue"}
:::

::: frame
High-influence Points High-influence points are points that exhibit
both: 'high' leverage ("outlyingness\" in ${\bf X}$-space) 'large'
departure from trend ("outlyingness\" in $\boldepsilon$-space) will tend
to have largest influence on model results (graph):

![image](pic/fig12){height="1.8in"}
:::

::: frame
Other influential points Influence of ${\bf X}$-space outliers depends
on their residual Data points with high leverage but **not** outlier in
$\boldepsilon$-space could influence
$\widehat{Var}(\widehat{\boldbeta})$ but not influence
$\widehat{\boldbeta}$ or $\widehat{\sigma}^2$ (e.g., red point)
Influence of $\boldepsilon$-space outliers depends on their leverage
Outliers in $\boldepsilon$-space but with very small leverage could
influence $\widehat{\beta_0}$ and $\widehat{\sigma}^2$, but not other
slopes (e.g., green point)
:::

::: frame
Influence Diagnostics refers to the impact of the $i$-th observation on
the estimated $\widehat{\boldbeta}$,
$\widehat{Var}(\widehat{\boldbeta})$, and $\widehat{{\boldY}}$

Leave one out We will measure this influence by comparing the results of
the model with all observations to the model results with the $i$-th
observation taken out Throughout the notes we will use the subscript
$_{(-i)}$ to denote a vector or estimator with the $i$-th observation
taken out
:::

::: frame
Influence: Measures Commonly used measures of the influence of subject
$i$: $DFFITS_i=$ influence on $\widehat{Y}_i$ (studentized DFFIT)
$DFBETAS_{k,i}=$ influence on $\widehat{\beta}_k$ Cook's Distance,
$D_i=$ influence on $\widehat{\boldbeta}$ $COVRATIO_i=$ influence on
$Var(\widehat{\boldbeta})$

Each measure reflects difference between subject $i$ being (and not
being) included in the sample Recommended cutoffs are 'not absolute
rules' (similar to $h_{ii}$)
:::

::: frame
$DFFITS_i$: (Standardized) Difference in Fits To measure the influence
of individual $i$ on $\widehat{Y}_i$ Refit the model with $i$-th
observation taken out:
$\widehat{\boldbeta}_{(-i)}  =  ({\bf X}_{(-i)}^T{\bf
        X}_{(-i)})^{-1}{\bf X}_{(-i)}^T{\bf Y}_{(-i)}$ and get
$\widehat{Y}_{(-i)}  =  {\bf x}_i^T\widehat{\boldbeta}_{(-i)}$ DFFITS_i=
In the numerator is the change in predicted values In the denominator:
recall $Var(\widehat{\boldY})=Var(\boldH{\boldY})=\sigma^2\boldH$, hence
$Var(\widehat{\boldY}_i)=\sigma^2h_{ii}$

$|DFFITS_i| > 2\sqrt{p/n}$ is considered highly influential
:::

::: frame
$DFFITS_i$: Alternative Calculation Lots of model fitting: need to refit
the model $n$ times! It is not necessary to re-fit model without $i$'th
subject to compute $DFFITS_i$ because it can be shown that: DFFITS_i & =
& \_(-i) { }\^1/2

where $\widehat{r}_{(-i)}$ is the externally studentized residual (also
called R-student -- you may find this in some R package)
:::

::: frame
$DFBETAS_{k,i}$: (Standardized) Difference in $\widehat{\beta}_k$

To measure the influence of individual $i$ on the estimated regression
coefficient $\beta_k$, define: DFBETAS\_k,i & = & , where $c_{kk}=$
$k^{th}$ diagonal element of $({\bf X}^T{\bf X})^{-1}$ recall that
$Var(\beta_k)$ is the $k^{th}$ diagonal element of
$\sigma^2 ({\bf X}^T{\bf X})^{-1}$

$DFBETAS_{k,i}$ is the standardized change in $\widehat{\beta}_k$ which
would result from deleting subject $i$

$|DFBETAS_{k,i}| > 2/\sqrt{n}$ is considered highly influential
:::

::: frame
$DFBETAS_{k,i}$: Alternative Calculation Instead, fast method computing
$DFBETAS$ involves ${\bf W}$: & = & (**X**\^T**X**)\^-1**X**\^T =

i.e., $\widehat{\boldbeta} ={\bf W Y}$, thus
$\widehat{\beta}_k = \sum_{j=1}^n w_{k,j} Y_j$ $w_{k,i}$ is the weight
given to observation $i$ to determine $\widehat{\beta}_k$; $\boldww_{k}$
is a $1\times n$ row vector

It can be shown that: DFBETAS\_k,i & = &
:::

::: frame
Cook's Distance: Influence on $\widehat{\boldbeta}$

$DFBETAS_{k,i}$ pertain to each $\widehat{\beta}_k$ individually Cook's
distance, denoted $D_i$, is a summary of subject $i$'s influence on
$\widehat{\boldbeta}$ overall,

D_i & = & (-\_(-i))\^T{() }\^-1 (-\_(-i))/p\
& &\
&=&

$D_i$ is the standardized squared distance between $\widehat{\boldbeta}$
and $\widehat{\boldbeta}_{(-i)}$ $D_i>0$, since $({\bf X}^T{\bf X})$ is
a positive-definite matrix

Available cutoffs: $D_i>1$, $D_i>f_{\alpha; p, n-p}$ (textbook);
$D_i>3*\overline{D}$ $D_i>4/n$ (SAS and R)
:::

::: frame
Cook's Distance: Alternative Calculation Refit the model $n$ times
$\dots$ It can be shown that $D_i$ can be rewritten as:
$$D_i = \frac{r_i^2}{p}\frac{h_{ii}}{1-h_{ii}},$$ thus instead of
refitting model, use this formula, where $r_i$ is the $i$-th internally
studentized residual
:::

::: frame
$COVRATIO_i$: Influence on Variance-Covariance Matrix Define the
*generalized variance* (GV): GV & = & \|Var()\| = \|\^2(**X**\^T
**X**)\^-1\| i.e., use the determinant $|\cdot|$ to summarize
$Var(\widehat{\boldbeta})$ into a scalar. Larger variances $\iff$ Larger
GV

Summarize subject $i$'s influence on precision of estimation with:
COVRATIO_i = where
$\widehat{GV} = |\widehat{\sigma}^2({\bf X}^T{\bf X})^{-1}|$;
$\widehat{GV}_{(-i)}  =  |\widehat{\sigma}^2_{(-i)}({\bf
    X}_{(-i)}^T{\bf X}_{(-i)})^{-1}|$ Cutoff: $>1$: the $i$-th
observation increases precision (reduces variance) $i$ is influential if
$COVRATIO_i>1 + 3 p/n$ or $<1 - 3 p/n$
:::

::: frame
$COVRATIO_i$: Alternative Calculation Simpler form: COVRATIO_i & = & {
}\^p { },\
Suppose $\widehat{\sigma}^2_{(-i)}=\widehat{\sigma}^2$, then high
leverage increases $COVRATIO_i$, so *including* $i$ will increase
precision

recall in SLR, higher $SSX$ reduces variance of $Var(\widehat{\beta}_1)$

Suppose $h_{ii}=0$, then if $i$-th is an outlier $COVRATIO_i<1$,\
so *including* $i$ will decrease precision For an outlier with large
$\widehat{\epsilon}_i$ \< 1 { }\^p \<\< 1,
:::

::: frame
Influence Diagnostics: Summary Best to use influence diagnostics as
descriptive tools Cut points defining "influential" should be applied
with caution may be more useful to rank and list subjects with high
influence

Where possible, investigate highly influential data points for accuracy
justify exclusion of data points based *only* on their influence
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
:::

::: frame
:::

::: frame
:::

::: frame
Questions?
:::
