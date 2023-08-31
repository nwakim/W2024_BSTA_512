# Chapter 11 Expected Values of Sums of Discrete r.v.'s {#chapter-11-expected-values-of-sums-of-discrete-r.v.s .unnumbered}

::: {#Draw2Cards .example}
**Example 1**. *Suppose you draw 2 cards from a standard deck of cards
*with* replacement. Let $X$ be the number of hearts you draw. Find
$\mathbb{E}[X]$.*
:::

**Solution:**

------------------------------------------------------------------------

::: {#Draw200Cards .example}
**Example 2**. *What is the expected number of hearts in Example
[1](#Draw2Cards){reference-type="ref" reference="Draw2Cards"} if you
draw 200 cards?*
:::

**Solution:**

::: {#ThmSumsRVE .theorem}
**Theorem 3** (Sums of discrete r.v.'s). *For discrete r.v.'s $X_i$ and
constants $a_i$, $i=1,2,\dots, n$,
$$\mathbb{E}[\sum_{i=1}^n a_iX_i] = \sum_{i=1}^n a_i\mathbb{E}[X_i] .$$*
:::

**Remark:** The theorem holds for infinitely r.v.'s $X_i$ as well.

------------------------------------------------------------------------

::: {#LinearComboE .corollary}
**Corollary 1**. *For a discrete r.v. $X$, and constants $a$ and $b$,
$$\mathbb{E}[aX+b] = a\mathbb{E}[X] + b.$$*
:::

::: corollary
**Corollary 2**. *If $X_i$, $i=1,2,\dots, n$, are i.i.d. r.v.'s, then
$$\mathbb{E}[\sum_{i=1}^n X_i] = n\mathbb{E}[X_1] .$$*
:::

::: proof
*Proof to Theorem [3](#ThmSumsRVE){reference-type="ref"
reference="ThmSumsRVE"}.* ◻
:::

::: proof
*Proof to Corollary [1](#LinearComboE){reference-type="ref"
reference="LinearComboE"}.* ◻
:::

::: {#GhostHypergeoTrickTreat .example}
**Example 4**. *The ghost is trick-or-treating at a different house now.
In this case it is known that the bag of candy has 10 chocolates, 20
lollipops, and 30 \[*insert your favorite candy*\]. The ghost takes five
pieces of candy without replacement. How many pieces of chocolate do we
expect the ghost to take?*
:::

**Solution:**

::: {#LandportHotels .example}
**Example 5**. *A tour group is planning a visit to the city of Landport
and needs to book 30 hotel rooms. The average price of a room is \$200.
In addition, there is a 10% tourism tax for each room. What is the
expected cost for the 30 hotel rooms?*
:::

**Solution:**
