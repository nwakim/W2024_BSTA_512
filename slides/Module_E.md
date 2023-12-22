::: frame
Announcements About Midterm: Before the Exam

Study slides, homework questions, and past exams. You will be tested on
Modules A-E. Note that HW 3 solutions will be posted right after the
deadline (Oct 4 at 11:59pm), thus any late submission will not be
graded. There will not be a question that asks you to write R code to
analyze data. However, you will interpret R output.
:::

::: frame
Announcements About Midterm: During the Exam

We will post information about classrooms for exam review and exams on
Canvas soon.

This is a in-person closed notes, closed book exam. You are allowed to
bring **1 standard sheet of paper** with handwritten formulae (**can use
both sides of the paper**) and a **basic calculator**.

You may use a calculator. However, you must show step(s) prior to using
the calculator **(e.g., if you are evaluating a test statistic formed as
a ratio of two quantities, show the two numbers as a ratio, and then the
computed value obtained with the calculator)**.

**Do not "collaborate\" with others during the exam.** Any perception of
"collaboration\" with others during the exam will be considered academic
misconduct.

**Turn off all cell phones** and remove all headphones.
:::

::: frame
Announcements About Midterm: During the Exam

To get full credit, you must show all work unless something has been
proved in class. Unsupported answers may receive no credit. There will
be about 4 questions on the exam and each question will have multiple
parts. There will be questions on True/False statements, data analysis
and interpretation, and methods/theory. Questions will be very similar
to materials covered in lecture slides, homework, and past exams, but
not exactly the same. Note that the problems are not of equal
difficulty, so you may want to skip over and return to a problem on
which you are stuck.
:::

::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module E: Multiple Linear Regression** ]{style="color: royalblue"}
:::

::: frame
Outline

Topics:

Interpreting model parameters

Matrix representation

Parameter estimation

Properties of estimators

Sums of squares

Text (MPV, 4th Ed.): 3.1, 3.2, 3.3
:::

::: frame
Multiple Regression: Introduction Simple linear regression (SLR):

$Y_i=\beta_0 + \beta_1X_i + \epsilon_i$

Multiple linear regression (MLR):

$Y_i=\beta_0 + \sum_{k=1}^{\myq -1} \beta_kX_{ik} +
\epsilon_i$

Multiple regression can accommodate $\myq -1 \geq  1$ covariates

Modeling is usually based on several covariates

Many concepts from SLR extend well to MLR
:::

::: frame
Simple vs. Multiple Regression Consider a study of the association
between weight (response) and height and age (covariates), among
children age 10-19.

SLR model: $W_i=\beta_0+\beta_1 A_i+ \epsilon_i$, $A$ = age
$E[W_i|A_i] = \beta_0+\beta_1 A_i$ Consider two children, one age 10 and
the other age 11:

$E[W_1|A_1=11] = \beta_0+\beta_1(11)$ (1)

$E[W_2|A_2=10] = \beta_0+\beta_1(10)$ (2)

Subtract (2) from (1): $\beta_1 =$ mean increase in weight for each year
increase in age

In the SLR model above, we have ignored height$\ldots$
:::

::: frame
Simple vs. Multiple Regression (continued) Consider a multiple linear
regression model: $E[W_i|A_i,H_i] = \beta_0+\beta_1 A_i+\beta_2 H_i$,
$A$ = age, $H$ = height Again, consider two children, aged 10 and 11:

$E[W_1|A_1=11] = \beta_0+\beta_1(11)+\beta_2H_1$ (3)

$E[W_2|A_2=10] = \beta_0+\beta_1(10)+\beta_2H_2$ (4)

subtract (4) from (3) leaves $\beta_1+\beta_2(H_1-H_2)$ (???)

: How to interpret $\beta_1$?
:::

::: frame
Simple vs. Multiple Regression (continued)

Now, suppose that the heights of the two children being compared are
equal (say, $H_1=H_2=h$):
$E[W_1|A_1=11,H_1=h] = \beta_0+\beta_1(11)+\beta_2h$ (5)

$E[W_2|A_2=10,H_2=h] = \beta_0+\beta_1(10)+\beta_2h$ (6) Subtract (6)
from (5): $\beta_1$ equals the mean change in weight per 1-year increase
in age, with height held constant

$\beta_1$, based on the MLR model, is said to be *adjusted for* height
:::

::: frame
Multiple Regression: Interpreting Parameters Simple regression:
$E[Y_i] =  \beta_0 + \beta_1X_i$ $\beta_1=$ mean change in $Y$ per unit
increase in $X$ $\beta_1=$ the *crude* or *unadjusted* slope

Multiple regression: $E[Y_i] = \beta_0 +
\sum_{k=1}^{\myq -1} \beta_kX_{ik}$ $\beta_1=$ mean change in $Y$ per
unit increase in $X_1$, with all other $X_k$'s held constant $\beta_1=$
mean change in $Y$ per unit increase in $X_1$, adjusting for (or
controlling for) all other $X_k$
:::

