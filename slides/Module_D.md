::: frame
[**BIOSTAT 650\
Theory and Application of Linear Regression\
Module D: Matrix Algebra Review** ]{style="color: royalblue"}
:::

::: frame
Outline

::: itemize
Topics:

::: itemize
Types of matrices

Matrix properties

Matrix operations

Random vectors
:::
:::
:::

::: frame
Matrix Review: vectors, matrices

::: itemize
: array of numbers; e.g., $$\begin{aligned}
    {\bf b} = \left[ \begin{array}{c} b_1 \\ b_2 \\ \vdots \\ b_q
    \end{array}\right] \nonumber
\end{aligned}$$ ${\bf b}$ is a $q\times 1$ vector

Note: all vectors assumed to be column vectors, unless stated otherwise

: two-dimensional (rectangular) array of numbers; e.g.,
$$\begin{aligned}
    {\bf A} = \left[ \begin{array}{cccc} a_{11} & a_{12} & \ldots &
        a_{1c} \\
        a_{21} & a_{22} & \ldots &
        a_{2c} \\
        \vdots & \ldots & \ldots & \vdots \\ a_{r1} & a_{r12} & \ldots &
        a_{rc}
    \end{array}\right] \nonumber
\end{aligned}$$

${\bf A}$: $r\times c$ matrix
:::
:::

::: frame
Special Types of Matrices

::: itemize
: $1\times 1$ matrix; $1\times 1$ vector

matrix: equal number of rows and columns

matrix: only elements on main diagonal may be non-zero; e.g.,
$$\begin{aligned}
 {\bf A} = \left[
\begin{array}{ccc} 5 & 0 & 0 \\ 0 & 4 & 0 \\ 0 & 0 & 8
\end{array} \right]
\nonumber
\end{aligned}$$

matrix: square, diagonal matrix, with 1's along the main diagonal; e.g.,
$$\begin{aligned}
{\bf A} = \left[ \begin{array}{cccc} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\
    0 & 0 & 1  & 0 \\ 0 & 0 & 0  & 1 \\
\end{array} \right] \equiv {\bf I}_4
\nonumber
\end{aligned}$$

If ${\bf B}$ is a $r\times c$ matrix, ${\bf I}_r{\bf
B}={\bf B}$ and ${\bf B}{\bf I}_c={\bf B}$
:::
:::

::: frame
Special Matrices (continued)

::: itemize
matrix: $a_{ij}=0$ for $i>j$; *lower triangular* matrix: $a_{ij}=0$ for
$i<j$; e.g., $$\begin{aligned}
{\bf A} = \left[ \begin{array}{ccc} 1 & 2 & 4 \\ 0 & 6 & 0 \\ 0 &
0 & 2
\end{array} \right] & {\bf B} = \left[ \begin{array}{ccc} 3 & 0 & 0 \\ 1 &
8 & 0 \\ 5 & 1 & 9
\end{array}  \right] \nonumber
\end{aligned}$$

matrix: $a_{ij}=a_{ji}$; e.g., $$\begin{aligned}
{\bf A} = \left[ \begin{array}{ccc} 1 & 2 & 4 \\ 2 & 6 & 0 \\ 4 &
0 & 7
\end{array} \right] \nonumber
\end{aligned}$$ any diagonal matrix is symmetric
:::
:::

