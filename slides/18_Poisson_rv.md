# Chapter 18: Poisson r.v.'s {#chapter-18-poisson-r.v.s .unnumbered}

**Scenario:** We are counting the number of successes in a fixed time
period, which has a constant rate of successes.

------------------------------------------------------------------------

-   Recall that if $X\sim Binomial(n,p)$, then

    -   $X$ models the number of successes

    -   in $n$ independent (Bernoulli) trials

    -   that each have the same probability of success $p$.

-   Poisson r.v.'s are similar,

    -   except that instead of having $n$ discrete independent trials,

    -   there is a fixed time period during which the successes happen.

------------------------------------------------------------------------

::: example
**Example 1**. *  Some examples of Poisson r.v.'s:*

-   *Number of visitors to an emergency room in an hour during a weekend
    night*

-   *Number of study participants enrolled in a study per week*

-   *Number of gun shootings in a square mile*
:::

------------------------------------------------------------------------

**Properties of Poisson r.v.'s**

::: example
**Example 2**. *  Suppose an emergency room has an average of 50
visitors per day. Find the following probabilities.*

1.  *Probability of 30 visitors in a day.*

    ***Solution:***

2.  *Probability of 8 visitors in an hour.*

    ***Solution:***

3.  *Probability of at least 8 visitors in an hour.*

    ***Solution:***
:::

::: example
**Example 3**. *  Suppose emergency room 1 has an average of 50 visitors
per day, and emergency room 2 has an average of 70 visitors per day,
independently of each other. What is the probability distribution to
model of the total number of visitors to both?*
:::

**Solution:**

::: theorem
**Theorem 4**. *  If $X\sim Poiss(\lambda_1)$ and
$Y\sim Poiss(\lambda_2)$ are independent of each other, then
$Z=X+Y\sim Poiss(\lambda_1 + \lambda_2)$.*
:::

------------------------------------------------------------------------

**Poisson vs. Binomial r.v.'s**

Both Poisson and Binomial r.v.'s are counting the number of successes

-   If for a Binomial r.v.

    -   the number of trials $n$ is very large, and

    -   the probability of success $p$ is close to 0 or 1,

-   then the Poisson distribution can be used to approximate Binomial
    probabilities.

::: example
**Example 5**. *  Suppose that in the long run, errors in a medical
testing lab are made 0.1% of the time. Find the probability that fewer
than 4 mistakes are made in the next 2,000 tests.*

1.  *Find the probability using the Binomial distribution.*

2.  *Approximate the probability in part (1) using the Poisson
    distribution.*

***Solution:***
:::