::: frame
Interpreting Parameters $\beta_1$'s from SLR and MLR are equal in
special cases If $X_2,\ldots,X_{\myq -1}$ are uncorrelated with $X_1$ If
$X_2,\ldots,X_{\myq -1}$ are uncorrelated with $Y$, i.e.,
$\beta_2=\ldots=\beta_{\myq -1}=0$

Generally, $X_k$'s will not be uncorrelated

In contrast, extremely high correlations (multicollinearity) can cause
great difficulties w.r.t. parameter estimation and interpretation
:::

::: frame
Multiple Regression: Matrix Notation

More compact to use matrix notation: results derived more easily
$$\begin{aligned}
{\boldY} &=& {\boldX} \boldbeta + {\boldepsilon};\;\;\;\;\;E[{\boldY} ]= {\boldX} \boldbeta \\
{\boldY} &=& \left[\begin{array}{c} Y_1 \\ Y_2 \\ \vdots \\ Y_n
\end{array} \right]\ntimesone 
{\boldsymbol{\epsilon}} = \left[\begin{array}{c} \epsilon_1 \\ \epsilon_2 \\ \vdots \\ \epsilon_n
\end{array} \right]\ntimesone  
\end{aligned}$$ Design matrix ${\boldX}$ and parameter vector
$\boldbeta$: $$\begin{aligned}
{\boldX} = \left[ \begin{array}{ccccc} 1 &  X_{11} &  X_{12} & \ldots & X_{1,\myq -1} \\
1 &X_{21} &  X_{22} & \ldots & X_{2,\myq -1} \\
\vdots&\vdots & \vdots &  \ldots & \vdots \\
1 & X_{n1} &  X_{n2} & \ldots & X_{n,\myq -1} \end{array} \right]\ntimesp   
& \boldbeta  = \left[\begin{array}{c} \beta_0 \\ \beta_1\\ \beta_2 \\ \vdots \\
\beta_{\myq -1}
\end{array} \right]\ptimesone  \nonumber
\end{aligned}$$
:::

::: frame
Multiple Regression: Matrix Notation

::: columns
::: column
0.4

Example: $n=3, p=2$ $$\begin{aligned}
            {\boldY} &=& {\boldX} \boldbeta + {\boldepsilon} \\
            {\boldY} &=& \left[\begin{array}{c} 
                1 \\  1 \\ 1
            \end{array} \right]\ntimesone\\
            {\boldsymbol{\epsilon}} &=& \left[\begin{array}{c} \epsilon_1 \\ \epsilon_2 \\ \epsilon_3
            \end{array} \right]\ntimesone \\
            {\boldX}& =& \left[ \begin{array}{ccccc} 1 &  0 \\
                0 & 1 \\
                0 & 0 \\
            \end{array} \right]\ntimesp   \\
            \boldbeta  &=& \left[\begin{array}{c} \beta_0 \\ \beta_1
            \end{array} \right]\ptimesone  
        
\end{aligned}$$
:::

::: column
0.6
:::
:::
:::

::: frame
Multiple Regression: Assumptions

Assume:
${\boldsymbol{\epsilon}}\sim ({\boldzero}_n,\sigma^2 {\boldI}_n)$
$\epsilon_i$'s are mutually uncorrelated $\epsilon_i$'s have mean 0 and
equal variance $\sigma^2$

${\boldY}={\boldX}\boldbeta + {\boldsymbol{\epsilon}}$

$E[{\boldY}]=E[{\boldX}\boldbeta + {\boldsymbol{\epsilon}}]={\boldX}\boldbeta$

$Var[{\boldY}]=Var[{\boldX}\boldbeta + {\boldsymbol{\epsilon}}]=Var[{\boldsymbol{\epsilon}}]=\sigma^2{\boldI}_n$
Therefore, ${\boldY}\sim ({\boldX}\boldbeta,\sigma^2{\boldI}_n)$ Note:
we don't need normality and independence yet
:::

::: frame
Simple Linear Regression in Matrix Notation Straight-line Model:
$Y_i=\beta_0 + \beta_1 X_i + \epsilon_i$ $$\begin{aligned}
{\boldY} & = & {\boldX}\boldbeta + {\boldsymbol{\epsilon}} \nonumber \\
{\boldY} &=& \left[\begin{array}{c} Y_1 \\ Y_2 \\ \vdots \\ Y_n
\end{array} \right],\;\;
{\boldX}  =  \left[ \begin{array}{cc} 1 & X_1 \\ 1 & X_2 \\
\vdots & \vdots \\ 1 & X_n
\end{array} \right],\;\;
{\boldepsilon}=\left[ \begin{array}{c} \epsilon_1 \\
\epsilon_2 \\
\vdots \\
 \epsilon_n \\
\end{array}  \right],\;\;
 \boldbeta = \left[ \begin{array}{c} \beta_0 \\ \beta_1
\end{array} \right]
\nonumber
\end{aligned}$$

