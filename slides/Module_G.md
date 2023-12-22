::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module G: MLR Hypothesis Testing** ]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

Extra sums of squares principle

General F test

Covariate subset test

Examples
:::

::: frame
Last time: F test $H_0: \beta_1=\beta_2=\dots=\beta_{\myq-1}=0$;\
$H_1:$ at least one of them is nonzero

$$\begin{split}
\begin{cases}
\frac{SSY}{\sigma^2}\sim\chi^2_{n-1,\lambda_Y},~
\frac{SSR}{\sigma^2}\sim\chi^2_{\myq-1,\lambda_R\stackrel{{\scriptscriptstyle\text{$H_0$}}}{\longeq} \;0},~
\frac{SSE}{\sigma^2}\sim\chi^2_{n-\myq,\lambda_E\stackrel{{\scriptscriptstyle\text{LINE}}}{\longeq} \;0}\\
SSR\ind SSE\end{cases}  \\
\Rightarrow\;\; F=\frac{MSR}{MSE}=\frac{\frac{SSR}{\sigma^2}/(\myq-1)}{\frac{SSE}{\sigma^2}/(n-\myq)}\stackrel{H_0}{\sim} F_{p-1,n-p}\textcolor{white}{placeholder}&
\end{split}$$
:::

::: frame
F test

Step 1: Fit the full model:
$Y_i=\beta_0+\beta_1X_{1i}+\dots+\beta_{p-1}X_{p-1,i}+\epsilon_i$ Step
2: Fit the null (reduced) model: $Y_i=\beta_0+\epsilon_i$

Recall SSE = $\sum_i$(observed$_i\;-$ fitted$_i$)$^2$ The null model:
$\begin{rcases*}
\text{SSE({$\beta_0$}) = $\sum_i(Y_i-\overline{Y})^2$ = SSY}
\\ \text{SSR({$\beta_0$}) = 0}
\end{rcases*} \text{sum to SSY}$

The full model: $\;\begin{rcases*}
\text{SSE({$\boldbeta$}) = $\sum_i(Y_i-\widehat{Y}_i)^2$}
\\ \text{SSR({$\boldbeta$}) = SSE({$\beta_0$}) - SSE({$\boldbeta$}) $\geq$ 0}
\end{rcases*} \text{sum to SSY}$

, i.e.,\
SSE($\beta_0$) $-$ SSE($\boldbeta$) = SSR($\boldbeta$) $-$
SSR($\beta_0$)

