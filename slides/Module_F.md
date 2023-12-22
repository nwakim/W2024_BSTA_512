::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module F: MLR Hypothesis Testing** ]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

Sums of squares

F test

Text (MPV, 4th Ed.): Section 3.2, 3.3
:::

::: frame
[ **Sums of Squares:\
Matrix Notation and Distributions** ]{style="color: royalblue"}
:::

::: frame
Preparation: Distribution Theory, Rank, and Trace Let $\boldA$ be a
$n\times n$ matrix of constants, and $\boldY$ be a $n\times 1$
multivariate normal random vector with mean $\boldmu$ and
variance-covariance matrix $\sigma^2\boldI$, i.e.,
$\boldY\sim N(\boldmu,\sigma^2\boldI)$. We call $\boldY^T\boldA\boldY$ a
quadratic form.

If $\boldA$ is [symmetric]{style="color: royalblue"} and idempotent
($\boldA^2=\boldA$) with rank $p$, then
$$\boxed{\frac{\boldY^T\boldA\boldY}{\sigma^2}\sim \chi^2_{p,\lambda}\text{, with non-centrality parameter }\lambda=\frac{\mu^T\boldA\mu}{\sigma^2}}$$
Let $\boldB$ be a $p\times n$ matrix, then
$$\boxed{\boldY^T\boldA\boldY\text{ and }\boldB\boldY\text{  are independent if }\boldB\ptimesn\boldA\ntimesn=\boldzero}$$

Let $\boldB$ be a $n\times n$ matrix, then
$$\boxed{\boldY^T\boldA\boldY\text{ and }\boldY^T\boldB\boldY\text{  are independent if }\boldA\ntimesn\boldB\ntimesn=\boldzero\ntimesn}$$
:::

::: frame
Distributions of Sums of Squares

We apply the distribution theory to show that $$\begin{split}
\frac{SSY}{\sigma^2}\sim\chi^2_{n-1,\lambda_Y},\;
&\lambda_Y=\frac{E[\boldY]^T(\boldI_n-\boldone\ntimesn/n)E[\boldY]}{\sigma^2}\\
\frac{SSR}{\sigma^2}\sim\chi^2_{\myq-1,\lambda_R},\;
&\lambda_R=\frac{E[\boldY]^T(\boldH-\boldone\ntimesn/n)E[\boldY]}{\sigma^2}\\
\frac{SSE}{\sigma^2}\sim\chi^2_{n-\myq,\lambda_E},\;
&\lambda_E=\frac{E[\boldY]^T(\boldI_n-\boldH)E[\boldY]}{\sigma^2}\\
SSR\ind SSE&\text{, and } \widehat{\boldbeta}\ind \widehat{\sigma}^2
\end{split}$$

To show distribution of SS, we need the following steps Write SS using
matrix notation to show SS is a quadratic form Show $\boldA$ is
symmetric and idempotent Find $rank(\boldA)$ Obtain distribution of SS
:::

::: frame
Sum of Squares: Matrix Notation

::: columns
::: column
0.4 $$\begin{split}
    &SSY\\
    = &  \sum_{i=1}^n (Y_i-\overline{Y})^2 \nonumber \\
    = &  \sum_{i=1}^n Y_i^2- n\overline{Y}^2 \nonumber \\
    = & {\boldY}^T{\boldY} - n(\frac{1}{n}{\boldY}^T{\boldone}_n)^2
    \nonumber \\
    = & {\boldY}^T\boldI_n{\boldY} - ({\boldY}^T{\boldone}_n)^2/n
    \nonumber \\
    = & {\boldY}^T{\boldY} -{\boldY}^T{\boldone}_n{\boldone}_n^T{\boldY}/n
    \nonumber \\ 
    = & {\boldY}^T ({\boldI}_n-{\boldone}\ntimesn/n)
    {\boldY} \nonumber\\
    &\text{SSY is a quadratic form w/}\\
    &\boldA_Y={\boldI}_n-{\boldone}\ntimesn/n
\end{split}$$
:::

::: column
0.6
:::
:::
:::

::: frame
Sum of Squares: Matrix Notation