$SSE = %\sum_{i=1}^n(Y_i-\widehat{Y}_i)^2 =
 \sum_{i=1}^n\widehat{\epsilon}_i^2=\widehat{\boldepsilon}^T\widehat{\boldsymbol{\epsilon}}=\left[ \begin{array}{cccc} \epsilon_1 &  \epsilon_2 & \dots &\epsilon_n
\end{array}  \right]\left[ \begin{array}{c} \epsilon_1 \\
\epsilon_2 \\
\vdots \\
\epsilon_n \\
\end{array}  \right]$
:::

::: frame
Ordinary Least squares: solve
$\frac {\partial SSE} {\partial\widehat{\boldbeta}}=0$ $$\begin{aligned}
SSE \pause & = & \widehat{\boldsymbol{\epsilon}}_{\onetimesn}^T \widehat{\boldsymbol{\epsilon}}_{\ntimesone} \nonumber \\ 
& = &
({\boldY}\ntimesone-\widehat{\boldY}\ntimesone)^T({\boldY}-\widehat{\boldY}) \nonumber \\
& = & ({\boldY}\ntimesone-{\boldX}\ntimesp  \widehat{\boldbeta}\ptimesone )^T({\boldY}-{\boldX}\widehat{\boldbeta})
\nonumber \\
&\stackrel[({\bf A}{\bf B})^T = {\bf B}^T{\bf A}^T]{({\bf A}+{\bf B})^T = {\bf A}^T+{\bf B}^T}{\longeq}
& ({\boldY}^T\onetimesn -\widehat{\boldbeta}\onetimesp ^T{\boldX}^T\ptimesn )({\boldY}-{\boldX}\widehat{\boldbeta})
\nonumber \\
& =& {\boldY}^T {\boldY} - {\boldY}^T{\boldX}\widehat{\boldbeta} -
\widehat{\boldbeta}^T{\boldX}^T{\boldY} + \widehat{\boldbeta}^T {\boldX}^T{\boldX} \widehat{\boldbeta} \nonumber \\
& \stackrel[{\tiny
{\boldY}^T{\boldX}\widehat{\boldbeta}  =\widehat{\boldbeta} ^T{\boldX}^T {\boldY}
}]{ {\tiny 
{\boldY}^T{\boldX}\widehat{\boldbeta}   \text{ is a scalar, thus}
}}{\longeq}  & {\boldY}^T {\boldY} - 2\widehat{\boldbeta}^T{\boldX}^T{\boldY} +
\widehat{\boldbeta}^T {\boldX}^T{\boldX} \widehat{\boldbeta}
\nonumber
\end{aligned}$$
:::

::: frame
Ordinary Least squares: solve
$\frac {\partial SSE} {\partial\widehat{\boldbeta}}=0$

Choose $\widehat{\boldbeta}$ to minimize $SSE$ $$\begin{split}
\frac {\partial SSE} {\partial\widehat{\boldbeta}}
 = & \frac {\partial } {\partial\widehat{\boldbeta}}\left\{
{\boldY}^T {\boldY} - 2\widehat{\boldbeta}^T\onetimesp{\boldX}^T\ptimesn{\boldY}\ntimesone +
\widehat{\boldbeta}^T\onetimesp {\boldX}^T\ptimesn{\boldX}\ntimesp \widehat{\boldbeta}\ptimesone
\right\}
%\stackrel{\frac{\partial}{\partial{\bf x}} ({\bf x}^T {\bf a}) =  {\bf a}}{\longeq}
\end{split}$$
$\frac {\partial } {\partial\widehat{\boldbeta}}\left\{ \widehat{\boldbeta}^T{\boldX}^T{\boldY}\right\}\pause
\stackrel[\text{here }\bf a=X^TY]{\frac{\partial}{\partial{\bf x}} ({\bf x}^T {\bf a}) =  {\bf a}}{=\!\longeq\!\longeq\!\longeq\!=}     {\boldX}^T{\boldY}$

$\frac {\partial } {\partial\widehat{\boldbeta}} 
\left\{\widehat{\boldbeta}^T\onetimesp {\boldX}^T\ptimesn{\boldX}\ntimesp \widehat{\boldbeta}\ptimesone\right\}\pause
\stackrel[\text{here }\bf A=X^TX]{\frac{\partial}{\partial{\bf x}} ({\bf x}^T{\bf A}{\bf x}) = 2{\bf A}{\bf x}\;\;\;\;}{=\!=\!\longeq\!\longeq\!\longeq\!\longeq}   2{\boldX}^T{\boldX}  \widehat{\boldbeta}$

Therefore $$\frac {\partial SSE} {\partial\widehat{\boldbeta}}
=  -2
{\boldX}^T{\boldY}
+ 2{\boldX}^T{\boldX}
\widehat{\boldbeta}$$
:::

