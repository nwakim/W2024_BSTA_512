# Chapter 43: Moment Generating Functions Part 1 {#chapter-43-moment-generating-functions-part-1 .unnumbered}

::: center
**What are *moments*?**
:::

::: definition
**Definition 1**. *  The $j^{th}$ moment of a r.v. $X$ is
$\mathbb{E}[X^j]$.*
:::

::: example
**Example 2**. *  $1^{st}-4^{th}$ moments.*
:::

------------------------------------------------------------------------

::: center
**What is a *moment generating function* (mgf)?**
:::

::: definition
**Definition 3**. *  If $X$ is a r.v., then
$$M_X(t)= \mathbb{E}[e^{tX}]$$ is the **moment generating function**
(**mgf**) associated with $X$.*
:::

**Remarks**

-   For a discrete r.v., the mgf of $X$ is
    $$M_X(t)= \mathbb{E}[e^{tX}]=\sum_{all \ x}e^{tx}p_X(x)$$

-   For a continuous r.v., the mgf of $X$ is
    $$M_X(t)= \mathbb{E}[e^{tX}]=\int_{-\infty}^{\infty}e^{tx}f_X(x)dx$$

-   The mgf $M_X(t)$ is a function of $t$, not of $X$, and it might not
    be defined (i.e. finite) for all values of $t$. We just need it to
    be defined for $t=0$.

::: example
**Example 4**. *  What is $M_X(t)$ for $t=0$?*
:::

------------------------------------------------------------------------

::: theorem
**Theorem 5**. *  The moment generating function uniquely specifies a
probability distribution.*
:::

::: theorem
**Theorem 6**. *  $$\mathbb{E}[X^r] = M_X^{(r)}(0)$$*
:::

::: proof
*Proof.* ◻
:::

::: example
**Example 7**. *  Let $X \sim Poisson(\lambda)$.*

1.  *Find the mgf of $X$.*

2.  *Find $\mathbb{E}[X]$.*

3.  *Find $Var(X)$.*
:::

**Remark**

Finding the mean and variance is sometimes easier with the following
trick.

::: theorem
**Theorem 8**. *Let $$R_X(t) = \ln[M_X(t)]$$*

*Then,*

*$$\mu = \mathbb{E}[X] = R_X'(0)$$ and $$\sigma^2 = Var(X) = R_X''(0)$$*
:::

::: proof
*Proof.* ◻
:::

------------------------------------------------------------------------

::: example
**Example 9**. *  Let $X \sim Poisson(\lambda)$.*

1.  *Find $\mathbb{E}[X]$ using $R_X(t)$.*

2.  *Find $Var(X)$ using $R_X(t)$.*
:::

::: example
**Example 10**. *  Let $Z$ be a standard normal random variable, i.e.
$Z \sim N(0,1)$.*

1.  *Find the mgf of $Z$.*

2.  *Find $\mathbb{E}[Z]$.*

3.  *Find $Var(Z)$.*
:::
