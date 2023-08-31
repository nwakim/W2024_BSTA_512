# Ch 37: The Central Limit Theorem (CLT) {#ch-37-the-central-limit-theorem-clt .unnumbered}

::: theorem
**Theorem 1** (Central Limit Theorem (CLT)). * Let $X_i$ be iid rv's
with common mean $\mu$ and variance $\sigma^2$, for $i=1,2,\ldots,n$.
Then $$\hspace{-12cm} \sum_{i=1}^n X_i \rightarrow$$*
:::

------------------------------------------------------------------------

::: corollary
**Corollary 1**. *  Let $X_i$ be iid rv's with common mean $\mu$ and
variance $\sigma^2$, for $i=1,2,\ldots,n$. Then
$$\hspace{-12cm} \bar{X}=\frac{\sum_{i=1}^n X_i}{n}  \rightarrow$$*
:::

::: example
**Example 2**. *  According to a large US study, the mean resting heart
rate of adult women is about 74 beats per minutes (bpm), with standard
deviation 13 bpm (NHANES 2003-2004).*

1.  *Find the probability that the average resting heart rate for a
    random sample of 36 adult women is more than 3 bpm away from the
    mean.*

2.  *Repeat the previous question for a single adult woman.*
:::

::: example
**Example 3**. *  Let $X_i \sim Exp(\lambda)$ be iid r.v.'s for
$i=1,2,\ldots,n$. Then $$\hspace{-12cm} \sum_{i=1}^n X_i \rightarrow$$*
:::

------------------------------------------------------------------------

**CLT for Discrete rv's**

1.  **Binomial rv's**: Let $X \sim Bin(n,p)$.

2.  **Poisson rv's**: Let $X \sim Poisson(\lambda)$.

::: example
**Example 4**. *  Suppose that the probability of developing a specific
type of breast cancer in women aged 40-49 is 0.001. Assume the
occurrences of cancer are independent. Suppose you have data from a
random sample of 20,000 women aged 40-49.*

1.  *How many of the 20,000 women would you expect to develop this type
    of breast cancer, and what is the standard deviation?*

2.  *Find the **exact** probability that more than 15 of the 20,000
    women will develop this type of breast cancer.*

3.  *Use the CLT to find the **approximate** probability that more than
    15 of the 20,000 women will develop this type of breast cancer.*

4.  *Use the CLT to approximate the following probabilities, where $X$
    is the number of women that will develop this type of breast
    cancer.*

    1.  *$\mathbb{P}(15 \leq X \leq 22)$*

    2.  *$\mathbb{P}(X > 20)$*

    3.  *$\mathbb{P}(X < 20)$*

5.  *Find the **approximate** probability that more than 15 of the
    20,000 women will develop this type of breast cancer - not using the
    CLT!*

6.  *Use the CLT to approximate the approximate probability in the
    previous question!*
:::
