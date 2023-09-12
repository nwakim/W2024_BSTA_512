# Chapter 29: Variance of Continuous Random Variables {#chapter-29-variance-of-continuous-random-variables .unnumbered}

## Expected value of a function of a continuous r.v.

**How do we calculate the expected value of a function of a discrete
r.v. or joint r.v.'s?**

------------------------------------------------------------------------

**How do we calculate the expected value of a function of a continuous
r.v. or joint r.v.'s?**

------------------------------------------------------------------------

::: {#29_EaX+b .example}
**Example 1**. *  What is $\mathbb{E}[aX+b]$?*
:::

::: {#28_E_joint .example}
**Example 2**. *  Let $f_{X,Y}(x,y)= 2e^{-(x+y)}$, for
$0 \leq x \leq y$. Find $\mathbb{E}[X]$.*
:::

**Remark**

If you are given $f_{X,Y}(x,y)$ and want to calculate $\mathbb{E}[X]$,
you have two options:

1.  Find $f_X(x)$ and use it to calculate $\mathbb{E}[X]$.

2.  Or, calculate $\mathbb{E}[X]$ using the joint density:
    $$\mathbb{E}[X] = \int_{-\infty}^{\infty}\int_{-\infty}^{\infty}x f_{X,Y}(x,y)dydx.$$

## Important properties of expected values of functions of continuous r.v.'s

1.  $\mathbb{E}[X+Y] =$

2.  If $X_1, X_2, \ldots X_n$ are continuous r.v.'s and
    $a_1, a_2, \ldots a_n$ are constants, then
    $\mathbb{E}[\sum_{i=1}^{n} a_i X_i] =$

3.  If $X$ and $Y$ are independent continuous r.v.'s, and $g$ and $h$
    are functions, then $\mathbb{E}[g(X)h(Y)] =$

4.  If $X$ and $Y$ are independent continuous r.v.'s, then
    $\mathbb{E}[XY] =$

## Variance of continuous r.v.'s

**How do we calculate the variance of a discrete r.v.?**

------------------------------------------------------------------------

**How do we calculate the variance of a continuous r.v.?**

::: {#29_V_Uab .example}
**Example 3**. *  Let $f_X(x)= \frac{1}{b-a}$, for $a \leq x \leq b$.
Find $Var[X]$.*
:::

------------------------------------------------------------------------

::: {#29_V_Exp .example}
**Example 4**. *  Let $f_X(x)= \lambda e^{-\lambda x}$, for $x > 0$ and
$\lambda> 0$. Find $Var[X]$.*
:::

## Important properties of variances of continuous r.v.'s

1.  $Var[aX+b] =$

2.  If $X_1, X_2, \ldots X_n$ are independent continuous r.v.'s and
    $a_1, a_2, \ldots a_n$ are constants, then
    $Var(\sum_{i=1}^{n} a_i X_i) =$

3.  If $X_1, X_2, \ldots X_n$ are independent continuous r.v.'s, then
    $Var(\sum_{i=1}^{n} X_i) =$

::: {#29_EV_cube .example}
**Example 5**. *  A machine manufactures cubes with a side length that
varies uniformly from 1 to 2 inches. Assume the sides of the base and
height are equal. The cost to make a cube is 10per cubic inch, and 5for
the general cost per cube. Find the mean and standard deviation of the
cost to make 10 cubes.*
:::
