::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module J: General Linear Hypothesis**]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

GLH framework

Testing equality of regression coefficients

Examples
:::

::: frame
General Linear Hypothesis (GLH) To date, we have focused on testing
hypotheses through the Extra SS principle. e.g.,

${\boldY }={\boldX}\boldbeta+{\boldepsilon}$
$\boldbeta=(\boldbeta_1^T,\boldbeta_2^T)^T$

All null hypotheses took the form: $H_0:\boldbeta_2={\boldzero }$
$F = \frac{SS(\boldbeta_2\mid \boldbeta_1)/p_2}{\widehat{\sigma}_{\scriptscriptstyle \text{$1$} }
}
\sim F_{p_2,n-p}$
$SS(\boldbeta_2\mid \boldbeta_1)=SSR(\boldbeta_1,\boldbeta_2)-SSR(\boldbeta_1)$

Often, it is of interest to test more general hypotheses: e.g.,
$H_0: \beta_{1}=\beta_{2}=\beta_{3}$ (recall cell means coding) Using
the GLH principle, we have more flexibility to specify hypotheses
:::

::: frame
Example Example: consider a study designed to assess the relationship
between resting heart rate ($HR$) and age ($A$) among 30-54 year olds.

in order to avoid assuming that $E(HR)$ is linear in age, the following
model is specified: HR_i & = & \_0 + \_1AG\_1i + \_2AG\_2i +\_3AG\_3i +
\_4AG\_4i + \_i where: AG\_1i & = & I(30 A_i )\
AG\_2i & = & I(35 A_i )\
AG\_3i & = & I(40 A_i )\
AG\_4i & = & I(45 A_i )\
AG\_5i & = & I(50 A_i )
:::

::: frame
Example HR_i & = & \_0 + \_1AG\_1i + \_2AG\_2i +\_3AG\_3i + \_4AG\_4i +
\_i

However, the investigator hypothesizes that only four age groups may be
necessary, as mean heart rate in the 30-34 and 35-39 age groups are
equal This implies the following hypotheses: $H_0:\beta_1=\beta_2$,
$H_1:\beta_1 \neq \beta_2$

This test can easily be formulated as **a linear function of $\beta$'s**
$H_0:\beta_1-\beta_2=0$, $H_1:\beta_1 - \beta_2\neq 0$
:::

::: frame
GLH method

Any null hypothesis expressed as $H_0: {\boldT}{\boldbeta}={\boldcc}$ is
a GLH Entries in ${\boldT}$ and ${\boldcc}$ are known constants
${\boldT}$ is often referred to as the contrast matrix

Main idea of GLH: Find ${\boldT\ktimesp}$ s.t. the linear functions
${\boldT\ktimesp}{\boldbeta\ptimesone}=\boldcc$ gives the stated $H_0$
$k$ = number of equations simultaneously being tested $p$ = dimension of
$\boldbeta$ ${\boldT\ktimesp}$ is needed for constructing a test
statistic

In the example $H_0:\beta_1=\beta_2$, $H_1:\beta_1 \neq \beta_2$
equivalent to $H_0:\beta_1-\beta_2=0$, $H_1:\beta_1 - \beta_2\neq 0$
${\boldT\onetimesp}=[\begin{array}{ccccc}0 & 1 & -1 & 0 & 0
    \end{array}]$, s.t. ${\boldT}{\boldbeta}=\beta_1-\beta_2$ and
$\boldcc=0$
:::

::: frame
Constructing Test Statistic
$H_0:\boldT\ktimesp\boldbeta\ptimesone=\boldcc\ktimesone$ vs
$H_1:\boldT\ktimesp\boldbeta\ptimesone\neq \boldcc\ktimesone$ F-test for
GLH
$$\boxed{F=\frac{ ({\boldT}\widehat{\boldbeta}-{\boldcc})^T \{{\boldT}({\boldX}^T{\bf
        X})^{-1}{\boldT}^T\}^{-1} ({\boldT}\widehat{\boldbeta}-{\boldcc})/rank(\boldT) }{ \widehat{\sigma}^2_{\scriptscriptstyle \text{$1$}}}
 \stackrel{H_0}{\sim}  F_{rank({\bf
        T}),n-p}
}$$ For a well defined $H_0$, $rank(\boldT)$ = number of rows in
$\boldT$, i.e., how many equations (at most $p$) are we simultaneously
testing

$\widehat{\sigma}^2_{\scriptscriptstyle \text{$1$}}$: obtained from the
unrestricted model, i.e., under $H_1$