::: columns
::: column
0.5 $$\begin{split}
&SSR\\
= & \sum_{i=1}^n    (\widehat{Y}_i- \overline{Y})^2 \nonumber \\
= & \sum_{i=1}^n
\widehat{Y}_i^2- n\overline{Y}^2 \nonumber \\ 
= & \widehat{\boldY}^T \widehat{\boldY} - {\boldY}^T{\boldone}_n{\boldone}_n^T{\boldY}/n\\
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
=&({\boldH}{\boldY})^T{\boldH}{\boldY} - {\boldY}^T{\boldone}_n{\boldone}_n^T{\boldY}/n\\
=&{\boldY}^T{\boldH}{\boldY} - {\boldY}^T{\boldone}_n{\boldone}_n^T{\boldY}/n\\
%       \widehat{\boldY}^T \widehat{\boldY} =&  ({\boldH}{\boldY})^T{\boldH}{\boldY} = {\boldY}^T{\boldH}{\boldY}\\
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
= & {\boldY}^T ({\boldH}-{\boldone}_n{\boldone}_n^T/n) {\boldY}
\nonumber \\
= & {\boldY}^T({\boldH} - {\boldone}\ntimesn/n){\boldY} \\
&\text{SSR is a quadratic form w/}\\
&\boldA_R={\boldH} - {\boldone}\ntimesn/n
\end{split}$$
:::

::: column
0.5
:::
:::
:::

::: frame
Sum of Squares: Matrix Notation

::: columns
::: column
0.52 $$\begin{split}
%       SSE = & \sum_{i=1}^n \widehat{\epsilon}_i^2 \nonumber \\
&SSE \\
= & \widehat{\boldepsilon}^T \widehat{\boldepsilon}
\nonumber \\
= & \{({\boldI}_n-{\boldH}){\boldY}\}^T \{({\boldI}_n-{\boldH}){\boldY})\}
\nonumber \\
= & {\boldY}^T ({\boldI}_n-{\boldH})^2{\boldY}\nonumber \\
= & {\boldY}^T ({\boldI}_n-{\boldH}){\boldY} \nonumber \\
&\text{SSE is a quadratic form w/}\\
&\boldA_E=\boldI_n-{\boldH} 
\end{split}$$
:::

::: column
0.48
:::
:::
:::

::: frame
Sum of Squares: Symmetric and Idempotent
$\boldA_Y={\boldI}_n-{\boldone}\ntimesn/n$ $$\begin{split}
%       \boldA_Y=&{\boldI}_n-{\boldone}\ntimesn/n\\
\boldA_Y^2=&({\boldI}_n-{\boldone}\ntimesn/n)({\boldI}_n-{\boldone}\ntimesn/n)\\
=&({\boldI}_n-{\boldone}\ntimesn/n){\boldI}_n-
({\boldI}_n-{\boldone}\ntimesn/n){\boldone}\ntimesn/n\\
%%%%%
\stackrel{\tiny {\boldone}\ntimesn=\boldone\ntimesone\boldone\onetimesn}{\longeq\!\longeq}&({\boldI}_n-{\boldone}\ntimesn/n)-
({\boldone}\ntimesn/n-\boldone\ntimesone\boldone\onetimesn\boldone\ntimesone\boldone\onetimesn/n^2)\\
%%%%%
\stackrel{\tiny \boldone\onetimesn\boldone\ntimesone=n}{\longeq\!\longeq}&({\boldI}_n-{\boldone}\ntimesn/n)-
({\boldone}\ntimesn/n-\boldone\ntimesone n \boldone\onetimesn/n^2)\\
=&{\boldI}_n-{\boldone}\ntimesn/n\\
=&\boldA_Y
\end{split}$$
:::

::: frame
Sum of Squares: Symmetric and Idempotent
$\boldA_R={\boldH} - {\boldone}\ntimesn/n$ $$\begin{split}
%   \boldA_R=&{\boldH} - {\boldone}\ntimesn/n\\
\boldA_R^2=&({\boldH} - {\boldone}\ntimesn/n)({\boldH} - {\boldone}\ntimesn/n)\\
=&({\boldH} - {\boldone}\ntimesn/n){\boldH} - ({\boldH} - {\boldone}\ntimesn/n){\boldone}\ntimesn/n\\
=&(\boldH^2-\boldone\ntimesone\boldone\onetimesn\boldH/n)-(\boldH\boldone\ntimesone\boldone\onetimesn/n-\boldone\ntimesone\boldone\onetimesn\boldone\ntimesone\boldone\onetimesn/n^2)\\
&\text{Note that (1)$\boldH\boldX=\boldX$ and $\boldone\ntimesone$ is a column of $\boldX$}\\ 
&\text{\textcolor{white}{Note that }(2) we showed in HW 2 that $\boldH$ is symm+idempotent}\\ 
\stackrel[\tiny \boldH\boldone\ntimesone=\boldone\ntimesone]{\tiny \boldone\onetimesn\boldH=\boldone\onetimesn}{\longeq\!\longeq}&(\boldH-\boldone\ntimesone\boldone\onetimesn/n)-(\boldone\ntimesone\boldone\onetimesn/n-\boldone\ntimesone\boldone\onetimesn\boldone\ntimesone\boldone\onetimesn/n^2)\\
&\text{We just showed that $\boldone\ntimesone\boldone\onetimesn\boldone\ntimesone\boldone\onetimesn/n^2={\boldone}\ntimesn/n$}\\ 
=&(\boldH-{\boldone}\ntimesn/n)-({\boldone}\ntimesn/n-{\boldone}\ntimesn/n)\\
=&\boldH-{\boldone}\ntimesn/n\\
=&\boldA_R
\end{split}$$
:::