::: frame
Ordinary Least squares: solve
$\frac {\partial SSE} {\partial\widehat{\boldbeta}}=0$

Setting $\frac {\partial SSE} {\partial\widehat{\boldbeta}}$ equal to
${\boldzero}$ yields
$$\boxed{{\boldX}^T({\boldY}-{\boldX}\widehat{\boldbeta}) = {\boldzero}},$$
referred to as the *normal* equations

Solving normal equations:
$${\boldX}^T{\boldY}  = {\boldX}^T{\boldX}\widehat{\boldbeta}$$ If
${\boldX}^T{\boldX}$ is invertible, then we have
$$\boxed{\widehat{\boldbeta} =({\boldX}^T{\boldX})^{-1}{\boldX}^T{\boldY}}$$
Each $\widehat{\beta}_i,i=1,\dots,\myq$ is a linear combination of
$\boldY$
:::

::: frame
Ordinary Least squares

::: columns
::: column
0.4

Example: $n=3, p=2$ $$\begin{aligned}
            {\boldY} &=& {\boldX} \boldbeta + {\boldepsilon} \\
            {\boldY} &=& \left[\begin{array}{c} 
                1 \\  1 \\ 1
            \end{array} \right]\ntimesone\\
            {\boldsymbol{\epsilon}} &=& \left[\begin{array}{c} \epsilon_1 \\ \epsilon_2 \\ \epsilon_3
            \end{array} \right]\ntimesone \\
        {\boldX}& =& \left[ \begin{array}{ccccc} 1 &  0 \\
            0 & 1 \\
            0 & 0 \\
        \end{array} \right]\ntimesp   \\
         \boldbeta  &=& \left[\begin{array}{c} \beta_0 \\ \beta_1
        \end{array} \right]\ptimesone  
        
\end{aligned}$$
:::

::: column
0.6 What is $\widehat{\boldbeta}$ and what is $\widehat{\boldY}$?
:::
:::
:::

::: frame
Components of Normal equations A matrix of *sum of squares and cross
products* $$\begin{aligned}
\lefteqn{{\boldX}^T{\boldX} =} \nonumber   \\
&\pause \left[  \begin{array}{ccccc} n & \sum
X_{i1} & \sum X_{i2} & \ldots & \sum X_{i,\myq-1  } \\
\sum X_{i1} & \sum X_{i1}^2 & \sum X_{i1} X_{i2} & \ldots & \sum X_{i1}X_{i,\myq-1  } \\
\sum X_{i2} & \sum X_{i1}X_{i2} & \sum X_{i2}^2 & \ldots &
\sum X_{i2}X_{i,\myq-1  } \\
\vdots & \vdots & \vdots & \vdots & \vdots \\\vdots & \vdots & \vdots & \vdots & \vdots \\
\sum X_{i,\myq-1  } & \sum X_{i1}X_{i,\myq-1 } & \sum X_{i2} X_{i,\myq-1 } & \ldots &
\sum X_{i,\myq-1 }^2
\end{array} \right]_{\ptimesp}
\nonumber\\
&{\boldX}^T {\boldY} = \pause \left[ \begin{array}{c} \sum Y_i \\ \sum
X_{i1}Y_i \\ \sum X_{i2}Y_i \\ \ldots \\ \sum X_{i,\myq-1 }Y_i
\end{array} \right] \nonumber
\end{aligned}$$
:::

::: frame
Rank and Normal equations Linear independence, rank, and matrix inverse
Linear independence: Vectors $\bf x_1, x_2, \dots,x_\myq$ are linearly
independent if $\sum_{k=1}^\myq c_k{\bf x_k}\neq 0$ unless $c_k=0$ for
all $k$. Rank: For an $n\times p$ matrix $\bf X$,
$rank({\bf X})\leq min(n,p)$ is the number of linearly independent
columns (rows) of $\bf X$. We say ${\bf X}$ is *full rank* if
$rank({\bf X})=min(n,p)$; otherwise ${\bf X}$ is *singular* or
*rank-deficient*.

What is $rank({\bf X})$ if ${\bf X}= \left[\begin{array}{cc} 
1 &1\\  
1 &2 
\end{array} \right]$, what if ${\bf X}= \left[\begin{array}{ccc} 
1 &0&10\\  
1 &0 &10\\ 
1 &10&0\\
1 &10 &0
\end{array} \right]$?
:::

::: frame
Rank and Normal equations