Derivation provided at the end of the slides Rationale:
$\underbrace{\boldT \widehat{\boldbeta}-\boldcc}_\text{denoted as $\boldZ$} \stackrel{H_0}{\sim} N\{ \;\boldzero,\;\; \underbrace{\sigma^2 \boldT \xtx^{-1} \boldT^T}_\text{denoted as $\boldSigma$} \;\}$
Under the null, $\boldZ^\top \boldSigma^{-1} \boldZ$ should be small
:::

::: frame
Example 1 Suppose the investigators want to examine whether the two
lowest and two highest age intervals could be combined HR_i & = & \_0 +
\_1AG\_1i + \_2AG\_2i +\_3AG\_3i + \_4AG\_4i + \_i

the pertinent hypotheses can be listed as: $H_0: \beta_1=\beta_2$,
$\beta_4=0$ $H_1:  \beta_1 \neq \beta_2$, or $\beta_4 \neq 0$ re-casting
$H_0$ in terms of the GLH, \_ & = &

$H_0: {\boldT_{\!\sf\scriptscriptstyle{2\times 5}}}\boldbeta_{\!\sf\scriptscriptstyle{5\times1}}={\boldzero }_2$
vs. $H_1: {\boldT}\boldbeta\neq {\boldzero }_2$ test statistic: F = \^2
F\_2,n-5
:::

::: frame
Example 2 $n=26$ subjects selected to participate in a study designed to
examine the effects of weight and activity level on cholesterol levels
(HDL)

Subjects were placed into one of three groups: Group 1: control (n=8)
Group 2: running (n=8) Group 3: running and weight training (n=10)
Response: HDL (mg/dl) Covariates: group, weight (lbs) Does the
association between weight and HDL differ by group?
:::

::: frame
Example 2, Stratified SLR models It is common in practice to fit
"stratified" models: Group 1:
$HDL_i, = \beta_1 + \beta_4 W_i + \epsilon_i$ Group 2:
$HDL_i = \beta_2 + \beta_5W_i + \epsilon_i$ Group 3:
$HDL_i = \beta_3 + \beta_6W_i + \epsilon_i$ Models are fitted separately
to "three datasets\" (each group is treated as a separate dataset).

Since there are three distinct regression lines, we have distinct slopes

distinct intercepts
:::

::: frame
Example 2 (From 3 SLR to 1 MLR) separate SLR models can be fitted on
three datasets

Ultimately we wish to see if the set of models can be simplified, i.e.,
are the 3 slopes the same? if the slopes are the same, are the
intercepts also the same? Fitting models separately does not readily
allow us to test differences in parameters

We can represent the previous set of group-specific models in a single,
more compact MLR model: ${\boldY } = {\boldX}\boldbeta + {\boldepsilon}$
where $\boldbeta^T=(\beta_1,\ldots,\beta_6)$. What should ${\boldX}$ be?
:::

::: frame
Example 2: From Group-specific SLRs to MLR Group 1:
${\boldY }_1 = {\boldX}_1\boldbeta_1 + {\boldepsilon}_1$ = +

Group 2: ${\boldY }_2 = {\boldX}_2\boldbeta_2 + {\boldepsilon}_2$ = +

Group 3: ${\boldY }_3 = {\boldX}_3\boldbeta_3 + {\boldepsilon}_3$ = +
:::

::: frame
Example 2: From Group-specific SLRs to MLR Group 1:
${\boldY }_1 = {\boldX}_1\boldbeta_1 + {\boldepsilon}_1$ = +

Group 2: ${\boldY }_2 = {\boldX}_2\boldbeta_2 + {\boldepsilon}_2$ = +

Group 3: ${\boldY }_3 = {\boldX}_3\boldbeta_3 + {\boldepsilon}_3$ = +
:::

::: frame
Example 2 (MLR model) Using the typical MLR
${\boldY } = {\boldX}\boldbeta + {\bf
\epsilon}$, where = = =\
=
$HDL=\beta_1G_{1}+\beta_2G_{2}+\beta_3G_{3}+\beta_4G_{1}W+\beta_5G_{2}W+\beta_6G_{3}W+\epsilon$,
where $G_j=I(\text{group } j),j=1,\dots,3$ and $W=(W_1,\dots,W_{26})$
Note: the above $\boldX$ *spans*, but does not contain, an intercept
:::

::: frame
Example 2: parallelism
$HDL=\underbrace{\left(\beta_1G_{1}+\beta_2G_{2}+\beta_3G_{3}\right)}_\text{intercept}+\underbrace{\left(\beta_4G_{1}+\beta_5G_{2}+\beta_6G_{3}\right)}_\text{slope}W+\epsilon$
Using the GLH approach, we can test whether the slopes of the
group-specific regression lines are equal $H_0: \beta_4=\beta_5=\beta_6$
(lines are parallel),\
$H_1:$ at least one of $\beta_j$, $j=4,5,6$, is different from the
others\
(at least one line is not parallel to the others) :
$H_0: \beta_4-\beta_5=0$ and $\beta_5-\beta_6=0$,\
[ **Equivalently**:]{style="color: white"}
$H_1:\beta_4 - \beta_5 \neq 0$ or $\beta_5 - \beta_6 \neq 0$ Note: third
contrast is redundant Re-framing $H_0$ in terms of the GLH, =
$H_0: {\boldT}\boldbeta={\boldzero }_2$ vs.
$H_1: {\boldT}\boldbeta\neq {\boldzero }_2$
:::

