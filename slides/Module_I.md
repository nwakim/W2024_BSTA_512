::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module I: Interactions**]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

Modeling using interactions

Interpreting parameters of interaction models

Interactions involving categorical covariates

Examples

MPV 5th edition: Chapter 8
:::

::: frame
Multiple Regression: Interaction Consider a linear regression model with
two covariates: $$\begin{aligned}
    Y_i & = & \beta_0 + \beta_1X_{i1}+ \beta_2X_{i2} + \epsilon_i \nonumber
    \\
    E[Y_i|X_{i1},X_{i2}] & = & \beta_0 + \beta_1X_{i1}+ \beta_2X_{i2}
    \nonumber
\end{aligned}$$

Recall: interpretation of coefficients:

$\beta_0=$ $E[Y]$, when all covariates equal 0 $\beta_1=$ mean change in
$Y$, per unit increase in $X_1$, with $X_2$ held constant

Note: to interpret $\beta_1$, we did not specify any value of $X_2$;
only specified that it be held constant

implicit assumption: effect of $X_1$ is equal across all values of $X_2$
:::

::: frame
Interaction: Description The preceding model assumes that $X_{1}$ and
$X_{2}$ do not *interact* (with respect to their effect on $Y$)
epidemiology: no "effect modification" meaning the effect of $X_{1}$ is
the same regardless of the values of $X_{2}$ We can incorporate
interactions into our model through product terms:
$$\boxed{Y_i  =  \beta_0 + \beta_1X_{i1}+ \beta_2X_{i2} +
    \beta_3X_{i1}X_{i2} + \epsilon_i}$$

Terminology: main effect parameters: $\beta_1,\beta_2$

interaction parameter: $\beta_3$
:::

::: frame
Types of Interactions

Common types of interactions: : $X_{i1}$ strengthens the $X_{i2}$ effect

: $X_{i1}$ weakens the $X_{i2}$ effect

To determine *synergism* vs. *antagonism* use model with interaction
term look sign of $X_{i1}\times X_{i2}$ parameter and test significance
of the interaction coefficient

If not significant: no evidence of effect modification, i.e., the effect
of $X_{1}$ does not vary with $X_{2}$

The main effect models estimate the *average* $X_{i1}$ and $X_{i2}$
effects
:::

::: frame
Interaction Models: Interpretation

Q: How to interpret the parameters in the interaction model?

Recall: main effects model,
$E[Y_i\mid X_{i1},X_{i2} ]=\beta_0 + \beta_1X_{i1} +
\beta_2X_{i2}$
$$\frac{\partial E[Y_i\mid X_{i1},X_{i2} ]}{\partial X_{i1}} = \beta_1$$
interpretation of $\beta_1$ does not involve $X_{i2}$

Interaction model:
$E[Y_i\mid X_{i1},X_{i2} ]=\beta_0 + \beta_1X_{i1} + \beta_2X_{i2} +
\beta_3X_{i1}X_{i2}$
$$\frac{\partial E[Y_i\mid X_{i1},X_{i2} ]}{\partial X_{i1}} = \beta_1 +
\beta_3X_{i2}$$ effect of $X_{i1}$ depends on value of $X_{i2}$ involves
more than one coefficient and other covariates
:::

::: frame
Interactions: Interpretation

The "main effect\" in main effects model: $$\begin{aligned}
\beta_1 & = & \frac{\partial E[Y_i\mid X_{i1},X_{i2}]}{\partial X_{i1}} \nonumber
\end{aligned}$$

The "main effect\" in interaction model: $$\begin{aligned}
\beta_1 & \neq & \frac{\partial E[Y_i\mid X_{i1},X_{i2}]}{\partial X_{i1}} \nonumber
\end{aligned}$$

in fact, $\beta_1=$ change in $E[Y]$ per unit increase in $X_{i1}$, when
$X_{i2}=0$

depending on the nature of $X_{i2}$, this may be an undesirable
interpretation Thus, for interaction model, we have a clear expression
for the effect of $X_{i1}$; but, $\beta_1$ itself *may* have an awkward
interpretation Be extremely careful when interpreting the coefficients
for the "main effects\" when there is an interaction in the model
:::

::: frame
Interactions: Interpretation (continued)
$E[Y_i\mid X_{i1},X_{i2} ]=\beta_0 + \underbrace{(\beta_1+\beta_3X_{i2}) }_\text{$X_{i1}$'s effect} X_{i1}+ \underbrace{\beta_2X_{i2}}_\text{$X_{i2}$ held constant}$\
${\color{white}{E[Y_i\mid X_{i1},X_{i2} ]}}=\beta_0 + \underbrace{(\beta_2+\beta_3X_{i1}) }_\text{$X_{i2}$'s effect}X_{i3} + \underbrace{\beta_1X_{i1}}_\text{$X_{i1}$ held constant}$

