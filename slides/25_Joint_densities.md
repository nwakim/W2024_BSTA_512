# Chapter 25: Joint densities {#chapter-25-joint-densities .unnumbered}

Recall from Chapter 24, that the probability distribution, or
**probability density function (pdf)**, of a continuous random variable
$X$ is a function $f_X(x)$, such that for all real values $a,b$ with
$a \leq b$, $$\mathbb{P}(a \leq X \leq b) = \int_a^b f_X(x)dx.$$

------------------------------------------------------------------------

**How to define the joint pdf for continuous r.v.'s?**

------------------------------------------------------------------------

**Remarks:**

1.  Note that $f_{X,Y}(x,y)\neq \mathbb{P}(X=x, Y=y)$!!!

2.  In order for $f_{X,Y}(x,y)$ to be a pdf, it needs to satisfy the
    properties

    -   $f_{X,Y}(x,y)\geq 0$ for all $x,y$

    -   $\displaystyle\int_{-\infty}^{\infty}\displaystyle\int_{-\infty}^{\infty} f_{X,Y}(x,y)dxdy=1$

**Double Integrals Mini Lesson**

::: example
**Example 1**. * Solve the following integrals.*

1.  *$\displaystyle\int_{2}^{3}\displaystyle\int_{0}^{1} xy dydx$*

2.  *$\displaystyle\int_{2}^{3}\displaystyle\int_{0}^{1} (x+y) dydx$*

3.  *$\displaystyle\int_{2}^{3}\displaystyle\int_{0}^{1} e^{x+y} dydx$*
:::

::: definition
**Definition 2** (Joint cumulative distribution function). *  The
**joint cumulative distribution function (cdf)** of continuous random
variables $X$ and $Y$, is the function $F_{X,Y}(x,y)$, such that for all
real values of $x$ and $y$,
$$F_{X,Y}(x,y)= \mathbb{P}(X \leq x, Y \leq y) = \int_{-\infty}^x\int_{-\infty}^y f_{X,Y}(s,t)dtds$$*
:::

**Remarks:**

-   The definition above for $F_{X,Y}(x,y)$ is a **function** of $x$ and
    $y$.

-   The joint cdf at the point $(a,b)$, is
    $$F_{X,Y}(a,b) = \mathbb{P}(X \leq a, Y \leq b) = \int_{-\infty}^a\int_{-\infty}^b f_{X,Y}(s,t)dtds$$

------------------------------------------------------------------------

::: definition
**Definition 3** (Marginal pdf's). *  Suppose $X$ and $Y$ are continuous
r.v.'s, with joint pdf $f_{X,Y}(x,y)$. Then the **marginal probability
density functions** are $$\begin{aligned}
f_X(x)&=& \int_{-\infty}^{\infty} f_{X,Y}(x,y)dy\\
f_Y(y)&=& \int_{-\infty}^{\infty} f_{X,Y}(x,y)dx
\end{aligned}$$*
:::

::: example
**Example 4**. *  Let $f_{X,Y}(x,y)= \frac32 y^2$, for
$0 \leq x \leq 2, \ 0 \leq y \leq 1$.*

1.  *Find $\mathbb{P}(0 \leq X \leq 1, 0 \leq Y \leq \frac12)$.*

2.  *Find $f_X(x)$ and $f_Y(y)$.*
:::

::: example
**Example 5**. *  Let $f_{X,Y}(x,y)= 2 e^{-(x+y)}$, for
$0 \leq x \leq y$.*

1.  *Find $f_X(x)$ and $f_Y(y)$.*

2.  *Find $\mathbb{P}(Y < 3)$.*
:::

::: {#joint_absolute_diff .example}
**Example 6**. *  Let $X$ and $Y$ have constant density on the square
$0 \leq X \leq 4, 0 \leq Y \leq 4$.*

1.  *Find $\mathbb{P}(|X-Y| < 2)$.*

    **Example [6](#joint_absolute_diff){reference-type="ref"
    reference="joint_absolute_diff"} continued.**

2.  *Let $M = \max(X,Y)$. Find the pdf for $M$, that is $f_M(m)$.*

3.  *Let $Z = \min(X,Y)$. Find the pdf for $Z$, that is $f_Z(z)$.*
:::

::: {#XY_pdf .example}
**Example 7**. *  Let $X$ and $Y$ have joint density
$f_{X,Y}(x,y)= \frac85(x+y)$ in the region $0 < x < 1,\ \frac12 < y <1$.
Find the pdf of the r.v. $Z$, where $Z=XY$.*
:::

*Example [7](#XY_pdf){reference-type="ref" reference="XY_pdf"} solution
continued.*
