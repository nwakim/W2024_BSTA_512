::: center
Homework #8

BSTA 550

Due: Sunday, November 28, 2021
:::

Complete all of the problems listed below. Only turn in the ones listed
in the "Turn In\" column. Please submit problems in the order they are
listed.

*You must show all of your work to receive credit. Don't forget to
define every r.v. you use!* *In particular, **if a similar problem was
done in class or an example in the book, make sure to still show every
step in the solution and not just cite the examples' results**.*

::: center
   Chapter                                                                                            Turn In                                                                                                  Extra Problems
  --------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -----------------------------
     28                                                                                                \# 18                                                                                                     \# $1, 10$
    29 \*    \# 26, NTB [\[Ch29ExpRV\]](#Ch29ExpRV){reference-type="ref" reference="Ch29ExpRV"}, [\[Ch29UnifWaitingTime\]](#Ch29UnifWaitingTime){reference-type="ref" reference="Ch29UnifWaitingTime"}   \# $10, 14, 23, 11, 13, 32$
     30                                                                                                                                                                                                          \# 4, 7-12
     31                                                                                                \# 18                                                                                                   \# $13, 14, 17$
     32                                                                                                \# 8                                                                                                \# $3, 5, 10^{**}, 15$
     33                                               NTB [\[Ch33PoissonProcess\]](#Ch33PoissonProcess){reference-type="ref" reference="Ch33PoissonProcess"}                                                    \# $3, 9, 10$
     35                                      \# 10, NTB \# [\[Ch35_Normal_Parachute\]](#Ch35_Normal_Parachute){reference-type="ref" reference="Ch35_Normal_Parachute"}                                           \# 6, 9, 24
:::

\* I recommend doing the Chapter 29 Extra Problems in the order listed.

\*\* Assume $X$ and $Y$ are independent.

------------------------------------------------------------------------

Non-textbook problems (NTB): []{#NTB label="NTB"}

1.  []{#Ch29ExpRV label="Ch29ExpRV"} Let $f_X(x)=\lambda e^{-\lambda x}$
    for $x>0$, where $\lambda>0$.

    1.  Show $Var[X]=\frac{1}{\lambda^2}$. You may use the result from
        class for $\mathbb{E}[X]$ without first proving it.

2.  []{#Ch29_SumsRV label="Ch29_SumsRV"} A shipping company handles
    containers in three different sizes: (1) 27 $ft^3$ (3 x 3 x 3), (2)
    125 $ft^3$, and (3) 512 $ft^3$. Let $X_i$ ($i =   1, 2, 3$) denote
    the number of type $i$ containers shipped during a given week.
    Suppose that
    $\mu_1 =200,\sigma_1=10,\mu_2 =250,\sigma_2=12,\mu_3 =100,\sigma_3=8$.

    1.  Assuming that $X_1,X_2,X_3$ are independent, calculate the
        expected value and variance of the total volume shipped.

    2.  Would your calculations necessarily be correct if the $X_i$'s
        were not independent? Explain.

3.  []{#Ch29UnifWaitingTime label="Ch29UnifWaitingTime"} Suppose your
    waiting time for a bus in the morning is uniformly distributed on
    \[0, 8\] (minutes), whereas waiting time in the evening is uniformly
    distributed on \[0, 10\] (minutes) independent of morning waiting
    time. *Make sure to FIRST set up an equation for calculating the
    total waiting time in each question before calculating the mean and
    variance of the total waiting time.* *You may use results from class
    for the expected value and variance of uniform r.v.'s without
    proving them*

    1.  If you take the bus each morning and evening for a week (7
        days), what is your total expected waiting time?

    2.  What is the variance of your total waiting time?

    3.  What are the expected value and variance of the difference
        between morning and evening waiting times on a given day?

    4.  What are the expected value and variance of the difference
        between total morning waiting time and total evening waiting
        time for a particular week?

4.  []{#Ch33PoissonProcess label="Ch33PoissonProcess"} Suppose that
    voters arrive at a polling station at the rate of 120 per hour.For
    each of the following parts, [give the name and parameter(s) of the
    distribution]{.underline} to be used to model the event and [set up
    the expression]{.underline} to find the specified probability.*You
    do not need to compute the probability.*

    1.  The probability that the next voter will arrive in less than 30
        seconds.

    2.  The probability that 200 voters will arrive within two hours of
        each other.

    3.  The probability that the $50^{th}$ voter will arrive in between
        15 and 30 minutes.

5.  []{#Ch35_Normal_Parachute label="Ch35_Normal_Parachute"}The
    automatic opening device of a military cargo parachute has been
    designed to open when the parachute is 200 m above the ground.
    Suppose opening altitude actually has a normal distribution with
    mean value 200 m and standard deviation 30 m. Equipment damage will
    occur if the parachute opens at an altitude of less than 100 m. What
    is the probability that there is equipment damage to the payload of
    at least one of the five independentIy dropped parachutes?

------------------------------------------------------------------------

Selected answers (or hints) not provided at the end the book:

-   []{#ANS_28 label="ANS_28"}

    -   \(a\) 8/9     (b) 14/3     

    -   4/5

-   []{#ANS_29 label="ANS_29"}

    -   \(a\) 26/81     (b) 74/9

    -   \(a\) 67/3     (b) 1/14     (c) 25/12     (d) $\sqrt{25/12}$

    -   250

    -   See notes (or book) for the proof from the discrete random
        variables case. The proof doesn't depend on what type of random
        variable (discrete vs. continuous) is being used.

    -   \(a\) 63     (b) 287/3     (c) -1, 41/3     (d) -7, 287/3

-   []{#ANS_30 label="ANS_30"}

    -   $f_x(x)=1/2$ for $2\leq x\leq 4$

    -   \(a\) T     (b) T     (c) F

    -   \(a\) F     (b) T

    -   \(a\) T     (b) T     (c) F     (d) T

-   []{#ANS_31 label="ANS_31"}

    -   \(a\) 0.25     (b) 0.02887     (c) 0.063     (d) 0.0145     (e)
        0.01625     (f) 0.0055     (f) 6.195    (g) 0.00433     (h)
        61.95     (i) 0.0433

    -   2.25

    -   7/15

-   []{#ANS_32 label="ANS_32"}

    -   0.2526

    -   0.8047

    -   0.4323

-   []{#ANS_33 label="ANS_33"}

    -   \(a\) $f_x(x)=\frac{x}{9}e^{-x/3}$ for $x> 0$     (b) 0.4963

-   []{#ANS_35 label="ANS_35"}

    -   \(a\) 0     (b) -1.13     (c) $\pm 0.32$

    -   \(a\) 0.0475     (b) 0.0475     (c) 0.2283     (d) 68.97 to
        81.03     (e) 48 to 102     (f) 68.97

    -   \(a\) 0.2119     (b) 0.0011

    -     0.002