::: frame
Sum of Squares: Symmetric and Idempotent

::: columns
::: column
0.52 $$\begin{split}
&\boldA_E=\boldI_n-{\boldH} \\
&\text{We showed in HW 2 that $\boldI_n-\boldH$ is symmetric and idempotent}\\ 
\end{split}$$
:::

::: column
0.1
:::
:::
:::

::: frame
Preparation: Distribution Theory, Rank, and Trace Let $\boldA$ be a
$n\times n$ matrix of constants, and $\boldY$ be a $n\times 1$
multivariate normal random vector with mean $\boldmu$ and
variance-covariance matrix $\sigma^2\boldI$, i.e.,
$\boldY\sim N(\boldmu,\sigma^2\boldI)$. We call $\boldY^T\boldA\boldY$ a
quadratic form.

If $\boldA$ is [symmetric]{style="color: royalblue"} and idempotent
($\boldA^2=\boldA$) with rank $p$, then
$$\boxed{\frac{\boldY^T\boldA\boldY}{\sigma^2}\sim \chi^2_{p,\lambda}\text{, with non-centrality parameter }\lambda=\frac{\mu^T\boldA\mu}{\sigma^2}}$$
Let $\boldB$ be a $p\times n$ matrix, then
$$\boxed{\boldY^T\boldA\boldY\text{ and }\boldB\boldY\text{  are independent if }\boldB\ptimesn\boldA\ntimesn=\boldzero}$$

Let $\boldB$ be a $n\times n$ matrix, then
$$\boxed{\boldY^T\boldA\boldY\text{ and }\boldY^T\boldB\boldY\text{  are independent if }\boldA\ntimesn\boldB\ntimesn=\boldzero\ntimesn}$$
:::

::: frame
Distributions of Sums of Squares

We apply the distribution theory to show that $$\begin{split}
\frac{SSY}{\sigma^2}\sim\chi^2_{n-1,\lambda_Y},\;
&\lambda_Y=\frac{E[\boldY]^T(\boldI_n-\boldone\ntimesn/n)E[\boldY]}{\sigma^2}\\
\frac{SSR}{\sigma^2}\sim\chi^2_{\myq-1,\lambda_R},\;
&\lambda_R=\frac{E[\boldY]^T(\boldH-\boldone\ntimesn/n)E[\boldY]}{\sigma^2}\\
\frac{SSE}{\sigma^2}\sim\chi^2_{n-\myq,\lambda_E},\;
&\lambda_E=\frac{E[\boldY]^T(\boldI_n-\boldH)E[\boldY]}{\sigma^2}\\
SSR\ind SSE&\text{, and } \widehat{\boldbeta}\ind \widehat{\sigma}^2
\end{split}$$

To show distribution of SS, we need the following steps Write SS using
matrix notation to show SS is a quadratic form Show $\boldA$ is
symmetric and idempotent Find $rank(\boldA)$ Obtain distribution of SS
:::

::: frame
Preparation: Distribution Theory, Rank, and Trace Let $\boldA$ be an
idempotent matrix, then the rank of $\boldA$ is its trace.

Trace of a matrix (Module D): sum of elements along the main diagonal
$tr(\boldA\ntimesn)=\sum_{i=1}^nA_{i,i}$, where $A_{i,j}$ denotes the
element of $\boldA$ at the $i$-th row and $j$-th column
$tr(c\cdot\boldA)=c\cdot tr(\boldA)$,
$tr(\boldA+\boldB)=tr(\boldA)+tr(\boldB)$
$tr(\boldA\boldB)=tr(\boldB\boldA)$, thus
$tr(\boldA\boldB\boldC)=tr(\boldC\boldA\boldB)=tr(\boldB\boldC\boldA)$
:::

::: frame
Sum of Squares: Rank

