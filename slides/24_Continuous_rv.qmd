# Chapter 24: Continuous r.v.'s and pdf's  {#chapter-24-continuous-r.v.s-and-pdfs .unnumbered}

Recall from Chapter 7:

**Discrete vs. Continuous r.v.'s**

-   For a **discrete** r.v., the set of possible values is either finite
    or can be put into a countably infinite list.

-   **Continuous** r.v.'s take on values from continuous *intervals*, or
    unions of continuous intervals.

------------------------------------------------------------------------

**How to define probabilities for continuous r.v.'s?**

::: definition
**Definition 1** (Probability density function). *  The probability
distribution, or **probability density function (pdf)**, of a continuous
random variable $X$ is a function $f_X(x)$, such that for all real
values $a,b$ with $a \leq b$,*

*$$\mathbb{P}(a \leq X \leq b) = \int_a^b f_X(x)dx$$*
:::

------------------------------------------------------------------------

**Remarks:**

1.  Note that $f_X(x) \neq \mathbb{P}(X=x)$!!!

2.  In order for $f_X(x)$ to be a pdf, it needs to satisfy the
    properties

    -   $f_X(x) \geq 0$ for all $x$

    -   $\int_{-\infty}^{\infty} f_X(x)dx=1$

::: example
**Example 2**. *  Let $f_X(x)= 2$, for $a \leq x \leq 3$.*

1.  *Find the value of $a$ so that $f_X(x)$ is a pdf.*

2.  *Find $\mathbb{P}(2.7 \leq X \leq 2.9)$.*

3.  *Find $\mathbb{P}(2.7 < X \leq 2.9)$.*

4.  *Find $\mathbb{P}(X = 2.9)$.*

5.  *Find $\mathbb{P}(X \leq 2.8)$.*
:::

::: definition
**Definition 3** (Cumulative distribution function). *  The **cumulative
distribution function (cdf)** of a continuous random variable $X$, is
the function $F_X(x)$, such that for all real values of $x$,
$$F_X(x)= \mathbb{P}(X \leq x) = \int_{-\infty}^x f_X(s)ds$$*
:::

------------------------------------------------------------------------

::: example
**Example 4**. *  Let $f_X(x)= 2$, for $2.5 \leq x \leq 3$. Find
$F_X(x)$.*
:::

------------------------------------------------------------------------

**Remarks:** In general, $F_X(x)$ is increasing and

-   $\lim_{x\rightarrow -\infty} F_X(x)= 0$

-   $\lim_{x\rightarrow \infty} F_X(x)= 1$

::: theorem
**Theorem 5**. *  If $X$ is a continuous random variable with pdf
$f_X(x)$ and cdf $F_X(x)$, then for all real values of $x$ at which
$F'_X(x)$ exists, $$\frac{d}{dx} F_X(x)= F'_X(x) = f_X(x)$$*
:::

::: example
**Example 6**. *  Let $X$ be a r.v. with cdf $$F_X(x)= \left\{
        \begin{array}{ll}
            0 & \quad x < 2.5 \\
            2x-5 & \quad 2.5 \leq x \leq 3 \\
            1 & \quad x > 3
        \end{array}
    \right.$$ Find the pdf $f_X(x)$.*
:::

**Solution:**

::: example
**Example 7**. *  Let $X$ be a r.v. with pdf $f_X(x)= 2e^{-2x}$, for
$x>0$.*

1.  *Show $f_X(x)$ is a pdf.*

2.  *Find $\mathbb{P}(1 \leq X \leq 3)$.*

3.  *Find $F_X(x)$.*

4.  *Given $F_X(x)$, find $f_X(x)$.*

5.  *Find $\mathbb{P}(X \geq 1 | X \leq 3)$.*

6.  *Find the median of the distribution of $X$.*
:::
