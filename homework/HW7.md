::: center
Homework #7

BSTA 550

Due: Saturday, November 20, 2021
:::

Complete all of the problems listed below. Only turn in the ones listed
in the "Turn In\" column. Please submit problems in the order they are
listed.

*You must show all of your work to receive credit. Don't forget to
define every r.v. you use!* *In particular, **if a similar problem was
done in class or an example in the book, make sure to still show every
step in the solution and not just cite the examples' results**.*

::: center
   Chapter                                                                                  Turn In                                                                                    Extra Problems
  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -------------------
     25                                                                                                                                                                                    \# $17$
    26\*     \# 12, NTB \#[\[pdfMax\]](#pdfMax){reference-type="ref" reference="pdfMax"}, NTB \#[\[Ch26_fxy_Zmin\]](#Ch26_fxy_Zmin){reference-type="ref" reference="Ch26_fxy_Zmin"}   \# $7, 9, 19, 20$
     25                                              NTB \#[\[Ch25_XYratio\]](#Ch25_XYratio){reference-type="ref" reference="Ch25_XYratio"}                                          
     27                                                                                    \# 12\*\*                                                                                  \# $6, 8, 13, 17$
:::

\* Although within Chapter 26, these exercises are primarily practicing
the material from Chapter 25.

\*\* For Ch 27 \# 12, in order to find the conditional densities in
parts (a) and (b), you will need to calculate $f_Y(y)$ for the specific
regions of $y$ specified. After finding the conditional densities in
parts (a) and (b), also calculate the conditional probabilities below.
Please submit these together with your other work in parts (a) and (b):

-   Find $\mathbb{P}[0.5 < X < 3 | Y = 4]$.

-   Find $\mathbb{P}[0.5 < X < 3 | Y = 7]$.

------------------------------------------------------------------------

Non-textbook problems (NTB): []{#NTB label="NTB"}

1.  []{#pdfMax label="pdfMax"} Let $X_1, X_2, \ldots, X_n$ be i.i.d.
    random variables with common pdf $f_X(x)$ and cdf $F_X(x)$. Find the
    pdf for the random variable $Z$, where
    $Z = max(X_1, X_2, \ldots, X_n)$.

2.  []{#Ch26_fxy_Zmin label="Ch26_fxy_Zmin"} Let $X$ and $Y$ be
    independent random variables with respective pdf's
    $f_X(x)=\frac{1}{5}$, for $0\leq x\leq 5$, and $f_Y(y)=2e^{-2y}$,
    for $y>0$.

    1.  Find the joint distribution $f_{X,Y}(x,y)$.

    2.  Find the probability that $X$ is less than $Y$.

    3.  Let $Z$ be the random variable that is the smaller of $X$ and
        $Y$. Find the cumulative distribution function for $Z$.

    4.  Find the pdf for Z.

3.  []{#Ch25_XYratio label="Ch25_XYratio"} Suppose that the random
    variables $X$ and $Y$ have joint density $f_{X,Y}(x,y)$, for
    $0<x<1$, and $\frac{1}{2}<y<1$. Set up the equation for the cdf of
    $Z$, where $Z=X/Y$.

    *Hint: First determine what the possible values for $Z$ are. Then
    make a sketch of the domain of the joint pdf and shade in the region
    representing the cdf of Z for different values of $z$. Make sure to
    pay close attention to how the region we need to integrate over
    changes as $z$ changes. The cdf has two different cases depending on
    the value of $z$. Plug in specific values of $z$ and shade in the
    region representing the cdf to see why two different cases are
    needed.*

------------------------------------------------------------------------

Selected answers (or hints) not provided at the end the book:

-   []{#ANS_26 label="ANS_26"}

    -     (b) $\frac{233}{256}$     (c) $\frac{65}{256}$     (d)
        $\frac{1}{512}$

    -     (a) Yes.     (b) $\frac{15}{16}$

    -     (b) 0.09999546   (d)
        $f_Z(z) =\Big(\frac{11}{5} -  \frac{2z}{5}\Big)e^{-2z}$, for
        what values of $z$?

-   []{#ANS_27 label="ANS_27"}

    -   $f_{X|Y}(x|y)=\frac{e^{-x/4-y/5}}{4(e^{-y/5}-e^{-9y/20})}$, for
        $0< x< y$

    -   $f_{X|Y}(x|y)=\frac{1-x^2}{1-y-\frac{(1-y)^3}{3}}$, for
        $0\leq x, 0\leq y, x+y\leq 1$

    -   \(a\) $f_{X|Y}(x|y)=\frac{1}{2}$    (c) $\frac{4}{7}$