::: columns
::: column
0.4 $$\begin{split}
        &rank(\boldA_Y)\\
        &=tr(\boldA_Y)\\
        &=tr({\boldI}_n-{\boldone}\ntimesn/n)\\
        &=tr({\boldI}_n)-tr({\boldone}\ntimesn/n)\\
        &=n-tr({\boldone}\ntimesn)/n\\
        &=n-(\sum_{i=1}^n 1)/n\\
        &=n-1
        \end{split}$$
:::

::: column
0.6
:::
:::
:::

::: frame
Sum of Squares: Rank

::: columns
::: column
0.5 $$\begin{split}
    &rank(\boldA_R)\\
    &=tr(\boldA_R)\\
    &=tr({\boldH} - {\boldone}\ntimesn/n)\\
    &=tr(\boldH)-tr({\boldone}\ntimesn/n)\\
    &=tr\left(\boldX(\boldX^T\boldX)^{-1}\boldX^T\right)-1\\
    &=tr\left(\underbrace{(\boldX\ptimesn^T\boldX\ntimesp)^{-1}\boldX^T\ptimesn\boldX\ntimesp}_\text{$p\times p$}\right)-1\\
    &=tr\left(\boldI_{p}\right)-1\\
    &=(\sum_{i=1}^p 1)-1\\
    &=p-1\\
    \end{split}$$
:::

::: column
0.45
:::
:::
:::

::: frame
Sum of Squares: Rank

::: columns
::: column
0.52 $$\begin{split}
    &rank(\boldA_E)\\
    &=tr(\boldA_E)\\
    &=tr(\boldI_n-\boldH)\\
    &=tr(\boldI_n)-tr(\boldH)\\
    &\text{We just showed that $tr(\boldH)=p$}\\
    &=(\sum_{i=1}^n 1)-p\\
    &=n-p\\
    \end{split}$$
:::

::: column
0.48
:::
:::
:::

::: frame
Distributions of Sums of Squares

By the distribution theory we have $$%\begin{split}
%\frac{SSY}{\sigma^2}\sim\chi^2_{n-1,\lambda_Y},\;
%&\lambda_Y=\frac{E[\boldY]^T\boldA_YE[\boldY]}{\sigma^2}\\
%\frac{SSR}{\sigma^2}\sim\chi^2_{\myq-1,\lambda_R},\;
%&\lambda_R=\frac{E[\boldY]^T\boldA_RE[\boldY]}{\sigma^2}\\
%\frac{SSE}{\sigma^2}\sim\chi^2_{n-\myq,\lambda_E},\;
%&\lambda_E=\frac{E[\boldY]^T\boldA_EE[\boldY]}{\sigma^2}
%\end{split}
\begin{split}
    \frac{SSY}{\sigma^2}\sim\chi^2_{n-1,\lambda_Y},\;
    &\lambda_Y=\frac{E[\boldY]^T( \overbrace{\boldI_n-\boldone\ntimesn/n}^{A_Y} )E[\boldY]}{\sigma^2}\\
    \frac{SSR}{\sigma^2}\sim\chi^2_{\myq-1,\lambda_R},\;
    &\lambda_R=\frac{E[\boldY]^T(\overbrace{\boldH-\boldone\ntimesn/n}^{A_R})E[\boldY]}{\sigma^2}\\
    \frac{SSE}{\sigma^2}\sim\chi^2_{n-\myq,\lambda_E},\;
    &\lambda_E=\frac{E[\boldY]^T(\overbrace{\boldI_n-\boldH}^{A_E})E[\boldY]}{\sigma^2}
\end{split}$$
:::

::: frame
Non-centrality parameter $\lambda$

$\lambda_E$ $\lambda_E=0$ if $E[\boldY]=\boldX\boldbeta$, i.e., under
"L\"inearity of LINE (model is correctly specified with
$E[\boldY]=\boldX\boldbeta$) When $\lambda_E=0$, i.e. $\chi^2_{n-p}$ is
a central chi-square distribution,
$E[\frac{SSE}{\sigma^2}]=E[\chi^2_{n-p}]=n-p$, that is,
$\widehat{\sigma}^2=\frac{SSE}{n-p}$ is unbiased for $\sigma^2$

$\lambda_R$ $\lambda_R=0$ under
$H_0: \beta_1=\beta_2=\dots=\beta_{p-1}=0$ because
$E[\boldY]\stackrel{H_0}{=}\boldone\beta_0$;
$\boldone^T\boldH\boldone=\boldone^T\boldone$;
$\boldone^T\boldone_{\ntimesn}\boldone=\boldone^T\boldone$
:::

::: frame
Independence of SSR and SSE

