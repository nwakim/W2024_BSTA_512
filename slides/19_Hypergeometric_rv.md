# Chapter 19: Hypergeometric r.v.'s {#chapter-19-hypergeometric-r.v.s .unnumbered}

**Scenario:** There are a fixed number of successes and failures (which
are known in advance), from which we make $n$ draws without replacement.
We are counting the number of successes from the $n$ trials.

------------------------------------------------------------------------

::: example
**Example 1**. *  A wildlife biologist is using mark-recapture to
research a wolf population. Suppose a specific study region is known to
have 24 wolves, of which 11 have already been tagged. If 5 wolves are
randomly captured, what is the probability that 3 of them have already
been tagged?*

***Solution:***
:::

------------------------------------------------------------------------

**Properties of Hypergeometric r.v.'s**

-   There is a finite population of $N$ items.

-   Each item in the population is either a success or a failure, and
    there are $M$ successes total.

-   We randomly select (sample) $n$ items from the population.

**Hypergeometric vs. Binomial r.v.'s**

Suppose a hypergeometric r.v. $X$ has the following properties:

-   the population size $N$ is really big,

-   the number of successes $M$ in the population is relatively large,

    -   $\frac{M}{N}$ shouldn't be close to 0 or 1

-   and the number of items $n$ selected is small.

Then, in this case, making $n$ draws from the population doesn't change
the probability of success much, and the hypergeometric r.v. can be
approximated by a binomial r.v.

::: example
**Example 2**. *  Suppose a specific study region is known to have 2400
wolves, of which 1100 have already been tagged.*

1.  *If 50 wolves are randomly captured, what is the probability that 20
    of them have already been tagged?*

2.  *Approximate the probability in part (1) using the binomial
    distribution.*

***Solution:***
:::