For the product term, $$\begin{aligned}
\beta_3 & = & {\color{royalblue}{\frac{\partial^2 }{\partial X_{i1}\partial
            X_{i2}}}} E[Y_i\mid X_{i1},X_{i2}]\nonumber
\end{aligned}$$

Interpretation: $\beta_3$ = mean change in $X_{i1}$'s effect, per unit
increase in $X_{i2}$;\
[$\beta_3$]{style="color: white"} = mean change in $X_{i2}$'s effect,
per unit increase in $X_{i1}$; where the "$X_{i1}$ effect" equals the
change in $E[Y]$ per unit increase in $X_{i1}$ with $X_{i2}$ held
constant, i.e. "adjusted $X_{i1}$ effect\"

In summary, the interaction term can be interpreted as "difference in
adjusted $X_1$ (or $X_2$) effect per unit increase in $X_2$ (or $X_1$)\"
:::

::: frame
Interaction between Categorical and Continuous Variables

Example: Pediatric Hypertension: A clinician wishes to examine the
relationship between systolic blood pressure (SBP) and covariates age
and gender

Questions of interest: For males and females of the same age, is SBP
different, on average? Is the gender effect on SBP independent of age?
Does mean SBP change with age? Is the age effect on SBP the same for
males and females?
:::

::: frame
Example: Main Effects Model

Main effects model:
$SBP_i=\beta_0 + \beta_1 A_i + \beta_2 F_i + \epsilon_i$ $A_i=$ age
(years) $F_i=I($subject $i$ is female) Interpretation of parameters:
$\beta_0 =E[SBP|A=0,F=0]$ $\beta_1 = E[SBP|A=a+1,F=1]  -E[SBP|A=a,F=1]$
${\color{white}{\beta_1}}= E[SBP|A=a+1,F=0]  -E[SBP|A=a,F=0]$
$\beta_2  =  E[SBP|A=a,F=1]  - E[SBP|A=a,F=0]$
:::

::: frame
Example: Main Effects Model

The main effects model implies the following relationship: lines have
same slope, different intercepts The main effects model assumes no
interaction between age and gender w.r.t. SBP
:::

::: frame
Example: Interaction Model Interaction model:
$SBP_i = \beta_0 + \beta_1 A_i + \beta_2 F_i + \beta_3 A_iF_i +
\epsilon_i$ Can pose the question of interaction in two ways
(symmetric): Is the age-adjusted difference in mean SBP between males
and females constant across all ages?
$SBP_i = \beta_0 +  \underbrace{\beta_1 A_i}_\text{age adjusted} + \underbrace{(\beta_2 +\beta_3 A_i)}_\text{sex effect}  F_i+
    \epsilon_i$

Is the sex-adjusted mean change in SBP per year of age equal for males
and females?
$SBP_i = \beta_0 +  \underbrace{\beta_2 F_i}_\text{sex adjusted} + \underbrace{(\beta_1+\beta_3F_i)}_\text{age effect} A_i +
\epsilon_i$
:::

::: frame
Example: Interaction Model

The interaction model implies two separate regression lines

$SBP_i = \beta_0 + \beta_1 A_i + \beta_2 F_i + \beta_3 A_iF_i +
\epsilon_i$ For male ($F=0$): $SBP_i = \beta_0 + \beta_1 A_i + 
    \epsilon_i$

For female ($F=1$):

$SBP_i = (\beta_0+\beta_2) + (\beta_1+\beta_3)\; A_i  +
\epsilon_i$

The two lines have different slope, different intercepts
:::

::: frame
Example: Interaction Model

The interaction model implies the following relationship: lines have
distinct intercepts and distinct slopes
:::

::: frame
Example: Interaction Model

Hypothesis testing

$SBP_i = \beta_0 + \beta_1 A_i + \beta_2 F_i + \beta_3 A_iF_i +
\epsilon_i$ Question 1: Is the adjusted gender effect on SBP independent
of age? Is the adjusted age effect on SBP the same for males and
females? How to test for significance of interaction term? $H_0:$ $H_1:$
$F=$

$T=$
:::

::: frame
Example: Interaction Model

Hypothesis testing

$SBP_i = \beta_0 + \beta_1 A_i + \beta_2 F_i + \beta_3 A_iF_i +
\epsilon_i$ Question 2: Does mean SBP change with age? What about sex?
How to test for significance of a covariate, e.g., age?
$SBP_i = \beta_0 + (\beta_1+\beta_3F_i)  A_i + \beta_2 F_i +
\epsilon_i$ $H_0:$ $H_1:$ $F=$
:::

::: frame
Example: Interaction Model

Recall the interaction model implies two separate regression lines