Linear independence, rank, and matrix inverse $\boxed{
    rank({\bf X})=rank({\bf X}^T)=rank({\bf X}{\bf X}^T)=rank({\bf X}^T{\bf X})
}$ A $p\times p$ matrix ${\bf A}$ is invertible $\Leftrightarrow$ there
exists a matrix $\bf A^{-1}$ such that
${\bf A^{-1}}{\bf A}={\bf A}{\bf A^{-1}}={\bf I}_p$
$\Leftrightarrow rank(A)=p$ ("invertible\" $\Leftrightarrow$
"non-singular\")

Unique solution to normal equations
${\boldX}^T{\boldY}  = {\boldX}^T{\boldX}\widehat{\boldbeta}$ requires
${\bf A}\ptimesp=({\boldX}^T{\boldX})\ptimesp$ to have a unique inverse.
This requires:
$rank({\boldX}^T{\boldX})=p \stackrel{rank({\bf X})=rank({\bf X}^T{\bf X})}{\Leftrightarrow} rank({\boldX}\ntimesp)=p$
i.e., ${\bf X}$ has full column rank i.e., no column of ${\boldX}$ be
expressible as a linear combination of the other columns (recall
multicollinearity)
:::

::: frame
Properties of Least Squares Estimators Mean of $\widehat{\boldbeta}$:
$$\begin{split}
&E[\widehat{\boldbeta}] \\
= & E[({\boldX}^T{\boldX})^{-1} {\boldX}^T{\boldY}] \nonumber \\
= & ({\boldX}^T{\boldX})^{-1} {\boldX}^TE[{\boldY}] \nonumber \\ 
= & ({\boldX}^T{\boldX})^{-1} {\boldX}^T {\boldX}\boldbeta \nonumber\\
= & \boldbeta \nonumber
\end{split}$$
:::

::: frame
Properties of Least Squares Estimators Variance of
$\widehat{\boldbeta}$: $$\begin{split}
            &Var[\widehat{\boldbeta}]\\
            = & Var[({\boldX}^T{\boldX})^{-1} {\boldX}^T{\boldY}] \nonumber \\
            = & ({\boldX}^T{\boldX})^{-1} {\boldX}^T Var[{\boldY}] \{({\boldX}^T{\boldX})^{-1} {\boldX}^T  \}^T \nonumber \\
            = & ({\boldX}^T{\boldX})^{-1} {\boldX}^T \sigma^2 {\boldI}_n \{({\boldX}^T{\boldX})^{-1} {\boldX}^T  \}^T \nonumber \\ 
            = & \sigma^2 ({\boldX}^T{\boldX})^{-1} \nonumber
        \end{split}$$
:::

::: frame
Properties of LSE's (cont'd)