Step 3:
$F=\frac{\text{SSR($\boldbeta$)}/\text{dfSSR($\boldbeta$)}}{\text{SSE($\boldbeta$)\;/\; dfSSE($\boldbeta$)}}=\frac{
    \left[   
%   \text{ \textcolor{royalblue}{ SSE({$\beta_0$}) - 
%           SSE({$\boldbeta$})
\text{ \textcolor{royalblue}{ SSR({$\boldbeta$}) - 
        SSR({$\beta_0$})
     }}
     \right]  
%   \left[    {\text{SSE}(\beta_0)    -  \text{SSE}(\boldbeta)}  \right]  
     \;/\;
    \left[     \text{dfSSR({$\boldbeta$})    -  dfSSR({$\beta_0$})}  \right]  
}{
\text{SSE($\boldbeta$)\;/\; dfSSE($\boldbeta$)}
 }$ **The F test compares the error (SSR) between the two models**
Intuitively, if error reduces (SSR increases) greatly due to the
additional parameters then it makes sense to use the larger model
:::

::: frame
Extra Sum of Squares SSE($\beta_0$) $-$ SSE($\boldbeta$) is referred to
as an "extra sum of squares\". It can be viewed in either of two ways:

\(1\) the reduction in the SSE (2) the increase in the SSR when one or
more predictor variables are added to the model.

In essence, when we add a predictor to a model, we hope to explain some
of the variability in the response via regression, and thereby reduce
some of the error. An extra sum of squares quantifies how much
variability we explain (increase in SSR) or alternatively how much error
we reduce (reduction in SSE).
:::

::: frame
Extra Sum of Squares

Model: ${\boldY}={\boldX}\boldbeta + {\boldepsilon}$; Re-write as:
${\boldY}={\boldX}_1\boldbeta_1 +
{\boldX}_2\boldbeta_2 + {\boldepsilon}$,\
where ${\boldX}=[{\boldX}_1,{\boldX}_2]$,
$\boldbeta=[\boldbeta_1^T,\boldbeta_2^T]^T$, $\boldbeta_1:$
$\myq_1\times 1$; $\boldbeta_2:$ $\myq_2\times 1$

Extra sum of squares (due to $\boldbeta_2$): denoted as
$SS(\boldbeta_2|\boldbeta_1)$

Increase in SSR attributable to adding ${\boldX}_2$, given that
${\boldX}_1$ is already in the model
$SS(\boldbeta_2|\boldbeta_1)=SSR(\boldbeta_1,\boldbeta_2)-SSR(\boldbeta_1)=SSE(\boldbeta_1)-SSE(\boldbeta_1,\boldbeta_2)$
$df SS=p_2$

Since $SSY=SSR+SSE$, the increase in SSR due to ${\boldX}_2$ equals the
decrease in SSE due to ${\boldX}_2$
:::

::: frame
Partial, Sequential Sums of Squares

e.g., ${\boldX}=[{\boldone}_n,{\boldX}_1,{\boldX}_2,{\boldX}_3]$
$\boldbeta=(\beta_0,\boldbeta_1^T,\boldbeta_2^T,\boldbeta_3^T)^T$

SS:

for $\boldbeta_1$: $SS(\boldbeta_1|\beta_0,\boldbeta_2,\boldbeta_3)$

for $\boldbeta_2$: $SS(\boldbeta_2|\beta_0,\boldbeta_1,\boldbeta_3)$

for $\boldbeta_3$: $SS(\boldbeta_3|\beta_0,\boldbeta_1,\boldbeta_2)$

SS: for $\boldbeta_1$: $SS(\boldbeta_1|\beta_0)$

for $\boldbeta_2$: $SS(\boldbeta_2|\beta_0,\boldbeta_1)$

for $\boldbeta_3$: $SS(\boldbeta_3|\beta_0,\boldbeta_1,\boldbeta_2)$
:::

::: frame
Partial, Sequential Sums of Squares (continued)

Note: $$\begin{split}
&SSE(\beta_0) = SSY \\
&SSR(\beta_0) = 0\\
&\begin{cases}
SS(\boldbeta_1|\beta_0)  
= SSR(\beta_0,\boldbeta_1)-SSR(\beta_0)\\
SS(\boldbeta_2|\boldbeta_1,\beta_0)\stackrel{\scriptscriptstyle def}{\longeq} SSR(\boldbeta_2,\boldbeta_1,\beta_0)-SSR(\boldbeta_1,\beta_0)
\end{cases}\\
&\begin{cases}
SSR(\beta_0,\boldbeta_1) \stackrel{{\scriptscriptstyle SSR(\beta_0)=0}}{\longeq}  SS(\boldbeta_1|\beta_0)+0\\
SSR(\beta_0,\boldbeta_1,\boldbeta_2) =
SS(\boldbeta_2|\boldbeta_1,\beta_0)+SS(\boldbeta_1|\beta_0)+0\\
%{\color{white}{SSR(\beta_0,\boldbeta_1,\boldbeta_2)}} =SS(\boldbeta_2|\boldbeta_1,\beta_0)+SSR(\beta_0,\boldbeta_1)
\end{cases}\\
%&SSR(\beta_0,\boldbeta_1,\boldbeta_2,\boldbeta_3) =SSR(\beta_0,\boldbeta_1,\boldbeta_2)+SS(\boldbeta_3|\boldbeta_2,\boldbeta_1,\beta_0) \\
&SS(\boldbeta_2,\boldbeta_1|\beta_0) = SS(\boldbeta_2|\boldbeta_1,\beta_0)+SS(\boldbeta_1|\beta_0)
\end{split}$$
:::

::: frame
Nested Models Models are nested if they use same variables (and cases!)
but one model specifies at least one additional parameter to be
estimated. The model with more parameters (or fewer restrictions on the
parameters) is the "full" model The model with less parameters (or more
restrictions on the parameters) is called the "restricted" model The
restricted model is said to be nested within the full model
:::

::: frame
Nested Models As a special case: two MLRs are *nested* if the covariate
set in one is a subset of the covariate set of the other

e.g., set of nested models: $$\begin{aligned}
{\boldY} & = & {\boldX}_1\boldbeta_1 + {\boldX}_2\boldbeta_2 + {\boldX}_3\boldbeta_3 + {\boldepsilon} \nonumber \\
{\boldY} & = & {\boldX}_1\boldbeta_1 + {\boldepsilon} \nonumber \\
{\boldY} & = & {\boldX}_1\boldbeta_1 + {\boldX}_3\boldbeta_3 +{\boldepsilon} \nonumber
\end{aligned}$$

e.g., two non-nested models: $$\begin{aligned}
{\boldY} & = & {\boldX}_1\boldbeta_1 + {\boldX}_2\boldbeta_2 + {\boldX}_3\boldbeta_3 + {\boldepsilon} \nonumber \\
\nonumber 
{\boldY} & = & {\boldX}_1\boldbeta_1 + {\boldX}_4\boldbeta_4 +{\boldepsilon}
\nonumber
\end{aligned}$$
:::

::: frame
Hypothesis Testing: General e.g., model:
$Y_i = \beta_0 + \beta_1X_{i1}+ \beta_2X_{i2}+ \beta_3X_{i3} + e_i$

All major types of hypothesis tests can be performed using a single
framework

overall test: $H_0:\beta_1=\beta_2=\beta_3=0$ vs.\
$H_1:\beta_j\neq 0$ for $j=1$ or $j=2$ or $j=3$ single-covariate test:
$H_0:\beta_2=0$ vs.\
$H_1:\beta_2\neq 0$ test for covariate subset: $H_0:\beta_2=\beta_3=0$
vs.\
$H_1:\beta_2\neq 0$ or $\beta_3\neq
0$
:::

::: frame
F-statistic: General Form

F-statistic for comparing any two nested models is of the form:
$$\begin{aligned}
F & = & \frac{ SS/ df SS}{MSE_1} \sim  F_{ df SS,
    dfE_1} \nonumber
\end{aligned}$$ where: $SS=SSE_0-SSE_1=SSR_1-SSR_0$: extra SS, $H_0$
model versus $H_1$ model

$dfSS=dfE_0-dfE_1=dfR_1-dfR_0$: difference in $dfE$ ($dfR$), $H_0$ vs
$H_1$ model ( = number of parameters tested in the null hypothesis)

$MSE_1=$ estimate of $\sigma^2$, based on $H_1$ model
:::

::: frame
F-test: General Form e.g., ${\boldX}=[{\boldX}_1,{\boldX}_2]$
$\boldbeta^T=[\boldbeta_1^T,\boldbeta_2^T]$ $\boldbeta_1:$
$\myq_1\times 1$ vector; $\boldbeta_2:$ $\myq_2\times 1$
$\myq=\myq_1+\myq_2$ Model: $$\begin{aligned}
{\boldY}= {\boldX}\boldbeta+{\boldepsilon} ={\boldX}_1\boldbeta_1+{\boldX}_2\boldbeta_2 + {\boldepsilon}\nonumber
\end{aligned}$$ Hypotheses: $H_0:\boldbeta_2={\boldzero}_{\myq_2}$ vs.
$H_1:\boldbeta_2\neq {\boldzero}_{\myq_2}$ Test statistic:
$$\begin{aligned}
F = \frac{SS(\boldbeta_2|\boldbeta_1)/\myq_2}{\widehat{\sigma}^2_1}
\sim F_{\myq_2,n-\myq} \nonumber
\end{aligned}$$ where $\widehat{\sigma}^2_1$ is estimate of $\sigma^2$
based on the full model ($H_1$)
:::

::: frame
Overall Test: $H_0:\boldbeta_1={\boldzero}_{p_1}, p_1=\myq-1$ Model
${\boldY} =  {\boldone}_n\beta_0 + {\boldX}\boldbeta_1 + {\boldepsilon}$
$\myq-1$ covariates; $\myq$ parameters

Overall test: $H_0:\boldbeta_1={\boldzero}_{\myq-1}$ vs.
$H_1:\boldbeta_1\neq {\boldzero}_{\myq-1}$ $$\begin{aligned}
F & = & \frac{SS(\boldbeta_1|\beta_0)/(\myq-1)}{\widehat{\sigma}^2_1} \sim
F_{\myq-1,n-\myq} \nonumber
\end{aligned}$$ note: $SS(\boldbeta_1|\beta_0)=
SSR(\beta_0,\boldbeta_1)-SSR(\beta_0)=SSR(\boldbeta_1)$ therefore,
$F=MSR/MSE$ test has same form as SLR test of $H_0:\beta_1=0$
:::

::: frame
Covariate Subset Test: $H_0:\boldbeta_1={\boldzero}_{p_1}, p_1<\myq-1$
Model
${\boldY} =  {\boldone}_n\beta_0 + {\boldX}_1\boldbeta_1 + {\boldX}_2\boldbeta_2 + {\boldepsilon}$

Hypotheses: $H_0:\boldbeta_1={\boldzero}_{\myq_1}$ vs.
$H_1:\boldbeta_1\neq {\boldzero}_{\myq_1}$ ($\myq=1+\myq_1+\myq_2$)

set ${\boldX}_2^*=[{\boldone}_n,{\boldX}_2]$,
$\boldbeta_2^*=(\beta_0,\boldbeta_2^T)^T$

Test statistic: $$\begin{aligned}
F & = &
\frac{SS(\boldbeta_1|\boldbeta_2^*)/\myq_1}{\widehat{\sigma}^2_1}
\sim F_{\myq_1,n-\myq} \nonumber
\end{aligned}$$

Recall: $$\begin{aligned}
SS(\boldbeta_1|\boldbeta_2^*) & = &
SSR(\boldbeta_1,\boldbeta_2^*) - SSR(\boldbeta_2^*) \nonumber \\
& = & SSE(\boldbeta_2^*) - SSE(\boldbeta_1,\boldbeta_2^*)
\nonumber
\end{aligned}$$
:::

::: frame
Single-Covariate Test: $H_0:\boldbeta_1={\boldzero}_{p_1}, p_1=1$ Model:
${\boldY} =  {X}_1\beta_1 + {\boldX}_2\boldbeta_2 + {\boldepsilon}$

Hypotheses: $H_0:\beta_1=0$ vs. $H_1:\beta_1\neq 0$

Test statistic: $$\begin{aligned}
F & = & \frac{SS(\beta_1|\boldbeta_2)}{\widehat{\sigma}^2_1} \sim
F_{1,n-\myq} \nonumber
\end{aligned}$$

Recall: $F_{1,n-\myq} \equiv \{ t_{n-\myq} \}^2$ and $F=T^2$. Thus,
single-covariate hypotheses can be tested using the $t$-distribution:
$$\begin{aligned}
T & = & \frac{\widehat{\beta}_1}{SE(\widehat{\beta}_1)} \sim
t_{n-\myq} \nonumber
\end{aligned}$$ Using $t$-distribution, could test $H_0:\beta_1=0$ vs:
$H_1: \beta_1\neq 0$, $H_1: \beta_1 >  0$, or $H_1: \beta_1 <  0$
Two-sided hypotheses can be tested using either F or t test; for
one-sided use t test
:::

::: frame
How do we carry out these tests? Consider model:
${\boldY} =  {\boldX}_1\boldbeta_1 + {\boldX}_2\boldbeta_2 + {\boldepsilon}$

$H_0: \boldbeta_2={\boldzero}_{\myq_2}$ vs.
$H_1:\boldbeta_2\neq {\boldzero}_{\myq_2}$ We need to compute
$$\begin{aligned}
F & = & \frac{SS(\boldbeta_2|\boldbeta_1)/\myq_2}{\widehat{\sigma}^2_1}
%\sim F_{\myq_2,n-\myq} \nonumber
\end{aligned}$$

Could fit the following two nested models: $$\begin{aligned}
{\boldY} & = &  {\boldX}_1\boldbeta_1 + {\boldX}_2\boldbeta_2 + {\boldepsilon}
\nonumber \\ 
{\boldY} & = &  {\boldX}_1\boldbeta_1 + {\boldepsilon} \nonumber
\end{aligned}$$ $$\begin{aligned}
{\boldX} = [{\boldX}_1,{\boldX}_2] &  & \boldbeta = \left[
\begin{array}{c} \boldbeta_1 \\ \boldbeta_2
\end{array} \right]\nonumber
\end{aligned}$$ then compute $\Delta SSR$ or $\Delta SSE$ Alternatively,
could consider the forms of the SSE's involved $\ldots$
:::

::: frame
Extra SS: Matrix Formulation

In particular, $$\begin{aligned}
SSE(\boldbeta_1,\boldbeta_2) & = & {\boldY}^T ({\boldI}_n-{\boldH}){\boldY} \nonumber \\ 
SSE(\boldbeta_1) & = & {\boldY}^T ({\boldI}_n-{\boldH}_1){\boldY}
\nonumber
\end{aligned}$$ $$\begin{aligned}
{\boldH} & = & {\boldX}({\boldX}^T{\boldX})^{-1}{\boldX}^T \nonumber
\\ {\boldH}_1 &
= & {\boldX}_1({\boldX}_1^T{\boldX}_1)^{-1}{\boldX}^T_1 \nonumber
\end{aligned}$$

Therefore, $$\begin{aligned}
SS(\boldbeta_2|\boldbeta_1) & = & SSE(\boldbeta_1) - SSE(\boldbeta
_1,\boldbeta_2) \nonumber \\ & = & {\boldY}^T({\boldI}_n-{\boldH}_1){\boldY} - {\boldY}^T({\boldI}_n-{\boldH}){\boldY} \nonumber \\
& = & {\boldY}^T\{{\boldI}_n-{\boldH}_1-({\boldI}_n-{\boldH})\}{\boldY}  \nonumber \\ & = &  {\boldY}^T({\boldH}-{\boldH}_1 ){\boldY} \nonumber
\end{aligned}$$
:::

::: frame
How do we know that $F$ follows $F_{\myq_2,n-\myq}$ under
$H_0:\boldbeta_2=\boldzero_{p_2}$
$F=\frac{SS(\boldbeta_2|\boldbeta_1)/\myq_2}{\widehat{\sigma}^2_1}=\frac{SS(\boldbeta_2|\boldbeta_1)/p_2}{SSE(\boldbeta_1,\boldbeta_2)/(n-p)}=\frac{\boldY^T({\boldH}-{\boldH}_1 ){\boldY}/p_2}{\boldY^T({\boldI}-{\boldH} ){\boldY}/(n-p)}$
Need to show
$SS(\boldbeta_2|\boldbeta_1)/\sigma^2=\boldY^T({\boldH}-{\boldH}_1 ){\boldY}/\sigma^2\stackrel{H_0}{\sim }\chi^2_{p_2}$
$SSE(\boldbeta_1,\boldbeta_2)/\sigma^2=\boldY^T({\boldI}-{\boldH}  ){\boldY}/\sigma^2\sim \chi^2_{n-p}$
$SS(\boldbeta_2|\boldbeta_1)\ind SSE(\boldbeta_1,\boldbeta_2)$
:::

::: frame
How do we know that $F$ follows $F_{\myq_2,n-\myq}$ under
$H_0:\boldbeta_2=\boldzero_{p_2}$
$F=\frac{SS(\boldbeta_2|\boldbeta_1)/\myq_2}{\widehat{\sigma}^2_1}=\frac{SS(\boldbeta_2|\boldbeta_1)/p_2}{SSE(\boldbeta_1,\boldbeta_2)/(n-p)}=\frac{\boldY^T({\boldH}-{\boldH}_1 ){\boldY}/p_2}{\boldY^T({\boldI}-{\boldH} ){\boldY}/(n-p)}$
Need to show
$SS(\boldbeta_2|\boldbeta_1)/\sigma^2=\boldY^T({\boldH}-{\boldH}_1 ){\boldY}/\sigma^2\stackrel{H_0}{\sim }\chi^2_{p_2}$
$SSE(\boldbeta_1,\boldbeta_2)/\sigma^2=\boldY^T({\boldI}-{\boldH}  ){\boldY}/\sigma^2\sim \chi^2_{n-p}$
$SS(\boldbeta_2|\boldbeta_1)\ind SSE(\boldbeta_1,\boldbeta_2)$
:::

::: frame
How do we know that $F$ follows $F_{\myq_2,n-\myq}$ under
$H_0:\boldbeta_2=\boldzero_{p_2}$ Sketch proof

We have already shown in Module F that
$SSE(\boldbeta_1,\boldbeta_2)/\sigma^2=\boldY^T({\boldI}-{\boldH}  ){\boldY}\sim \chi^2_{n-p}$
${\boldH}-{\boldH}_1$ is symmetric and idempotent $$\begin{split}
            ({\boldH}-{\boldH}_1)^2=\boldH^2+{\boldH}_1^2-2\boldH\boldH_1\\
            =\boldH+{\boldH}_1-2\boldH[\boldX_1(\boldX_1\trans \boldX_1)^{-1}\boldX_1]\\
            \stackrel{\boldH\boldX_1=\boldX_1}{=}\boldH+{\boldH}_1-2\boldH_1=\boldH-\boldH_1
        \end{split}$$
$rank({\boldH}-{\boldH}_1)=tr({\boldH})-tr({\boldH}_1)=p-p_1=p_2$
non-centrality parameter
$E[\boldY]^T({\boldH}-{\boldH}_1 )E[\boldY]\stackrel{H_0:\boldbeta_2=0}{=}(\boldX_1\boldbeta_1)\trans({\boldH}-{\boldH}_1 )(\boldX_1\boldbeta_1)=0$
$({\boldH}-{\boldH}_1)(\boldI-\boldH)=0$ because $$\begin{split}
            (\boldI-\boldH) ({\boldH}-{\boldH}_1)=&{\boldH}-{\boldH}_1 - \boldH^2 + \boldH\boldH_1\\
            =&{\boldH}-{\boldH}_1 - \boldH + \boldH_1=0
        \end{split}$$
:::

::: frame
Sequential vs Partial Testing

::: itemize
Certain situations indicate strictly *either* sequential *or* partial
tests alone

Depends on aims of investigator, but also on the nature of the model
under consideration

Consider the following model: $$\begin{aligned}
    Y_i & = & \beta_0 + \beta_1X_{i1} +\beta_2X_{i2} +\beta_3X_{i3} +
    e_i \nonumber
    
\end{aligned}$$

Partial tests could assess the following:

::: itemize
$Q_1$: Does $X_{i1}$ contribute to the model (i.e., explain variation in
$Y_i$) given that $X_{i2}$ and $X_{i3}$ are already in the model

$Q_2$: Does $X_{i2}$ contribute $\ldots$ given that $X_{i1}$ and
$X_{i3}$ $\ldots$ in the model
:::
:::
:::

::: frame
Partial Tests

::: itemize
Partial tests: for $X_1$: $$\begin{aligned}
F & = &
\frac{SS(\beta_1|\beta_0,\beta_2,\beta_3)}{\widehat{\sigma}^2}=\frac{SS(X_1|X_2,X_3)}{\widehat{\sigma}^2}
\sim F_{1,n-4} \nonumber
\end{aligned}$$

for $X_2$: $$\begin{aligned}
F & = & \frac{SS(\beta_2|\beta_0,\beta_1,\beta_3)}{\widehat{\sigma}^2}=
\frac{SS(X_2|X_1,X_3)}{\widehat{\sigma}^2}
\sim F_{1,n-4} \nonumber
\end{aligned}$$

Note that we can express the extra SS out in terms of either the
parameters or corresponding covariates

The intercept ($\beta_0$) is always included after the $|$ sign, hence
not written out explicitly if when we use the covariates to express SS
Denominator is always estimate of $\sigma^2$ in the full model
:::
:::

::: frame
Partial Tests (continued)

::: itemize
Could also assess the importance of a subset of covariates, given that a
second subset of covariates is already in the model:

::: itemize
e.g., 'Are either $X_2$ or $X_3$ important predictors of $Y$, after
adjusting for $X_1$? $H_0:\beta_2=\beta_3=0$ $$\begin{aligned}
F & = &
\frac{SS(X_2,X_3|X_1)/2}{\widehat{\sigma}^2}
\sim F_{2,n-4} \nonumber
\end{aligned}$$
:::
:::
:::

::: frame
Example: Partial Tests

::: itemize
e.g.,

::: itemize
response, $SBP_i:$ systolic blood pressure

covariates: age ($A_i$) , weight ($W_i$), height ($H_i$)

model: $SBP_i = \beta_0+ \beta_A A_i + \beta_W W_i + \beta_H H_i +
e_i$

all covariates are of approximately equal interest

desired to test importance of each covariate, adjusted for the others

no particular order of the tests is obvious
:::

In this example, a set of partial tests is appropriate
:::
:::

::: frame
Partial Tests (single)

::: itemize
Partial tests: e.g., $H_0: \beta_A=0$ vs. $H_0: \beta_A\neq 0$

::: itemize
could use an $F$-test or, equivalently, a $t$-test

e.g., consider age $\ldots$ $$\begin{aligned}
F & = &
\frac{SS(\beta_A|\beta_0,\beta_W,\beta_H)}{\widehat{\sigma}^2}
\sim F_{1,n-4} \nonumber \\ \nonumber \\T & = &
\frac{\widehat{\beta}_A}{SE(\widehat{\beta}_A)} \sim
t_{n-4} \nonumber
\end{aligned}$$
:::

Recall: equivalence of $\{t_{df}\}^2$ and $F_{1,df}$ when $H_1$ is
two-sided

Could repeat for $\beta_W$ and $\beta_H$ $\ldots$
:::
:::

::: frame
Partial Tests (subset)

::: itemize
We could assess the association between $SBP$ and a subset of
covariates, adjusted for all others e.g., could assess contribution of
body mass metrics (weight $W$ and height $H$), adjusted for age

::: itemize
$H_0:$ body mass measures not associated with $SBP$, after accounting
for $age$

more formally $\ldots$

$H_0:\beta_W=\beta_H=0$, versus

$H_1:\beta_W \neq 0$ and/or $\beta_H\neq 0$ $$\begin{aligned}
F & = &
\frac{SS(\beta_W,\beta_H|\beta_0,\beta_A)/2}{\widehat{\sigma}^2}
\sim F_{2,n-4} \nonumber
\end{aligned}$$
:::
:::
:::

::: frame
Sequential Testing

::: itemize
In certain settings sequential testing is indicated

e.g., polynomial regression: balancing model fit with interpretation and
parsimony

::: itemize
implies that lower order terms should be examined first

e.g., response: serum cholesterol, $SC$; covariate: body mass index, $B$

model: $$\begin{aligned}
SC_i =  \beta_0 + \beta_1 B_i + \beta_2 B_i^2 + \beta_3 B_i^3 +
\beta_4 B_i^4 + e_i \nonumber
\end{aligned}$$ Partial test e.g. $H_0: \beta_2=0$ would not be
appropriate: higher order terms should not be tested unless lower order
terms are significant
:::
:::
:::

::: frame
Sequential Testing (continued)

::: itemize
Sequence of tests:

::: itemize
$H_0:\beta_1=0$ vs $H_1:\beta_1\neq 0$ $$\begin{aligned}
F & = & \frac{SS(\beta_1|\beta_0)}{\widehat{\sigma}^2} \sim
F_{1,n-5} \nonumber
\end{aligned}$$

if $H_0$ rejected, go to next test; otherwise, stop

$H_0:\beta_2=0$ vs $H_1:\beta_2\neq 0$ $$\begin{aligned}
F & = & \frac{SS(\beta_2|\beta_0,\beta_1)}{\widehat{\sigma}^2}
\sim F_{1,n-5} \nonumber
\end{aligned}$$

if $H_0$ rejected, go to next test; otherwise, stop etc$\ldots$
:::
:::
:::

::: frame
Sequential Tests: Subsets

::: itemize
Sequential tests on a subset of parameters may be indicated

Continuing on with $SC$/$BMI$ polynomial model $\ldots$

::: itemize
$H_0$: second-order model fits well

$H_1$: higher order terms necessary

more formally:

$H_0: \beta_3=\beta_4=0$ vs. $H_1:\beta_3\neq 0$ or $\beta_4\neq
0$ $$\begin{aligned}
F & = & \frac{SS(B^3,B^4|B,B^2)/2}{\widehat{\sigma}^2}
\sim F_{2,n-5} \nonumber
\end{aligned}$$
:::
:::
:::

::: frame
Role of Sequential Testing

::: itemize
Partial testing is the default

Sequential testing is generally indicated only when the covariates being
considered are inherently ordered

::: itemize
e.g., by ease of interpretation e.g., by ease of data collection e.g.,
by perceived accuracy
:::

The order of variables in the models makes a difference
:::
:::

::: frame
Computing Test Statistic in Sequential Testing

::: itemize
e.g., response, $Y_i$; covariates: $X_{i1},\ldots,X_{i5}$

Consider the following $F$-statistic:

$$\begin{aligned}
F & = &
\frac{SS(\beta_2,\beta_3|\beta_1,\beta_0)/2}{\widehat{\sigma}^2}
\sim F_{2,n-6} \nonumber
\end{aligned}$$

$\widehat{\sigma}^2$ is computed based on the *full* model (i.e., model
containing: $X_{i1},\ldots,X_{i5}$)

In some text books, the statistic would be defined:

$$\begin{aligned}
F^* & = &
\frac{SS(\beta_2,\beta_3|\beta_1,\beta_0)/2}{SSE(\beta_0,\ldots,\beta_3)/(n-4)}
\sim F_{2,n-4} \nonumber
\end{aligned}$$

i.e., $\sigma^2$, in the denominator, is estimated based on a model with
only covariates $X_1,X_2,X_3$.
:::
:::

::: frame
Denominator

::: itemize
The statistic, $F^*$, has a very nice interpretation: percent reduction
in $SSE$ ($df$-adjusted)

However, an accurate estimator of $\sigma^2$ is required

Note:

::: itemize
omitting covariates from a model may positively bias $MSE$

including extra covariates (i.e., over-fitting) usually does not bias
$\widehat{\sigma}^2$ (only makes it more noisy)
:::

R function `anova` and SAS both use our version of the $F$-statistic in
sequential testing, as opposed to $F^*$
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
Questions?
:::
