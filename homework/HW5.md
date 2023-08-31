::: center
Homework #5

BSTA 550

Due: Wednesday, September 30, 2021
:::

Complete all of the problems listed below. Only turn in the ones listed
in the "Turn In\" column. Please submit problems in the order they are
listed.

*You must show all of your work to receive credit. Don't forget to
define every r.v. you use!* *In particular, **if a similar problem was
done in class or an example in the book, make sure to still show every
step in the solution and not just cite the examples' results**.*

::: center
     Chapter                                                                                                   Turn In                                                                                                                                                    Extra Problems
  ------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ ---------------------------------------------------------------------------------------------------------------------
       12        \# 2, NTB \#[\[Ch12_Var_linear_combo\]](#Ch12_Var_linear_combo){reference-type="ref" reference="Ch12_Var_linear_combo"} - [\[Ch12_p_hat\]](#Ch12_p_hat){reference-type="ref" reference="Ch12_p_hat"}                                             \# 1, 7, 11, 12, 15, 19, 25, 27
   13 (review)                                                                                                                                                                                                                                                    \# 3, 4, 5, 6, 8, 9, 10, 17, 25
       20                                                                                                                                                                                                                                                                   \# 2, 3, 4
       14                                                                                                                                                                                                                                                                     \# 3, 7
       15                                                                     NTBP [\[SumBinom\]](#SumBinom){reference-type="ref" reference="SumBinom"}                                                                 \# 1, 5, 11, 18, 23, NTBP [\[ParkinsonsBinom\]](#ParkinsonsBinom){reference-type="ref" reference="ParkinsonsBinom"}
       16                                                                                                        \# 8                                                                                                                                                     \# 3a-g, 11, 21
       17                                                                                                      \# 12a-c                                                                                                        \# 3a-g, 6, 9, 11, NTBP [\[SumNegBinom\]](#SumNegBinom){reference-type="ref" reference="SumNegBinom"}
:::

------------------------------------------------------------------------

Non-textbook problems (NTB): []{#NTB label="NTB"}

1.  []{#Ch12_Var_linear_combo label="Ch12_Var_linear_combo"} Prove that
    for a r.v. $X$ and constants $a$ and $b$, that
    $$\mathrm{Var}[aX+b]=a^2\mathrm{Var}[X].$$ Note: you will not earn
    credit for citing this as a special case of a more general result.

2.  []{#Ch12_Xbar label="Ch12_Xbar"} Let $\bar{X}$ be the random
    variable for the sample mean, $\bar{X}=\frac{\sum_{i=1}^nX_i}{n}$,
    where the $X_i$ are i.i.d. random variables with common mean $\mu$
    and variance $\sigma^2$.

    1.  Find $\mathbb{E}[\bar{X}]$.

    2.  Find $Var[\bar{X}]$.

3.  []{#Ch12_p_hat label="Ch12_p_hat"} Let $\hat{p}$ be the random
    variable for the sample proportion, $\hat{p}=\frac{X}{n}$, where $X$
    is the number of successes in a random sample of size $n$. Assume
    the probability of success is $p$.

    1.  Find $\mathbb{E}[\hat{p}]$.

    2.  Find $Var[\hat{p}]$.

4.  []{#ParkinsonsBinom label="ParkinsonsBinom"} Read the Washington
    Post article *The amazing woman who can smell Parkinson's disease -
    before symptoms appear*
    (<http://www.washingtonpost.com/news/morning-mix/wp/2015/10/23/scottish-woman-detects-a-musky-smell-that-could-radically-improve-how-parkinsons-disease-is-diagnosed/>)

    Assuming Joy Milne does not have the ability to detect Parkinson's
    disease via smell, answer the following questions:

    1.  What is the probability of her correctly detecting Parkinson's
        by smelling one t-shirt?

    2.  What is the probability of her correctly detecting Parkinson's
        in 12 out of 12 t-shirts?

5.  []{#SumBinom label="SumBinom"} Let $X_i\sim$ Binomial($n_i,p$) be
    independent r.v.'s for $i=1,\ldots,m$.

    1.  What does the r.v. $X=\sum_{i=1}^mX_i$ count, and what is the
        distribution of $X$? Make sure to specify the parameters of
        $X$'s distribution.

    2.  Find $\mathbb{E}[X]$. *Make sure to show your work for (b) and
        (c). However, you may use without proof what you know about the
        mean and variance of each $X_i$.*

    3.  Find $Var[X]$.

6.  []{#SumNegBinom label="SumNegBinom"} Let $X_i\sim$ Negative
    Binomial($r_i,p$) be independent r.v.'s for $i=1,\ldots,m$.

    1.  What does the r.v. $X=\sum_{i=1}^mX_i$ count, and what is the
        distribution of $X$? Make sure to specify the parameters of
        $X$'s distribution.

    2.  Find $\mathbb{E}[X]$. *Make sure to show your work for (b) and
        (c). However, you may use without proof what you know about the
        mean and variance of each $X_i$.*

    3.  Find $Var[X]$.

------------------------------------------------------------------------

Selected answers (or hints) not provided at the end the book:

-   Chapter 12 []{#ANS_12 label="ANS_12"}

    -     64.8

    -     1,096,357

-   Chapter 13 []{#ANS_13 label="ANS_13"}

    -     (a) 260/9     (b) 2.833     (c) $2.679\times 10^{-5}$     (d)
        Same idea as (c) Replace 10's with 100.     

    -     (a) $p_X(x)=\binom{4}{x}.3^x .7^{4-x}$, for $x=0,1,\ldots,4$
            (d) 0.3483     (e) 0.9163     (f) 0.0233     (g) 1

    -     (a) T     (b) F     (c) F     (d) F     (e) T     (f) T    (g)
        T

    -     (a) T     (b) T    (c) F     (d) T    (e) T     (f) F    (g) T
            (h) T (nonnegative instead of positive)     (i) F

-   Chapter 20 []{#ANS_20 label="ANS_20"}

    -     (a) 0.0001     (b) Discrete since $X$ has a finite number of
        possible values. Uniform since each outcome is equally likely.
            (c) $X$ = randomly selected 4-digit ID#;
        $X=0000,0001,\ldots,9999$     (d) 5000.5     (e) 8,333,333.25

-   Chapter 15 []{#ANS_15 label="ANS_15"}

    -     (a) Bin(21,0.65)     (b) 4.78     

-   Chapter 16 []{#ANS_16 label="ANS_16"}

    -     (c) $1.03\times 10^{-6}$    (d) 10 questions: 91.43
        minutes    

-   Chapter 17 []{#ANS_17 label="ANS_17"}

    -     (a) 400, 87.18     (b) No     

    -     (c) 0.8000