::: frame
Example 2: parallelism Test statistic: F = & & F\_2,20 see R code and
output: $F=2.95$ $p=P(F_{2,20}>2.95)=0.075$

This data is consistent with the parallelism hypothesis (null).

We have insufficient evidence to conclude the associations between
weight and HDL differ across exercise groups (p=0.075).
:::

::: frame
:::

::: frame
:::

::: frame
:::

::: frame
[Home Exercise]{.underline}: equality of intercepts

$HDL=\underbrace{\left(\beta_1G_{1}+\beta_2G_{2}+\beta_3G_{3}\right)}_\text{intercept}+\underbrace{\left(\beta_4G_{1}+\beta_5G_{2}+\beta_6G_{3}\right)}_\text{slope}W+\epsilon$
We can also test the equality of intercepts of the group-specific
regression lines $H_0: \beta_1=\beta_2=\beta_3$ Re-write hypotheses find
${\boldT}$ in GLH $H_0: {\boldT}\boldbeta= {\boldzero }_2$ vs.
$H_1: {\boldT}\boldbeta\neq {\boldzero }_2$ =

Test statistic:

$F=~~~~~~~~~~~~~\stackrel{H_0}{\sim} F_{2,20}$
$p=P(F_{2,20}>~~~~~~~~~~~)=$
:::

::: frame
:::

::: frame
[Home Exercise Answer Key]{.underline}: equality of intercepts

$HDL=\underbrace{\left(\beta_1G_{1}+\beta_2G_{2}+\beta_3G_{3}\right)}_\text{intercept}+\underbrace{\left(\beta_4G_{1}+\beta_5G_{2}+\beta_6G_{3}\right)}_\text{slope}W+\epsilon$
We can also test the equality of intercepts of the group-specific
regression lines $H_0: \beta_1=\beta_2=\beta_3$ Re-write hypotheses
$H_0: \beta_1-\beta_2=0, \beta_2-\beta_3=0$\
(many different ways, e.g.,) $H_0: \beta_3-\beta_1=0, \beta_2-\beta_1=0$
find ${\boldT}$ in GLH $H_0: {\boldT}\boldbeta= {\boldzero }_2$ vs.
$H_1: {\boldT}\boldbeta\neq {\boldzero }_2$ =

Test statistic:

$F=~~~3.12~~~~\stackrel{H_0}{\sim} F_{2,20}$
$p=P(F_{2,20}>~~~3.12~~~~)=0.066$
:::

::: frame
Example 2: Connection to reference cell coding and SS
$\boxed{HDL=\underbrace{\left(\beta_1G_{1}+\beta_2G_{2}+\beta_3G_{3}\right)}_\text{intercept}+\underbrace{\left(\beta_4G_{1}+\beta_5G_{2}+\beta_6G_{3}\right)}_\text{slope}W+\epsilon}$
**Cell means coding**:
$H_0: \underbrace{\beta_5-\beta_4}_\text{2 vs 1}=0; \underbrace{\beta_6-\beta_4}_\text{3 vs 1}=0$
(GLH) Re-parameterize the model: **Reference cell coding**: directly
parameterize $\beta_5-\beta_4$ and $\beta_6-\beta_4$ Slope of weight for
each group: $H_0:$ Extra SS test:
$F~~=~~ \frac{SS(~~~~~~~~~~~~~\mid ~~~~~~~~~~~~~)}{\widehat{\sigma}^2_{\scriptstyle 1}}\stackrel{H_0}{\sim} F_{~~~~,~~~~}$
:::

::: frame
Example 2: Extra SS Test of interactions
$HDL=\gamma_1+\gamma_2G_{2}+\gamma_3G_{3}+\gamma_4W+\gamma_5G_{2}W+\gamma_6G_{3}W+\epsilon$
Test the equality of **slopes** using extra SS & reference cell coding

Equality of slopes: are interactions significant given that main effects
are in the model?

Extra SS test for equal slopes: F& = &   =  2.95     F\_  ,  

i.e., same result as GLH test of equal slopes
:::

::: frame
:::

::: frame
Example 2: Extra SS Test of interactions

$HDL=\gamma_1+\gamma_2G_{2}+\gamma_3G_{3}+\gamma_4W+\gamma_5G_{2}W+\gamma_6G_{3}W+\epsilon$
Test the equality of **slopes** using extra SS & reference cell coding

