::: center
Homework #9

BSTA 550

Due: Saturday, December 4, 2021
:::

Complete all of the problems listed below. Only turn in the ones listed
in the "Turn In\" column. Please submit problems in the order they are
listed.

*You must show all of your work to receive credit. Don't forget to
define every r.v. you use!* *In particular, **if a similar problem was
done in class or an example in the book, make sure to still show every
step in the solution and not just cite the examples' results**.*

::: center
:::

\* Include in your answer an explanation as to why we need the condition
that $t<\lambda$.

\*\* Do parts (a)-(c) below for #10 and #12:

-   Answer the question using the mgf $M_X(t)$ as instructed in the
    book.

-   Answer the question using $R_X(t)$ (as defined in class, and NTB
    [\[Ch43_R_Var\]](#Ch43_R_Var){reference-type="ref"
    reference="Ch43_R_Var"} below).

-   Which method did you prefer? Why?

\*\*\* Assume the distances between the cars are independent.

------------------------------------------------------------------------

Non-textbook problems (NTB): []{#NTB label="NTB"}

1.  []{#Ch43_R_Var label="Ch43_R_Var"} Let $R_X(t)=\ln(M_X(t))$. Show
    that Var$(X)=R''_X(0)$.

2.  []{#Ch43_SumExpGamma label="Ch43_SumExpGamma"} The mgf for a Gamma
    distribution is $M_X(t)=\frac{1}{(1-t/\lambda)^r}$. Use the mgf of
    an Exponential distribution (from #43.9), to show that the sum of
    $n$ i.i.d. Exponential($\lambda)$ random variables has a
    Gamma($r,\lambda$) distribution.

3.  []{#Ch43_SumPoisson label="Ch43_SumPoisson"} Use the mgf of a
    Poisson distribution to find the mgf of the following distributions.
    If the mgf is that of a common named distribution, then name the
    distribution and state its parameter(s).

    1.  The distribution of $\sum_{i=1}^nX_i$, if
        $X_i\sim$Poisson$(\lambda_i)$ and are independent.

    2.  The distribution of $\sum_{i=1}^3X_i$, if
        $X_i\sim$Poisson$(\lambda)$ and are independent (i.i.d. in this
        case).

    3.  The distribution of $3X$, if $X\sim$Poisson$(\lambda)$.

    4.  Why are the answers to (b) and (c) different?

4.  []{#Ch43_SumChiSquareOneDF label="Ch43_SumChiSquareOneDF"} Using
    mgf's, show that the sum of $n$ i.i.d. Chi Square random variables
    with one degree of freedom ($\chi^2_{(1)}$) r.v.'s has a Chi Square
    with $n$ degrees of freedom ($\chi^2_{(n)}$) distribution.

    *Hint:* First, look up the pdf of a $\chi^2_{(n)}$. This is a
    special case of the Gamma distribution with what parameters? Based
    on that and the information from \#
    [\[Ch43_SumExpGamma\]](#Ch43_SumExpGamma){reference-type="ref"
    reference="Ch43_SumExpGamma"} above, you can determine what the mgf
    of a $\chi^2_{(n)}$ is, which will help you determine whether the
    mgf of the sum of $n$ i.i.d. $\chi^2_{(1)}$ r.v.'s has a
    $\chi^2_{(n)}$ distribution.

------------------------------------------------------------------------

Selected answers (or hints) not provided at the end the book:

-   []{#ANS_43 label="ANS_43"}

    -   

    -   \(a\) Poisson$(\sum_{i=1}^n \lambda_i)$     (b)
        Poisson$(3\lambda)$      (c) $M_{3X}(t)=e{\lambda(e^{3t}-1)}$
        This is not an mgf of a common probability distribution.
             (d) In (b) we are adding independent r.v.'s $X_i$, while
        in (c) we are adding dependent r.v.'s ($3X=X+X+X$; $X$ is
        dependent with itself).

-   []{#ANS_36 label="ANS_36"}

    -   0.0044

    -   \(a\) 0.9525     (b) 0.7939     (c) 0.7939

    -   0.5911

    -   \(a\) $R=8.225\sigma+25\mu$     (b) $R=16.45\sigma+100\mu$
            (c) $R=164.5\sigma+10,000\mu$     (d)
        $R=1.645\sqrt{n}\sigma+n\mu$

-   []{#ANS_37 label="ANS_37"}

    -   0.8869

    -   0.0023

    -   0.3936

    -   0.4562

    -   \(b\) 0.0022     (c) $478.696\approx 479$