$SSR=\boldY A_R\boldY$, $SSE=\boldY A_E\boldY$ To show $SSR\ind SSE$, we
need to show $A_R A_E =\boldzero\ntimesn$

$$\begin{split}
A_R A_E =& (\boldH-\boldone\ntimesn/n)(\boldI_n-\boldH)\\
=& (\boldH-\boldone\ntimesn/n)\boldI_n-(\boldH-\boldone\ntimesn/n)\boldH\\
=& (\boldH-\boldone\ntimesn/n)-(\boldH^2-\boldone\ntimesn\boldH/n)\\
=& (\boldH-\boldone\ntimesn/n)-(\boldH-\boldone\ntimesone\boldone\onetimesn\boldH/n)\\
=& (\boldH-\boldone\ntimesn/n)-(\boldH-\boldone\ntimesone\boldone\onetimesn/n)\\
=& (\boldH-\boldone\ntimesn/n)-(\boldH-\boldI\ntimesn/n)\\
=& \boldzero\ntimesn
\end{split}$$
:::

::: frame
Proof of distribution for F test

Consider F test for the model $H_0$ : none of the covariates explain
variation in $Y$ vs. $H_1$ : at least one covariate explains variation
in Y i.e., $H_0: \beta_1=\beta_2=\dots=\beta_{\myq-1}=0$

What have we shown so far

Therefore, F test for the model
$F=\frac{MSR}{MSE}=\frac{\frac{SSR}{\sigma^2}/(\myq-1)}{\frac{SSE}{\sigma^2}/(n-\myq)}\stackrel{H_0}{\sim} F_{p-1,n-p}$
:::

::: frame
ANOVA table

We can obtain the test statistic from MLR ANOVA table\

  ------------ -- ---- -- ---- -- ---- -- --- -- ---
                                                 
     Source        SS      df      MS      F      p
                                                 
                                                 
   Regression                                    
                                                 
     Error                                       
                                                 
     Total                                       
                                                 
                                                 
  ------------ -- ---- -- ---- -- ---- -- --- -- ---
:::

::: frame
Independence of $\widehat{\boldbeta}$ and $\widehat{\sigma}^2$

$\widehat{\boldbeta}=\underbrace{(\boldX^T\boldX)^{-1}\boldX^T}_\text{$p\times n$}\boldY$
and $\widehat{\sigma}^2=SSE/(n-p)=\boldY A_E\boldY/(n-p)$ To show
$\widehat{\boldbeta}\ind \widehat{\sigma}^2$, we need to show
$\underbrace{(\boldX^T\boldX)^{-1}\boldX^T}_\text{$p\times n$}\underbrace{A_E}_\text{$n\times n$} =\boldzero\ptimesn$

$$\begin{split}
            (\boldX^T\boldX)^{-1}\boldX^T A_E =& (\boldX^T\boldX)^{-1}\boldX^T(\boldI_n-\boldH)\\
            =& (\boldX^T\boldX)^{-1}\left[\boldX^T(\boldI_n-\boldH)\right]\\
            \stackrel{\tiny \boldI_n-\boldH\text{ is symmetric}}{\longeq}& (\boldX^T\boldX)^{-1}\left[(\boldI_n-\boldH)\boldX\right]^T\\
            &\text{Note: we showed in HW2 that $(\boldI_n-\boldH)\boldX=\boldzero$}\\
            =& \boldzero\ptimesn
        \end{split}$$
:::

::: frame
Proof of distribution for t test

t test for a single covariate $H_0:\beta_j=0$
$$\frac{\widehat{\beta}_j}{SE(\widehat{\beta}_j)}=
\frac{\widehat{\beta}_j}{\sqrt{ \widehat{\sigma}^2a_{j,j} }}=
\frac{
    \widehat{\beta}_j/\sqrt{\sigma^2a_{j,j}}
}
{\sqrt{ (\widehat{\sigma}^2a_{j,j})/(\sigma^2a_{j,j}) }}
=
\frac{
    N(\beta_j {\tiny \stackrel{H_0}{=}0},1)
}
{\sqrt{\frac{SSE}{\sigma^2}/(n-p)}}
=
%%%
%\frac{\widehat{\beta}_j}{\sqrt{\left(\sigma^2a_{j,j}\right) \frac{ \widehat{\sigma}^2}{\sigma^2}}}
\stackrel{H_0}{\sim }t_{n-2},$$ where
$a_{j,j}=(\boldX^T\boldX)^{-1}_{j,j}$ (recall
$\widehat{Var}(\widehat{\boldbeta})=\widehat{\sigma}^2(\boldX^T\boldX)^{-1}$)
:::

::: frame
Questions?
:::