::: frame
Special Matrices (cont'd)

::: itemize
Zero matrix: $a_{ij}=0$; e.g., $$\begin{aligned}
{\bf A} = \left[ \begin{array}{ccc} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 &
0 & 0 \end{array} \right] \equiv   {\bf 0}_{3\times 3} \nonumber
\end{aligned}$$

One vector: all elements equal 1; e.g.,

$$\begin{aligned}
{\bf b} = \left[ \begin{array}{c} 1 \\ 1 \\ 1 \\ 1
\end{array} \right] \equiv {\bf 1}_4 \nonumber
\end{aligned}$$

One matrix: $a_{ij}=1$; e.g., $$\begin{aligned}
    {\bf A} = \left[ \begin{array}{ccc} 1 & 1 & 1 \\ 1 & 1& 1 \\ 1 &
        1 & 1 \end{array} \right] \equiv   {\bf 1}_{3\times 3} \nonumber
\end{aligned}$$
:::
:::

::: frame
Matrix Functions

::: itemize
: the columns of ${\bf A}^T$ equal the rows of ${\bf A}$; e.g.,
$$\begin{aligned}
 {\bf A} = \left[
\begin{array}{ccc} 1 & 3 & 4 \\ 2 & 1 & 0 \\ 5 & 7 & 9 \end{array}
\right] & &  {\bf A}^T = \left[
\begin{array}{ccc} 1 & 2 & 5 \\ 3 & 1 & 7 \\ 4 & 0 & 9 \end{array}
\right] \nonumber
\end{aligned}$$ if ${\bf A}={\bf A}^T$, then ${\bf A}$ is *symmetric*

Matrix addition: proceeds element-wise; i.e., $$\begin{aligned}
{\bf A} = \left[ \begin{array}{cc} a_{11} & a_{12} \\ a_{21} &
a_{22} \end{array} \right] \;\;\;\;\; {\bf B} = \left[
\begin{array}{cc} b_{11} & b_{12} \\ b_{21} & b_{22} \end{array}
\right] \nonumber
\\ \nonumber \\
{\bf A}+{\bf B} = \left[ \begin{array}{cc} a_{11}+b_{11} & a_{12}+b_{12} \\
a_{21}+b_{21} & a_{22}+b_{22} \end{array} \right] \nonumber
\end{aligned}$$ only defined for matrices of the same order
:::
:::

::: frame
Matrix Functions (continued)

::: itemize
Vector *inner product*: sum of element-wise products; i.e.,
$$\begin{aligned}
{\bf a}=\left[ \begin{array}{c} a_1 \\ a_2 \\ a_3 \end{array}
\right] & {\bf b}=\left[ \begin{array}{c} b_1 \\ b_2 \\ b_3
\end{array} \right] \;\;\; {\bf a}^T{\bf b} = \sum_{i=1}^3a_ib_i  \nonumber 
%\nonumber
\end{aligned}$$defined only between vectors of same order

Matrix product: for ${\bf C}={\bf A}{\bf B}$, $c_{ij}$ equals inner
product of $i$th row of ${\bf A}$ and $j$th column of ${\bf B}$; i.e.,
$$\begin{aligned}
{\bf A} = \left[ \begin{array}{c} {\bf a}_1^T \\ {\bf a}_2^T
\end{array} \right] \;\;\;\;\;\;\;
{\bf B} = \left[ \begin{array}{cc} {\bf b}_1 & {\bf b}_2
\end{array} \right] \;\;\;{\bf A}{\bf B} = \left[  \begin{array}{cc} {\bf a}_1^T{\bf b}_1 &
{\bf a}_1^T{\bf b}_2 \\
{\bf a}_2^T{\bf b}_1 & {\bf a}_2^T{\bf b}_2
\end{array} \right] \nonumber 
\end{aligned}$$ only defined when number of columns in ${\bf A}$ equals
number of rows in ${\bf B}$
:::
:::

::: frame
Matrix Functions (cont'd)

::: itemize
Multiplication by scalar: proceeds element-wise

Matrix inner product: ${\bf A}^T{\bf A}$; outer product:
${\bf A}{\bf A}^T$

::: itemize
both inner and outer products symmetric
:::

: $tr({\bf A})=\sum a_{ii}$; sum of elements along main diagonal
:::
:::

::: frame
Rules of Matrix Operators

::: itemize
Commutative Laws:

${\bf A}+{\bf B}={\bf B}+{\bf A}$

$a{\bf B}={\bf B}a$

Distributive Laws:

${\bf A}({\bf B}+{\bf C})={\bf A}{\bf B}+{\bf A}{\bf C}$

$({\bf B}+{\bf C}){\bf D}={\bf B}{\bf D}+{\bf C}{\bf D}$

Associative Laws:

$({\bf A}+{\bf B})+{\bf C}={\bf A}+({\bf B}+{\bf C})$

$({\bf A}{\bf B}){\bf C}={\bf A}({\bf B}{\bf C})$

Transpose Laws:

$({\bf A}+{\bf B})^T = {\bf A}^T+{\bf B}^T$

$({\bf A}{\bf B})^T = {\bf B}^T{\bf A}^T$

$({\bf A}{\bf B}{\bf C})^T = {\bf C}^T{\bf B}^T{\bf A}^T$, etc.
:::
:::

::: frame
Linear Dependence

::: itemize
A set of vectors $\{{\bf x}_1,\ldots,{\bf x}_q\}$ is linearly dependent
if scalars $\{  c_1,\ldots,c_q\} \neq
\{0,\ldots,0 \}$ s.t. $$\begin{aligned}
\sum_{k=1}^q c_k{\bf x}_k={\bf 0}_q \label{eq:lindep1}
\end{aligned}$$

If $\{0,\ldots,0 \}$ is the only set of scalars satisfying
([\[eq:lindep1\]](#eq:lindep1){reference-type="ref"
reference="eq:lindep1"}), then $\{{\bf x}_1,\ldots,{\bf
x}_q\}$ are said to be linearly independent

If $\{{\bf x}_1,\ldots,{\bf x}_q\}$ are linearly independent, then no
${\bf x}_k$ can be expressed as a linear function of the others
${\bf x_\ell}$'s ($k\neq \ell$)
:::
:::

::: frame
Linear Independence: Rank

::: itemize
The *rank* of a matrix, ${\bf A}$, denoted $rank({\bf A})$ equals the
number of linearly independent columns (rows) of ${\bf A}$

::: itemize
for any matrix, *row rank* and *column rank* are equal

if ${\bf A}$ is $r\times c$, $rank({\bf A})\leq min(r,c)$
:::

If ${\bf A}$ is $r\times c$ and $rank({\bf A})=min(r,c)$, then ${\bf A}$
is said to be *full rank*

If ${\bf A}$ is $r\times c$ and $rank({\bf A})<min(r,c)$, then ${\bf A}$
is *rank-deficient*
:::
:::

::: frame
Rank: (continued)

::: itemize
e.g., $$\begin{aligned}
 {\bf A} = \left[
\begin{array}{ccc}  1 & 2 & 4 \\ 3 & 0 & 6 \\ 5 & 3 & 13 \end{array}
\right] \nonumber
\end{aligned}$$ $rank({\bf A})=2$

i.e., $$\begin{aligned}
2 \left[\begin{array} {c}1\\3\\5 \end{array}\right] +
\left[\begin{array}{c} 2\\0\\3 \end{array}\right] =
\left[\begin{array}{c} 4\\6\\13 \end{array}\right] \nonumber
\end{aligned}$$

::: itemize
any column of ${\bf A}$ can be written as a linear function of the other
2 columns

any 2 columns are linearly independent of each other

within any set of 2 columns, neither is a linear combination of the
other
:::
:::
:::

::: frame
Rank (cont'd)

::: itemize
e.g., $$\begin{aligned}
 {\bf B} = \left[
\begin{array}{ccc}  1 & 3 & 5 \\ 0.5 & 1.5 & 2.5 \\ -2 & -6 & -10 \end{array}
\right] \nonumber
\end{aligned}$$

$rank({\bf B})=1$

Rank, Laws:

::: itemize
$1 \leq rank({\bf A})\leq min(r,c)$

$rank({\bf A}{\bf B})\leq min\{rank({\bf A}),rank({\bf B})\}$
:::

Note: multiplying by a full rank matrix never reduces rank
:::
:::

::: frame
Determinants

::: itemize
Notation: $|{\bf A}|=\mbox{det}({\bf A})$

[Cofactors]{.underline}: for a $q\times q$ matrix, ${\bf B}$,
$$\begin{aligned}
|{\bf B}| = \sum_{j=1}^q b_{ij}(-1)^{i+j}|{\bf B}_{-ij}|,
\nonumber
\end{aligned}$$ where $|{\bf B}_{-ij}|$ is the determinant of the matrix
${\bf B}$ after deleting the $i$th row and $j$th column

quantity $(-1)^{i+j}|{\bf B}_{-ij}|$ is known as a *cofactor*

Determinant equals the weighted sum of the cofactors for any row or any
column

e.g., for a $2\times 2$ matrix, $$\begin{aligned}
 {\bf
A} = \left[
\begin{array}{cc} a_{11} & a_{12} \\ a_{21} & a_{22}
\end{array} \right],
\nonumber
\end{aligned}$$ $|{\bf A}|=a_{11}a_{22}-a_{12}a_{21}$
:::
:::

::: frame
Determinants: Misc. Results

::: itemize
If ${\bf A}$ is full rank, then $|{\bf A}|\neq 0$

If ${\bf A}$ is rank-deficient, then $|{\bf A}|=0$

If ${\bf A}$ is triangular, $|{\bf A}|=\prod
a_{ii}$
:::
:::

::: frame
Inverses, Singularity

::: itemize
If ${\bf A}$ is of full rank, then the *inverse* of ${\bf A}$, denoted
${\bf A}^{-1}$, is s.t. ${\bf
A}{\bf A}^{-1}={\bf A}^{-1}{\bf A}={\bf I}$

If ${\bf A}$ is rank-deficient, then ${\bf A}$ is *singular* and
${\bf A}^{-1}$ does not exist

For *non-singular* matrices, a unique inverse exists

Generally, the inverse is given by the transpose of the cofactor matrix,
divided by the determinant

e.g., for a $2\times 2$ matrix, $$\begin{aligned}
{\bf A} & = & \left[  \begin{array}{cc} a_{11} & a_{12} \\ a_{21}
& a_{22}
\end{array} \right] \nonumber \\
{\bf A}^{-1} & = & \frac{1}{|{\bf A}|}\left[  \begin{array}{cc} a_{22} & -a_{12} \\
-a_{21} & a_{11}
\end{array} \right] \nonumber
\end{aligned}$$
:::
:::

::: frame
Inverses: Results

::: itemize
Suppose that ${\bf A}$ is of full rank: $$\begin{aligned}
({\bf A}^{-1})^{-1} & = & {\bf A} \nonumber \\
(k{\bf A})^{-1} & = & k^{-1}{\bf A}^{-1} \nonumber \\
({\bf A}^T)^{-1} & = & ({\bf A}^{-1})^T \nonumber
\end{aligned}$$

Suppose that ${\bf A}$ and ${\bf B}$ are of full rank: $$\begin{aligned}
({\bf A}{\bf B})^{-1} & = & {\bf B}^{-1}{\bf A}^{-1} \nonumber
\end{aligned}$$
:::
:::

::: frame
Other Important Matrices

::: itemize
Idempotent: ${\bf A}$ is said to be *idempotent* if ${\bf A}^2={\bf A}$

::: itemize
if ${\bf A}$ is idempotent, then $({\bf I}-{\bf A})$ is also idempotent
:::

Projection: ${\bf P}$ is said to be a *projection* matrix if
${\bf P}^2={\bf P}$ and ${\bf P}^T={\bf P}$

::: itemize
if ${\bf P}$ is projection matrix, so is $({\bf I}-{\bf
P})$
:::

Orthogonal: ${\bf P}$ is an *orthogonal* matrix if (i) ${\bf P}$ is
square (ii) ${\bf P}{\bf P}^T={\bf I}$ (iii) ${\bf P}^T{\bf P}={\bf I}$

::: itemize
note: any two of (i), (ii) and (iii) imply the third
:::
:::
:::

::: frame
Matrix Derivatives

::: itemize
Let ${\bf x}$ be a $q\times 1$ vector, with $g({\bf x})\in {\cal R}$
$$\begin{aligned}
\frac{\partial g }{\partial {\bf x}} = \left[ \begin{array}{c}
\frac{\partial g}{\partial x_1}
\\ \frac{\partial g}{\partial x_2} \\ \vdots \\ \frac{\partial g}{\partial x_q}
\end{array}\right]
\nonumber
\end{aligned}$$

$$\begin{aligned}
\frac{\partial g }{\partial {\bf x}^T} = \left[ \begin{array}{ccc}
\frac{\partial g}{\partial x_1}, & \ldots & ,\frac{\partial
g}{\partial x_q}
\end{array}\right]
\nonumber
\end{aligned}$$

$$\begin{aligned}
\frac{\partial^2 g }{\partial {\bf x}\partial {\bf x}^T} = \left[
\begin{array}{cccc} \frac{\partial^2 g}{\partial x_1^2} &
\frac{\partial g^2}{\partial x_1\partial x_2} & \ldots &
\frac{\partial g^2}{\partial x_1\partial x_q} \\ \frac{\partial^2
g}{\partial x_2\partial x_1} & \frac{\partial g^2}{
\partial x_2^2} & \ldots &
\frac{\partial g^2}{\partial x_2\partial x_q} \\ \vdots & \ldots &
\ldots & \vdots \\ \frac{\partial^2 g}{\partial x_q\partial x_1} &
\ldots & \ldots & \frac{\partial^2 g}{\partial x_q^2}
\end{array}\right]
\nonumber
\end{aligned}$$
:::
:::

::: frame
Matrix Derivatives (continued)

::: itemize
Derivative of inner product:

::: itemize
${\bf x}^T {\bf a}=a_1x_1 + a_2x_2 + \ldots  = {\bf a}^T {\bf x}$, a
scalar taking derivative: $$\begin{aligned}
\frac{\partial}{\partial{\bf x}} ({\bf x}^T {\bf a}) & = & {\bf a}
\nonumber
\end{aligned}$$ i.e., use previous result; set
$g({\bf x})={\bf x}^T {\bf
a}$
:::

Differentiating vectors w.r.t. vectors:

::: itemize
let ${\bf A}=[{\bf a}_1,{\bf a}_2,\ldots,{\bf a}_c]$ be a $q\times c$
matrix $$\begin{aligned}
\frac{\partial}{\partial{\bf x}} ({\bf x}^T {\bf A}) & = &
\frac{\partial}{\partial{\bf x}} [{\bf x}^T{\bf a}_1,{\bf x}^T{\bf a}_2,\ldots,{\bf x}^T{\bf
a}_c]\nonumber \\ & = & [{\bf a}_1,{\bf a}_2,\ldots,{\bf a}_c] =
{\bf A} \nonumber
\end{aligned}$$
:::
:::
:::

::: frame
Matrix Derivatives (cont'd)

::: itemize
More vector derivatives:

::: itemize
let ${\bf B}$ be a $r\times q$ matrix: differentiating:
$$\begin{aligned}
\frac{\partial}{\partial{\bf x}}({\bf B}{\bf x}) & = &
\left\{ \frac{\partial}{\partial{\bf x}}({\bf B}{\bf x})^T\right\}^T   \nonumber \\
& = &\left\{ \frac{\partial}{\partial{\bf x}}({\bf x}^T{\bf B}^T)\right\}^T
\nonumber \\
& = &\left\{ {\bf B}^T\right\}^T\\
&=&{\bf B}
\nonumber
\end{aligned}$$
:::
:::
:::

::: frame
Quadratic Forms

::: itemize
If ${\bf A}$ is a square matrix, then the scalar
${\bf x}^T {\bf A} {\bf x}$ is known as a *quadratic form*

If ${\bf A}$ is symmetric, then $$\begin{aligned}
\frac{\partial}{\partial{\bf x}} ({\bf x}^T{\bf A}{\bf x}) = 2{\bf A}{\bf
x}
\nonumber
\end{aligned}$$
:::
:::

::: frame
Random Vectors

::: itemize
${\bf Y}$ is a random vector: $$\begin{aligned}
{\bf Y  } = \left[ \begin{array}{c} Y_1 \\ Y_2 \\ \vdots \\
Y_n
\end{array} \right]  &  &  \nonumber
\end{aligned}$$

Mean of vector: $$\begin{aligned}
E\left[ \begin{array}{c} Y_1 \\ Y_2 \\ \vdots \\
Y_n
\end{array} \right] =  \left[ \begin{array}{c} E[Y_1] \\ E[Y_2] \\ \vdots \\
E[Y_n]
\end{array} \right]
\nonumber
\end{aligned}$$
:::
:::

::: frame
Random Vectors (continued)

::: itemize
Covariance: $$\begin{aligned}
Var({\bf Y}) & = & E \left[ \{{\bf Y}-E[{\bf Y}]  \} \{{\bf
Y}-E[{\bf Y}]
\}^T  \right] \nonumber \\
& = &  \left[  \begin{array}{cccc} \sigma_1^2 & \sigma_{12} &
\ldots & \sigma_{1n} \\
\sigma_{12} & \sigma^2_2 & \ldots & \sigma_{2n} \\ \vdots & \vdots
& \ddots & \vdots \\ \sigma_{1n} & \sigma_{2n} & \ldots &
\sigma^2_n
\end{array} \right]
\nonumber
\end{aligned}$$

::: itemize
$\sigma_i^2=Var(Y_i)$, $\sigma_{ij}=\mbox{cov}(Y_i,Y_j)$
:::
:::
:::

::: frame
Functions of Random Vectors

::: itemize
${\bf Y}$: random vector; ${\bf A}$: matrix of constants

::: itemize
$E[{\bf A}{\bf Y}]={\bf A}E[{\bf Y}]$

$Var[{\bf A}{\bf Y}]={\bf A}Var[{\bf Y}]{\bf A}^T$
:::

if ${\bf Y}\sim N(\boldmu,\boldSigma)$, then
${\bf A}{\bf Y}\sim N({\bf A}\boldmu, {\bf A}\boldSigma{\bf
A}^T)$
:::
:::

::: frame
Questions?
:::
