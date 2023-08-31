# Chapter 27: Conditional Distributions {#chapter-27-conditional-distributions .unnumbered}

**What do we know about conditional probabilities and distributions for
events and discrete r.v.'s?**

------------------------------------------------------------------------

::: {#27_Ex_1 .example}
**Example 1**. *  Let $f_{X,Y}(x,y)= 5 e^{-x-3y}$, for
$0 < y < \frac{x}{2}$.*

1.  *Find $\mathbb{P}(2<X<10|Y=4)$.*
:::

------------------------------------------------------------------------

::: definition
**Definition 2** (Conditional density). *The conditional density of a
r.v. $X$ given $Y=y$, is $$f_{X|Y}(x|y)= \frac{f_{X,Y}(x,y)}{f_Y(y)},$$
for $f_Y(y)> 0$.*
:::

**Remarks**

1.  It follows from the definition for the conditional density
    $f_{X|Y}(x|y)$, that $$f_{X,Y}(x,y)= f_{X|Y}(x|y)f_Y(y).$$

2.  For a fixed value of $Y=y$, the conditional density $f_{X|Y}(x|y)$
    is an actual pdf, meaning

    1.  $f_{X|Y}(x|y)\geq 0$ for all $x$ and $y$, and

    2.  $\displaystyle\int_{-\infty}^{\infty} f_{X|Y}(x|y)dx =1$.

**Example [1](#27_Ex_1){reference-type="ref" reference="27_Ex_1"}**
cont'd Let $f_{X,Y}(x,y)= 5 e^{-x-3y}$, for $0 < y < \frac{x}{2}$.

1.  Find $\mathbb{P}(2<X<10|Y=4)$.

2.  Find $\mathbb{P}(X>20 |Y=5)$.

::: example
**Example 3**. *  Randomly choose a point $X$ from the interval $[0,1]$,
and given $X=x$, randomly choose a point $Y$ from $[0,x]$. Find
$\mathbb{P}(0 < Y < \frac14)$.*
:::

------------------------------------------------------------------------

**Question** What is $f_{X|Y}(x|y)$ if $X$ and $Y$ are independent?

------------------------------------------------------------------------

**Remark** If $f_{X|Y}(x|y)$ does not depend on $y$, then $X$ and $Y$
are independent.