::: theorem
[]{#gaussmarkov label="gaussmarkov"} If
${\boldY}={\boldX}\boldbeta + {\boldsymbol{\epsilon}}$,
$E[{\boldsymbol{\epsilon}}]={\boldzero}$ and
$Var[{\boldsymbol{\epsilon}}]=\sigma^2{\boldI}$, then
$\widehat{\boldbeta}$ achieves minimum variance among linear unbiased
estimators.
:::

$\widehat{\boldbeta}$ referred to as the "BLUE" (best linear unbiased
estimator) for $\boldbeta$ "Best\" = minimum variance (most efficient)
$Var(\widehat{\boldbeta})\leq Var({\widehat{\boldbeta}}')$ "Best\" among
whom: among all *linear unbiased* estimators ${\widehat{\boldbeta}}'$

estimators are linear functions of the response, ${\boldY}$ estimators
are the $\widehat{\boldbeta}$'s satisfying
$E[\widehat{\boldbeta}]=\boldbeta$ In summary, $\widehat{\boldbeta}$ is
linear, unbiased, and has minimum variance among all linear unbiased
estimators. Bias-variance tradeoff: Among unbiased estimators, this is
the best we can do (smallest var) If we allow some bias, then we can
achieve even smaller variance
:::

::: frame
Properties of LSE [Adding Normality Assumption]{.underline} When
${\boldsymbol{\epsilon}}\sim
N({\boldzero},\sigma^2{\boldI})$, the LSE is the MLE

i.e., $\widehat{\boldbeta}$ obtained from least squares estimation is
also the maximum likelihood estimator (MLE) of $\boldbeta$

::: theorem
If ${\boldY}={\boldX}\boldbeta + {\boldsymbol{\epsilon}}$ and
${\boldsymbol{\epsilon}}\sim
    N({\boldzero},\sigma^2{\boldI})$, then $\widehat{\boldbeta}$ is the
uniformly minimum-variance unbiased estimator (UMVUE) of $\boldbeta$
:::
:::

::: frame
Fitted Means Vector of fitted means: $$\begin{aligned}
\widehat{\boldY} & = & {\boldX}\widehat{\boldbeta} \nonumber \\
 & = &  {\boldX}\left\{ ({\boldX}^T{\boldX})^{-1}{\boldX}^T{\boldY} \right\}\nonumber \\
 & = & {\boldH}{\boldY} \nonumber
\end{aligned}$$
$\boxed{{\boldH}={\boldX} ({\boldX}^T{\boldX})^{-1}{\boldX}^T}$: the
"hat" matrix ($\boldH$ puts a hat on $\boldY$) ${\boldH}:$ $n\times n$
matrix, involving only the covariates (hence not random)

We showed in HW 2 that ${\boldH}$ is symmetric and idempotent, i.e., a
projection matrix ${\boldI-\boldH}$ is symmetric and idempotent, i.e. a
projection matrix
$\boldH\boldX=\boldX \;\;\;\Rightarrow\;\;\; ({\boldI-\boldH})\boldX=\boldzero \;\;\;\Rightarrow\;\;\; \boldX^T(\boldI-\boldH)=\boldzero^T$
Hence
$\boldX^T(\boldI-\boldH)\boldY=\boldX^T(\boldY-\widehat{\boldY})={\boldX}^T \widehat{\boldsymbol{\epsilon}}=\boldzero$
:::

::: frame
Projection

For two vectors $\bf x$ and $\bf y$, the projection (
$\widehat{{\bf y}}$ ) of $\bf y$ onto $\bf x$ is given by
$$\widehat{{\bf y}}=\frac{{\bf x}^T{\bf y}}{{\bf x}^T{\bf x}}{\bf x}$$

::: columns
::: column
0.5 ![image](pic/2.pdf){height="1.2in"}
:::

::: column
0.5 Aim to minimize\
$\|\boldepsilon\|=\|{\bf y}-\widehat{{\bf y}}\|=\|{\bf y}-\widehat{a}{\bf x}\|$
The projection $\widehat{{\bf y}}$ lies on $\bf x$; need to determine
length ($\widehat{a}$) Geometrically $\widehat{a}$ should be selected
s.t. $\boldepsilon\perp {\bf x}$
:::
:::

If $\boldX$ is an $n\times p$ matrix of rank $p,n\geq p$, then the
projection of vector $\boldY$ onto the column space of $\boldX$ is given
by
$$\widehat{{\boldY}} = {\boldX} ({\boldX}^T{\boldX})^{-1}{\boldX}^T\boldY =\boldH\boldY$$
:::

::: frame
Geometric Perspective: residual $\perp$ all covariates

Geometrically we aim to find $\widehat{\boldbeta}$ to minimize distance
between ${\boldY}$ and $\widehat{\boldY}$, i.e. minimize
$\|\widehat{{\boldsymbol{\epsilon}}}\|$ (norm of residual)

$\widehat{\boldbeta}$ should be selected s.t. residual and covariates
are orthogonal
$\boxed{{\boldX}^T \widehat{\boldsymbol{\epsilon}} = {\boldX}^T({\boldY}- \widehat{\boldY}) = {\boldX}^T({\boldY}- {\boldX}\widehat{\boldbeta})={\boldzero} }$
(i.e., $\boldX_k^T\boldepsilon=0,\; \forall k$)
$\widehat{\boldY}={\boldX}\widehat{\boldbeta}=\boldH\boldY$ is a
projection of $\boldY$ onto the column space of $\boldX$

![image](pic/1.png){height="2.2in"}
:::

::: frame
Geometric Perspective: residual $\perp$ all covariates

Conclusions: On the ground: $\boldX\ntimesp$ and
$\widehat{\boldY}\ntimesone=\boldH\ntimesn\boldY\ntimesone$ Pole:
$\widehat{\boldepsilon}\ntimesone=\boldY-\widehat{\boldY}=(\boldI-\boldH)\ntimesn\boldY\ntimesone$

Hence $\widehat{\boldepsilon}$ is orthogonal to both $\boldX$ and
$\widehat{\boldY}$

$\boldX^T\ptimesn\widehat{\boldepsilon}\ntimesone=\underbrace{\boldX^T\ptimesn(\boldI-\boldH)\ntimesn}_\text{$\boldzero\ptimesn$}\boldY\ntimesone=\boldzero\ptimesone$
$\widehat{\boldY}^T\onetimesn\widehat{\boldepsilon}\ntimesone=0\onetimesone$
:::

::: frame
Properties of Fitted Means $\widehat{\boldY}$ Mean: $$\begin{aligned}
E[\widehat{\boldY}] & = \pause& E[{\boldH}{\boldY}]  = \boldH E[ \boldY]\nonumber\\
& \stackrel{{\scriptsize E[\boldY]=\boldX\boldbeta}}{\longeq}&     
{\boldH}{\boldX}\boldbeta \stackrel{{\scriptsize  {\boldH}\boldX=\boldX}}{\longeq}   {\boldX}\boldbeta \nonumber
\end{aligned}$$ Hence $\widehat{\boldY}$ is unbiased for $E[{\boldY}]$
:::

::: frame
Properties of Fitted Means $\widehat{\boldY}$

Variance: $$\begin{aligned}
        Var(\widehat{\boldY}) & = &\pause Var({\boldH}{\boldY}) \nonumber \\
         & = & {\boldH}Var({\boldY}){\boldH}^T \nonumber \\
        & = & {\boldH}\sigma^2{\boldI}_n{\boldH}^T \nonumber \\
        & = & \sigma^2 {\boldH} \nonumber
    
\end{aligned}$$

Distribution: further assuming normality, i.e.
$\boldepsilon\sim N({\boldzero},\sigma^2 {\boldI})$, then
$$\widehat{\boldY}=\boldH\boldY\sim N({\boldX}\boldbeta,\sigma^2 {\boldH})$$
:::

::: frame
Properties of Residual Vector $\widehat{\boldepsilon}$

Mean: $$\begin{aligned}
        E[\widehat{\boldepsilon}] & = &\pause E[\{{\boldI}_n-{\boldH} \} {\boldY}]=\{{\boldI}_n-{\boldH} \}E[ {\boldY}] \nonumber\\
        & \stackrel{{\scriptsize E[ {\boldY}] =\boldX\boldbeta}}{\longeq}& \{{\boldI}_n-{\boldH} \} \boldX\boldbeta  \stackrel{{\scriptsize  ({\boldI}_n-{\boldH})\boldX=0}}{\longeq} \boldzero \nonumber
    
\end{aligned}$$
:::

::: frame
Properties of Residual Vector $\widehat{\boldepsilon}$

Variance: $$\begin{aligned}
Var(\widehat{\boldsymbol{\epsilon}}) & = & \pause Var({\boldY} - \widehat{\boldY}) \nonumber \\
 & = & Var(\{{\boldI}_n-{\boldH} \} {\boldY}) \nonumber \\
& = & \{{\boldI}_n-{\boldH} \}  Var(\boldY)\{{\boldI}_n-{\boldH} \}^T \nonumber \\
 & = & \{{\boldI}_n-{\boldH} \}  \sigma^2 {\boldI}_n\{{\boldI}_n-{\boldH} \}^T \nonumber \\
 & = &  \sigma^2 ({\boldI}_n-{\boldH}) \nonumber
\end{aligned}$$

Distribution: further assuming normality, i.e.
$\boldepsilon\sim N({\boldzero},\sigma^2 {\boldI})$, then
$$\widehat{\boldsymbol{\epsilon}}=\{{\boldI}_n-{\boldH}\}\boldY\sim N({\boldzero}_n,\sigma^2 \{{\boldI}_n-{\boldH}\} )$$
:::

::: frame
Estimating Variance

Estimator of $\sigma^2$:

$$\begin{aligned}
\widehat{\sigma}^2 = \frac{SSE}{dfE} =\frac{\widehat{\boldepsilon}^T\widehat{\boldsymbol{\epsilon}}}{n-\myq} \nonumber
\end{aligned}$$

i.e., same form as $\widehat{\sigma}^2$ from SLR, but with greater loss
of $df$ since more parameters are estimated

Hence
$\widehat{Var}(\widehat{\boldbeta})\ptimesp=\widehat{\sigma}^2(\boldX^T\boldX)^{-1}$
This is a symmetric p-by-p matrix; $\widehat{\sigma}^2$ is a scalar
number On the main diagonal: variance
$\widehat{Var}(\widehat{\boldbeta})_{i,i}=\widehat{Var}(\widehat{\beta}_i)=SE(\widehat{\beta}_i)^2$
On the off-diagonal: covariance
$\widehat{Var}(\widehat{\boldbeta})_{i,j}=cov(\widehat{\beta}_i,\widehat{\beta}_j)$
:::

::: frame
Testing a Single Covariate

Just like in SLR, we can still construct a $T$ statistic to test
$H_0:\beta_k=0$ against $H_i: \beta_k\neq 0$, for any $k=0,\dots,\myq-1$

$$T=\frac{\widehat{\beta}_k}{\sqrt{\widehat{Var}(\widehat{\beta}_k)}}=\frac{\widehat{\beta}_k}{SE(\widehat{\beta}_k)}\stackrel{H_0}{\sim} t_{n-\myq}$$

$\widehat{\boldbeta}\sim N(\boldbeta\stackrel{H_0}{=}\boldzero,\sigma^2(\boldX^T\boldX)^{-1})$
under LINE (linear combination of $\boldY$)
$SSE/\sigma^2\sim \chi^2_{n-\myq}$ and
$\widehat{\boldbeta}\ind \widehat{\sigma}^2$ will be shown later Note
that $dfSSE=n-\myq$ due to estimating $\myq$ parameters (compare to
$n-2$ in SLR). This is reflected in the $t$ distribution

Interpretation: is the $k$-th covariate associated with the outcome
**adjusting/controlling for all other covariates** (or holding all other
covariates constant)?
:::

::: frame
Coefficient of Determination Just like in SLR, we still have
$$\underbrace{SSY}_\text{total variation}=\underbrace{SSR}_\text{explained by  $\myq$ covariates}+\underbrace{SSE}_\text{residual variation unexplained}$$
$R^2=SSR/SSY$ Same interpretation as in SLR, except now its percent of
variation in $Y$ accounted by all $\myq$ covariates $1-R^2=SSE/SSY$
percent variation in $Y$ not accounted for by the model

$0 \leq R^2 \leq 1$ If no error in data, i.e.,
${\boldY}={\boldX}\boldbeta$ then $R^2=1$ (perfect fit) If no slope,
i.e., $\widehat{Y}_i=\overline{Y}=\widehat{\beta}_0$ and
$\widehat{\beta}_{k>0}=0$, then $R^2=0$ (null model)
:::

::: frame
Coefficient of Determination (cont'd) $R^2$ must be interpreted with
some caution $SSE$ decreases (or stay the same) as more variables are
added to the model

$SSR$ increases (or stay the same) as covariates are added to a model

$SSY$ always stays the same (is not model-dependent)

thus, $R^2$ always increases (or stay the same) as more variables are
added

Higher is not necessarily better $R^2=SSR/SSY$ is not a good tool to
compare models: it will always "choose\" models with more covariates
However, as number of covariates increases, chances are we start to fit
the noise rather than real signal (overfitting) and misspecify the model
:::

::: frame
Adjusted R$^{2}$ A penalized version of $R^2$: pay a price for inclusion
of unnecessary variables in the model often utilized to compare models

Intuition (consider $SSE/(n-\myq)$ since $SSY/(n-1)$ is constant): Once
all of the correct variables have been included in the model, adding
additional noise variables will lead to tiny decrease in SSE In the
meanwhile, $\myq\uparrow$, $SSE/(n-\myq)\uparrow$, and consequently
$R_{adj}^2\downarrow$ In theory, the model with the largest $R_{adj}^2$
will have only correct variables and no noise variables
:::

::: frame
:::

::: frame
:::

::: frame
:::

::: frame
Interpretation Updated interpretation check list: : `Units`, **direction
(for slope not intercept)**, ["average/mean\"]{style="color: red"},
["estimated\"]{style="color: royalblue"}, *population*, (and magnitude)
: [95% CI or $p$-value]{.underline},

$\widehat{\beta}_1 = 3.64, p=0.0034, 95\%\; CI: (1.51, 5.77)$ Example:
We [estimated]{style="color: royalblue"} that, *among children aged
6-12*, one `year` **higher** age is associated with 3.64 ([95% CI: 1.51,
5.77]{.underline}, p=0.0034) `pounds` **higher** weight [on
average]{style="color: red"}.

$R^2 = 0.5926$ (adjusted $R^2 = 0.5519$)

Age explains 59.26% of the variance of weight
:::

::: frame
:::

::: frame
:::

::: frame
Interpretation Updated interpretation check list: : `Units`, **direction
(for slope not intercept)**, ["average/mean\"]{style="color: red"},
["estimated\"]{style="color: royalblue"}, *population*, (and magnitude)
: [95% CI or $p$-value]{.underline},

$\widehat{\beta}_1 = 1.07, p=0.0013, 95\%\; CI: (0.53, 1.61)$ Example:
*Among children aged 6-12*, comparing two children who differ in height
by one `inch`, the **taller** individual has an
[estimated]{style="color: royalblue"} [mean]{style="color: red"} weight
that is *1.07* ([95% CI: 0.53, 1.61]{.underline}, p=0.0013) `pounds`
**higher**.

Unadjusted $R^2 = 0.663$

Height explains 66.3% of the variance of weight
:::

::: frame
:::

::: frame
:::

::: frame
Interpretation Updated interpretation check list: : `Units`, **direction
(for slope not intercept)**, ["average/mean\"]{style="color: red"},
["estimated\"]{style="color: royalblue"}, *population*, , (and
magnitude) : [95% CI or $p$-value]{.underline},

$\widehat{\beta}_{age} = 2.05, p=0.057, 95\%\; CI: (-0.07,4.17)$
Example: We [estimated]{style="color: royalblue"} that, *among children
aged 6-12*, one `year` **higher** age is associated with 2.05 ([95% CI:
-0.07,4.17]{.underline}, p=0.06) `pounds` **higher** weight [on
average]{style="color: red"}, .
$\widehat{\beta}_{ht} = 0.72, p=0.02, 95\%\; CI: (0.13,1.31)$ Example:
*Among children aged 6-12*, comparing two children who differ in height
by one `inch`, the **taller** individual has an
[estimated]{style="color: royalblue"} [mean]{style="color: red"} weight
that is *0.72* ([95% CI: 0.13,1.31]{.underline}, p=0.02) `pounds`
**higher**, .

Unadjusted $R^2 = 0.78$

Together, age and height explain 78% of the variability in weight.
:::

::: frame
:::

::: frame
Interpretation While in crude analyses age was significantly associated
with weight, after adjustment for height the association was no longer
statistically significant (p=0.057).

The adjusted estimates for both height and age are attenuated (smaller
in absolute value), compared to the unadjusted estimates.

In HW 3, you will derive an adjustment factor (the relative amount of
difference between adjusted and unadjusted coefficients). By examining
the adjustment factor, you will be able to predict whether the crude
coefficients will be attenuated after adjustment, or whether they will
get larger in magnitude.
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
