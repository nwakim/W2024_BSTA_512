# Chapter 10 Expected Values of Discrete r.v.'s {#chapter-10-expected-values-of-discrete-r.v.s .unnumbered}

::: {#Die expected outcome .example}
**Example 1**. *Suppose you roll a fair 6-sided die. What value do you
expect to get?*
:::

**Solution:**

------------------------------------------------------------------------

::: {#Die expected outcome .example}
**Example 2**. *Suppose the die is 6-sided, but not fair. What value do
you expect to get on a roll?*
:::

**Solution:**

**Remark:** Expected vs. actual outcomes

------------------------------------------------------------------------

::: definition
**Definition 3** (Expected value). *The **expected value** of a discrete
r.v. $X$ that takes on values $x_1,  x_2, \ldots, x_n$ is
$$\mathbb{E}[X] = \sum_{i=1}^n x_ip_X(x_i).$$*
:::

**Remarks:**

-   The definition holds if the r.v. $X$ takes on countably infinitely
    many values $x_1,  x_2, \ldots$, as well:
    $$\mathbb{E}[X] = \sum_{i=1}^{\infty} x_ip_X(x_i).$$

-   Another way to define the expected value of a discrete r.v. is to do
    so at the $\omega$ level, where the $\omega$'s are outcomes in the
    sample space:

    -   Suppose $\omega_1, \omega_2, \ldots, \omega_n$ are the possible
        outcomes of a random phenomenon. If outcome $\omega_i$ causes
        the r.v. X to take on value $x_i$ (meaning $X(\omega_i)=x_i$),
        then
        $$\mathbb{E}[X] = \sum_{i=1}^{\infty} x_i\mathbb{P}(\{\omega_i\}).$$

::: {#Bernoulli_E .example}
**Example 4**. *Suppose $$X = \left\{
        \begin{array}{ll}
            1 & \quad \mathrm{with\ probability}\ p \quad\mathrm{(success)}\\
            0 & \quad \mathrm{with\ probability}\ 1-p \quad\mathrm{(failure)}
        \end{array}
    \right.$$ Find the expected value of $X$.*
:::

**Solution:**

------------------------------------------------------------------------

::: example
**Example 5**. *Suppose $$X = \left\{
        \begin{array}{ll}
            1 & \quad \mathrm{with\ probability}\ p \\
            -1 & \quad \mathrm{with\ probability}\ 1-p 
        \end{array}
    \right.$$ Find the expected value of $X$.*
:::

**Solution:**

::: {#Bullseye .example}
**Example 6**. *Suppose I throw darts at a dartboard until I hit the
bullseye, and that my probability of hitting the bullseye is $p$.
Suppose further that all of my throws are independent, and that the
probability of a bullseye never changes, no matter how many times I
throw a dart. How many times should I expect to have to throw the dart
until I hit the bullseye?*
:::

**Solution:**

::: {#GhostUniformTrickTreat .example}
**Example 7**. *A ghost is trick-or-treating. It comes to a house where
it is known that there are 30 candies in the bag and only one is a
watermelon Jolly Rancher, which is the ghost's favorite. The ghost takes
pieces of candy without replacement until it gets the watermelon Jolly
Rancher. How many pieces of candy do we expect the ghost to take?*
:::

**Solution:**

**Remark:** Both examples are repeated random processes. They are
fundamentally different though:

-   The bullseye example ([6](#Bullseye){reference-type="ref"
    reference="Bullseye"}) is \"*with replacement*\" since the
    probability of success remains constant.

-   The ghost trick-or-treating example
    ([7](#GhostUniformTrickTreat){reference-type="ref"
    reference="GhostUniformTrickTreat"}) is *without replacement*, and
    thus the probability of success changes with each trial.
