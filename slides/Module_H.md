::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module H: Categorical Covariates** ]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

Qualitative covariates

Coding schemes; design matrices

Interpretation of parameters

Scoring categorical covariates

Replacing continuous with categorical covariates

Examples

MPV 5th edition: Chapter 8
:::

::: frame
Regression: Categorical Covariates Type of covariates: : well-defined
scale of measurement : represented by categories

Until now, most covariates we have dealt with have been quantitative:
e.g, age, height, weight, estriol, etc.

Categorical predictors are often of interest:

e.g., race, gender, geography (state, region, county, country)

may even wish to categorize continuous variables improve interpretation
of parameters model diagnostics for linear trend (Module K)
:::

::: frame
Categorical Covariates :

Consider an investigation designed to compare out-of-pocket health care
expenditures among farmers

A random sample of 4 farmers was taken from each of 3 states: Michigan,
North Carolina and Wisconsin ($n=12$)

Question: is state associated with health care costs? That is, are mean
health care costs of the 3 states any different? Outcome: out-of-pocket
health care cost Let $Y_i=$ cost for farmer $i$ (dollar)

Predictor of interest: state (categorical with 3 categories) How to
represent different states?
:::

::: frame
Reference Cell Coding Suppose you have a categorical variable with k
categories $0,1, 2, \dots, k-1$. To represent that variable we can
construct $k-1$ **dummy variables** (indicators) of the form

The omitted category (here category 0) is the reference group Let's take
[Wisconsin]{.underline} as the reference group and set up the following
two dummy variables for state: $MI_i=I(\mbox{farmer $i$ from Michigan})$

$NC_i=I(\mbox{farmer $i$ from North Carolina})$
:::

::: frame
Reference Cell Coding

Model (ANOVA, analysis of variance):
$$Y_i = \beta_0 + \beta_1 MI_i + \beta_2 NC_i +  \epsilon_i$$

       State        MI   NC                Mean Cost[place holder place holder ]{style="color: white"}
  ---------------- ---- ---- ---------------------------------------------------------------------------------------
     Wisconsin      0    0    $\mu_{\scriptscriptstyle WI}=$[place holder place holder place]{style="color: white"}
      Michigan      1    0    $\mu_{\scriptscriptstyle MI}=$[place holder place holder place]{style="color: white"}
   North Carolina   0    1    $\mu_{\scriptscriptstyle NC}=$[place holder place holder place]{style="color: white"}

Interpretation of parameters: $\beta_0=$ $\beta_1=$ $\beta_2=$

Known as *reference cell* or *regression* coding: most widely used
:::

::: frame
Reference Cell Coding: Hypothesis Testing

Model: $$Y_i = \beta_0 + \beta_1 MI_i + \beta_2 NC_i +  \epsilon_i$$ Is
expenditure different across states? $H_0:$ no difference in group means
$H_1:$ expenditures in at least one state is different from others Test
statistic:
:::

::: frame
Why not use $k$ indicator variables?

::: columns
::: column
0.65 Model:
$Y_i = \beta_0 + \beta_1 MI_i + \beta_2 NC_i + \beta_3 WI_i +
        \epsilon_i$

Each category is represented in the model, along with an intercept

Consider the design matrix (subjects ordered by alphabetically, and by
state)

Problem with this design matrix:
:::

::: column
0.35 $$\begin{aligned}
        {\bf X} & = & \left[ \begin{array}{cccc} 1 & 1 & 0 & 0 \\
        1 & 1 & 0 & 0 \\
        1 & 1 & 0 & 0 \\
        1 & 1 & 0 & 0 \\
        1 & 0 & 1 & 0 \\
        1 & 0 & 1 & 0 \\ 1 & 0 & 1 & 0 \\1 & 0 & 1 & 0 \\
        1 & 0 & 0 & 1 \\
        1 & 0 & 0 & 1 \\
        1 & 0 & 0 & 1 \\
        1 & 0 & 0 & 1 \\
        \end{array}\right]
        \nonumber
        
\end{aligned}$$
:::
:::
:::

::: frame
Cell Means Coding

::: columns
::: column
0.65

Another way: eliminate intercept

Model:\
$Y_i= \beta_1 MI_i + \beta_2 NC_i + \beta_3 WI_i +
    \epsilon_i$

Interpretation of parameters: $\beta_1=$ $\beta_2=$ $\beta_3=$
:::

::: column
0.35 $$\begin{aligned}
    {\bf X} & = & \left[ \begin{array}{ccc}  1 & 0 & 0 \\
    1 & 0 & 0 \\
    1 & 0 & 0 \\
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 1 & 0 \\  0 & 1 & 0 \\ 0 & 1 & 0 \\
    0 & 0 & 1 \\
    0 & 0 & 1 \\
    0 & 0 & 1 \\
    0 & 0 & 1 \\
    \end{array}\right]
    \nonumber
    