Equality of slopes: are interactions significant given that main effects
are in the model?

Extra SS test for equal slopes: F   =      =   2.95     F\_2,20

i.e., same result as GLH test of equal slopes
:::

::: frame
[Home Exercise]{.underline}: Extra SS Test of Intercepts

$HDL=\gamma_1+\gamma_2G_{2}+\gamma_3G_{3}+\gamma_4W+\gamma_5G_{2}W+\gamma_6G_{3}W+\epsilon$
Test the equality of **intercepts** using extra SS & reference cell
coding

Equality of slopes: are intercepts significant given that slopes are
different?

Extra SS test for equal intercepts: F & = &   =   3.12    F\_  ,  

i.e., same result as GLH test of equal intercepts Note: GLH gives
partial test of intercepts, assuming slopes are different (i.e.,
assuming group x weight interactions are in the model).
:::

::: frame
:::

::: frame
[Home Exercise Answer Key]{.underline}: Extra SS Test of Intercepts

$HDL=\gamma_1+\gamma_2G_{2}+\gamma_3G_{3}+\gamma_4W+\gamma_5G_{2}W+\gamma_6G_{3}W+\epsilon$
Test the equality of **intercepts** using extra SS & reference cell
coding

Equality of slopes: are intercepts significant given that slopes are
different?

Extra SS test for equal intercepts: F & = &   =   3.12  \~  F\_2,20

i.e., same result as GLH test of equal intercepts Note: GLH gives
partial test of intercepts, assuming slopes are different (i.e.,
assuming group x weight interactions are in the model).
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
Constructing Test Statistic (proof)

Recall: $\widehat{\boldbeta} \sim N(\boldbeta, \sigma^2 \xtx^{-1} )$

therefore,
$\boldT \widehat{\boldbeta} \sim N\{ \;E[\boldT \widehat{\boldbeta}],\;\; Var(\boldT \widehat{\boldbeta}) \;\}$,
where E\[\] & = &\
Var()& & Var() \^T\
& = & \^2 \^-1 \^T

Under the null hypothesis
$E[\boldT \widehat{\boldbeta} - {\boldcc}] =\boldT \boldbeta   - {\boldcc}= {\boldzero }$

Therefore,
$\underbrace{\boldT \widehat{\boldbeta}-\boldcc}_\text{$\boldY$} \stackrel{H_0}{\sim} N\{ \;\boldzero,\;\; \underbrace{\sigma^2 \boldT \xtx^{-1} \boldT^T}_\text{$\boldSigma$} \;\}$

Applying Results 1-2 in the footnote $$\boxed{
    (\boldT \widehat{\boldbeta}-{\boldcc} )^T \{\sigma^2 \boldT \xtx^{-1} \boldT^T \}^{-1}   (\boldT \widehat{\boldbeta}-{\boldcc}) \sim \chi^2_{\scriptstyle \text{rank($\boldT$), $\lambda=0$}}
}$$
:::

::: frame
Constructing Test Statistic (proof continued) We have
$(\boldT \widehat{\boldbeta}-{\boldcc} )^T \{\sigma^2 \boldT \xtx^{-1} \boldT^T \}^{-1}   (\boldT \widehat{\boldbeta}-{\boldcc}) \stackrel{H_0}{\sim} \chi^2_{\scriptstyle \text{rank($\boldT$), $\lambda=0$}}$
$\frac{SSE}{\sigma^2 }   \sim  \chi^2_{\text{$n\!-\!p,\lambda \stackrel{\scriptscriptstyle \text{LINE}}{=}0$} }$
and $\widehat{\boldbeta}\ind SSE$ (Module F)

To derive a test statistic, we take their ratio (divide each by df)

F & = & (SSE/\^2)/(n-p)\
& = &\
& & F\_rank( **T**),n-p
:::

::: frame
Questions?
:::

::: frame
Group project Group assignments available on Canvas "People\" page
Presentation on December 6th and 8th Presentation order randomly
assigned. Please email us if you are not in the US time zone and have
time constraints Project report due at 11:59pm on December 10th Sample
project report
:::

::: frame
Confounding Definition: a pre-exposure variable that, conditional on
other covariates, is associated with outcome conditional on exposure
associated with exposure/treatment/POI

::: columns
::: column
0.5
:::

::: column
0.5
:::
:::

We adjust for confounders when studying the association between the
predictor of interest (POI) and the outcome Crude treatment effect is
biased unless treatment is randomized
:::

::: frame
Group project

**Determine question of interest (X and Y) via literature review**
hypothesis generation via e.g., model selection is not necessary model
selection for inference questions is not recommended

**Determine confounders to adjust via literature review**
:::