$SBP_i = \beta_0 + \beta_1 A_i + \beta_2 F_i + \beta_3 A_iF_i +
\epsilon_i$ For male ($F=0$): $SBP_i = \beta_0 + \beta_1 A_i + 
\epsilon_i$

For female ($F=1$):
$SBP_i = (\beta_0+\beta_2) + (\beta_1+\beta_3)\; A_i  +
\epsilon_i$

How to calculate 95% CI for age effect among females? Point estimate:
$\widehat{\beta}_1+\widehat{\beta}_3$ Standard error:
$\text{SE}(\widehat{\beta}_1+\widehat{\beta}_3)=\sqrt{\widehat{Var}(\widehat{\beta}_1+\widehat{\beta}_3)}=\sqrt{\widehat{Var}(\widehat{\beta}_1)+\widehat{Var}(\widehat{\beta}_3)+2\widehat{Cov}(\widehat{\beta}_1,\widehat{\beta}_3)}$
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
Shifting Covariates in Main Effects Model

Main effects model: $E[Y_i]=\beta_0 + \beta_1X_{i1} + \beta_2X_{i2}$

Shifting Covariates: set $X_{i1}^*=X_{i1}-a$, $X_{i2}^*=X_{i2}-b$

Revised model: $$\begin{aligned}
        E[Y_i] & = &\beta_0^* + \beta_1^*X_{i1}^* + \beta_2^*X_{i2}^*
        \nonumber \\ & = & \beta_0^* + \beta_1^*(X_{i1}-a) +
        \beta_2^*(X_{i2}-b)
        \nonumber
    
\end{aligned}$$

Examining the parameters: $$\begin{aligned}
        \beta_1^* & = & \frac{\partial E[Y_i\mid X_{i1},X_{i2}]}{\partial X_{i1}}
        \;\;\;(=\beta_1)\nonumber \\
        \beta_2^* & = & \frac{\partial E[Y_i\mid X_{i1},X_{i2}]}{\partial X_{i2}}
        \;\;\;(=\beta_2) \nonumber \\
        \beta_0^* & = &
        E[Y_i|X_{i1}=a,X_{i1}=b] \;(\neq \beta_0:  E[Y_i|X_{i1}=0,X_{i1}=0]) \nonumber
    
\end{aligned}$$

Therefore, in the *main effects* model shifting covariates impacts the
intercept, but not the regression parameters $\{\beta_j;j>0\}$
:::

::: frame
Shifting Covariates in Interaction Model

Interaction model:
$E[Y_i]=\beta_0 + \beta_1X_{i1} + \beta_2X_{i2}+ \beta_3X_{i1}X_{i2}$

Shifting Covariates: set $X_{i1}^*=X_{i1}-a$, $X_{i2}^*=X_{i2}-b$

Revised model: $$\begin{aligned}
        E[Y_i] &= & \beta_0^* + \beta_1^*X_{i1}^* + \beta_2^*X_{i2}^* +
        \beta_3^*X_{i1}^*X_{i2}^* \nonumber \\ 
        & = &
        \beta_0^* + \beta_1^*(X_{i1}-a) + \beta_2^*(X_{i2}-b) + \beta_3^*(X_{i1}-a)(X_{i2}-b)
        \nonumber
    
\end{aligned}$$ Examining the parameters: Clearly,
$\beta_0^*\neq \beta_0$
$\frac{\partial E[Y_i\mid X_{i1},X_{i2}]}{\partial X_{i1}} = \beta_1^* +
    \beta_3^*(X_{i2}-b)\Rightarrow \beta_1^*\stackrel{\tiny \mbox{when $X_{i2}\!=\!b$}}{=\!\longeq\!=}\frac{\partial E[Y_i\mid X_{i1},X_{i2}]}{\partial X_{i1}}$
recall:
$\beta_1\stackrel{\tiny \mbox{when $X_{i2}\!=\!0$}}{=\!\longeq\!=}\frac{\partial E[Y_i\mid X_{i1},X_{i2}]}{\partial X_{i1}}$,
therefore $\beta_1^*\neq \beta_1$ (unless $b=0$) Similarly,
$\beta_2^*\neq \beta_2$ However,
$\beta_3^* = \frac{\partial^2 E[Y_i\mid X_{i1},X_{i2}]}{\partial X_{i1}\partial
        X_{i2}} = \beta_3$

Therefore, in the *interaction* model shifting covariates impacts
everything but the interaction parameters
:::

::: frame
Interpretation in Interaction Model

Conclusion: interaction coefficient does not depend on
shifting/centering

In a model with interaction, interpret the main effect with caution: you
need to know where the covariates are centered and this centering value
should be meaningful to your data\
For example:
$SBP_i = \beta_0 + \beta_1 A_i + \beta_2 F_i + \beta_3 A_iF_i +
    \epsilon_i$

$\beta_1=$ $\beta_2=$
:::

::: frame
Questions?
:::