\end{aligned}$$
:::
:::
:::

::: frame
Cell Means Coding: Hypothesis Testing

Model: $$Y_i= \beta_1 MI_i + \beta_2 NC_i + \beta_3 WI_i +
\epsilon_i$$ Is expenditure different across states? $H_0:$ no
difference in expenditures across states $H_1:$ expenditures in at least
one state is different from others Test statistic will be constructed
using GLH (Module J)
:::

::: frame
Scoring Categories Another option: transform them into quantitative
covariates $\ldots$ assign a score to each category: ordinal variables

e.g., one could score the states as follows:

   State   $S$
  ------- -----
    MI      1
    NC      2
    WI      3

then fit the following model $$\begin{aligned}
Y_i & = & \beta_0 + \beta_1 S_i + \epsilon_i \nonumber
\end{aligned}$$

Limitations of this approach: Assumes differences between adjacent
groups are equal Ordering and spacing (e.g. income) of $S$ could be
arbitrary
:::

::: frame
Test of trend using scored categories Suppose you have ordinal
categories and fit the model
$Y_i  =  \beta_0 + \beta_1 S_i + \epsilon_i$ e.g., to examine the
relationship between health care costs (Y) and income level (S) scored
as

            Income Level             $S$   or $S_2$
  --------------------------------- ----- ----------
            low (10-20 k)             1       1
          medium (20-30 k)            2       2
   high ($>$`<!-- -->`{=html}30 k)    3       5

What information or inference can we get from $\beta_1$? Learn about a
trend (positive or negative) between predictor and outcome by looking at
the sign of $\beta_1$ Assuming the score values "make sense\", then we
can also test $H_0: \beta_1=0$ (no linear trend); $H_1: \beta_1\neq0$
(there is "a\" trend); Caution in interpretation since test will depend
on scores chosen
:::

::: frame
Adjusted Comparison between Groups [Example]{.underline}: Let's
reconsider the previous example regarding out-of-pocket health care
costs. Suppose that each farmer's age (in years) was also available.

We could use the following model (ANCOVA, analysis of covariance):
$$\begin{aligned}
Y_i & = & \beta_0 + \beta_1 MI_i + \beta_2 NC_i  + \beta_3 A_i
+ \epsilon_i
\nonumber
\end{aligned}$$

Interpretation of $\beta_3$: *mean change in health care costs per year
increase in age, comparing farmers in the same state.*
:::

::: frame
Adjusted Comparison between Groups: Hypothesis Testing

Model (ANCOVA, analysis of covariance): $$\begin{aligned}
Y_i & = & \beta_0 + \beta_1 MI_i + \beta_2 NC_i  + \beta_3 A_i
+ \epsilon_i
\nonumber
\end{aligned}$$

Is there a difference in costs across states after adjusting for age?
$H_0:$ no difference in costs across states adjusting for age $H_1:$
costs in at least one state is different from others adjusting for age
Test statistic:
:::

::: frame
Categorizing Continuous Covariates

Investigators sometimes prefer to compare categories, rather than a *per
unit* increase Could break age into categories; define (assume all ages
$\geq 20$): $A_{i1}=I(20 \leq A_i \leq 29)$
$A_{i2}=I(30 \leq A_i \leq 39)$ $A_{i3}=I(40 \leq A_i \leq 49)$
$A_{i4}=I(50 \leq A_i \leq 59)$ $A_{i5}=I(A_i \geq 60 )$: take oldest
group as reference group

Corresponding model: $$\begin{aligned}
Y_i & = &  \beta_0 + \beta_1 MI_i + \beta_2 NC_i +\nonumber \\ & &
\beta_3 A_{i1}   + \beta_4 A_{i2}   + \beta_5 A_{i3}   + \beta_6 A_{i4}
+ \epsilon_i
\nonumber
\end{aligned}$$ interpretation of $\beta_3$: *mean difference in cost
(age 20-29 minus age $\geq$`<!-- -->`{=html}60), comparing farmers in
the same state.* interpretation of $\beta_0$:
:::

::: frame
Comparing two age models: robustness and efficiency

::: center
Is age associated with health care costs adjusting for state?
:::

::: columns
::: column
0.45\
${\color{white}{Y_i  = }}\beta_3 A_i+ \epsilon_i$ $H_0:$ $H_1:$ $F=$
:::

::: column
0.55\
${\color{white}{Y_i  = }} \beta_3 A_{i1}  + \beta_4 A_{i2}   + \beta_5 A_{i3}   + \beta_6 A_{i4} + \epsilon_i$
$H_0:$ $H_1:$ $F=$
:::
:::
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
