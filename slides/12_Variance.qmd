# Chapter 12: Variance of Discrete r.v.'s - or, Expected Values of Functions of r.v.'s {#chapter-12-variance-of-discrete-r.v.s---or-expected-values-of-functions-of-r.v.s .unnumbered}

## Expected Values of Functions of r.v.'s

 

**Question:** What is $\mathbb{E}[g(X)]$ for a function $g$ and discrete
r.v. $X$?

------------------------------------------------------------------------

::: example
**Example 1**. *Let $g(x) = ax+b$, for real-valued constants $a$ and
$b$. What is $\mathbb{E}[g(X)]$?*
:::

**Solution:**

------------------------------------------------------------------------

::: {#EfcnX .definition}
**Definition 2** (Expected value of a function of a r.v.). *  For any
function $g$ and discrete r.v. $X$, the expected value of $g(X)$ is
$$\mathbb{E}[g(X)] = \sum_{\{all\ x\}}\ g(x) p_X(x).$$*
:::

::: {#Draw2Cards_gX .example}
**Example 3**. *Suppose you draw 2 cards from a standard deck of cards
*with* replacement. Let $X$ be the number of hearts you draw.*

1.  *Find $\mathbb{E}[X^2]$.*

    ***Solution:***

2.  *Find $\mathbb{E}\big[\big(X-\frac{1}{2}\big)^2\big]$.*

    ***Solution:***
:::

## Variance of a r.v.

::: {#DefVar .definition}
**Definition 4** (Variance of a r.v.). *  The variance of a r.v. $X$,
with (finite) expected value $\mu_X=\mathbb{E}[X]$ is
$$\sigma_X^2=Var(X)=\mathbb{E}[(X-\mu_X)^2] = \mathbb{E}[(X-\mathbb{E}[X])^2].$$*
:::

::: {#DefSD .definition}
**Definition 5** (Standard deviation of a r.v.). *  The standard
deviation of a r.v. $X$ is
$$\sigma_X = SD(X) = \sqrt{\sigma_X^2}=\sqrt{Var(X)}.$$*
:::

------------------------------------------------------------------------

**Questions:** Why do we square the difference in the variance
definition? $(X-\mu_X)^2$

-   Why not define the measure of spread as
    $\mathbb{E}[X-\mu_X] = \mathbb{E}[X-\mathbb{E}[X]]$?

-   Why not use $\mathbb{E}[|X-\mu_X|]$?

::: {#DefVar_Comp .lemma}
**Lemma 6** (\"Computation formula\" for Variance). *  The variance of a
r.v. $X$, can be computed as
$$\sigma_X^2=Var(X)=\mathbb{E}[X^2]-\mu_X^2 = \mathbb{E}[X^2] - (\mathbb{E}[X])^2.$$*
:::

::: proof
*Proof.* ◻
:::

## Some Important Variance and Expected Values Results

::: lemma
**Lemma 7**. *  For a r.v. $X$ and constants $a$ and $b$,
$$Var(aX+b) = a^2Var(X).$$*
:::

::: proof
*Proof.* See homework. ◻
:::

------------------------------------------------------------------------

### Important Results for Independent r.v.'s

::: {#E_indep_gXhY .theorem}
**Theorem 8**. *  For independent r.v.'s $X$ and $Y$, and functions $g$
and $h$, $$\mathbb{E}[g(X)h(Y)] = \mathbb{E}[g(X)]\mathbb{E}[h(Y)].$$*
:::

::: corollary
**Corollary 1**. *  For independent r.v.'s $X$ and $Y$,
$$\mathbb{E}[XY] = \mathbb{E}[X]\mathbb{E}[Y].$$*
:::

::: proof
*Proof of Theorem [8](#E_indep_gXhY){reference-type="ref"
reference="E_indep_gXhY"}.* ◻
:::

::: {#ThmVarSum .theorem}
**Theorem 9** (Variance of sum of independent discrete r.v.'s). *  For
independent discrete r.v.'s $X_i$ and constants $a_i$, $i=1,2,\dots, n$,
$$Var\Big(\sum_{i=1}^n a_iX_i\Big) = \sum_{i=1}^n a_i^2Var(X_i).$$*
:::

::: corollary
**Corollary 2**. *  For independent discrete r.v.'s $X_i$,
$i=1,2,\dots, n$,
$$Var\Big(\sum_{i=1}^n X_i\Big) = \sum_{i=1}^n Var(X_i).$$*
:::

::: corollary
**Corollary 3**. *  For independent identically (i.i.d.) discrete r.v.'s
$X_i$, $i=1,2,\dots, n$,
$$Var\Big(\sum_{i=1}^n X_i\Big) = n Var(X_1).$$*
:::

::: proof
*Proof to Theorem [9](#ThmVarSum){reference-type="ref"
reference="ThmVarSum"}.* ◻
:::

::: {#LandportHotels .example}
**Example 10**. *A tour group is planning a visit to the city of
Landport and needs to book 30 hotel rooms. The average price of a room
is \$200 **with standard deviation \$10**. In addition, there is a 10%
tourism tax for each room. What is the **standard deviation** of the
cost for the 30 hotel rooms?*
:::

**Solution:**
