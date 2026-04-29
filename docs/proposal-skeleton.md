# Proposed Topic

This project develops a mathematical model of cognitive processing under limited working-memory capacity.
Rather than treating cognitive load only as a verbal theoretical construct, the project formulates learning and comprehension as a constrained optimization problem over structured information.

The central idea is that a learner processes a set of information elements with limited cognitive capacity.
Each task segment imposes an intrinsic processing cost determined by the amount, complexity, and relational structure of the information, as well as an extraneous cost induced by representation and task organization.
The remaining capacity can be allocated to goal-relevant processing, which in turn predicts downstream learning outcomes such as recall and transfer.

# Working Title

**Optimal Partitioning of Structured Information Under Working-Memory Constraints:**
**A Mathematical Model of Intrinsic Cost, Extraneous Cost, and Goal-Relevant Processing**

# Research Questions

1. Can cognitive processing under limited working-memory capacity be formalized as a constrained optimization problem?
2. Can intrinsic processing cost be modeled as a function of information quantity, element complexity, and inter-element connectivity?
3. How do partitioning and representation strategies trade off reduced local processing cost against lost global relational structure?
4. Can the resulting model predict learning outcomes such as recall and transfer?

# Theoretical Motivation

Work in cognitive load theory treats working memory as capacity-limited and distinguishes intrinsic, extraneous, and germane aspects of processing. However, prior reviews suggest that much of the empirical literature does not clearly conceptualize working memory, often relies on sparse subjective measures, and frequently lacks a strong formal link between theory and measurement.
This motivates a more explicit mathematical treatment of processing capacity, task structure, and measurement.

# Mathematical Framework

Let

$$
A = \{a_1,\dots,a_k\}
$$

denote the set of information elements in a task.

Each element $a_j$ has intrinsic complexity $q_j \ge 0$, and each pair of elements
$(a_u,a_v)$ has connection strength $w_{uv} \ge 0$, where $w_{uv}$ is interpreted as
the simultaneous coordination demand between the two elements.

Let

$$
\Pi = \{A_1,\dots,A_p\}
$$

be a partition of $A$, where each $A_i$ is a segment and

$$
\bigsqcup_{i=1}^p A_i = A.
$$

Let $C_i > 0$ denote the effective working-memory capacity available in segment $i$, and let
$E_i \ge 0$ denote extraneous processing cost induced by presentation, interface, or task format.

To incorporate prior knowledge, let $r_j \in [0,1]$ denote the residual novelty of element $a_j$,
where $r_j = 0$ means fully schematized and $r_j = 1$ means fully novel.

The intrinsic processing cost of segment $A_i$ is defined as

$$
I_i
=
\alpha \sum_{a_j \in A_i} r_j
+
\beta \sum_{a_j \in A_i} q_j r_j
+
\gamma \sum_{\substack{a_u,a_v \in A_i \\ u<v}} w_{uv} r_u r_v,
$$

where

- the first term captures effective information quantity,
- the second term captures weighted element complexity,
- the third term captures element interactivity or relational coordination cost.

The effective goal-relevant processing available in segment $i$ is

$$
P_i = \left(C_i - E_i - I_i\right)_+,
\qquad
(x)_+ := \max\{x,0\}.
$$

Partitioning may reduce local cost but destroy cross-segment relational continuity.
Define the connection loss of the partition $\Pi$ as a weighted cross-segment connection loss:

$$
L(\Pi)
=
\sum_{\substack{a_u \in A_i,\; a_v \in A_j \\ i \neq j}} w_{uv}.
$$

The optimal partition is defined by

$$
\Pi^\star
=
\arg\max_{\Pi}
\left[
\sum_{i=1}^p P_i
-
\lambda L(\Pi)
\right],
$$

where $\lambda > 0$ is a fragmentation sensitivity parameter controlling the penalty for cross-segment fragmentation.

# Learning Outcomes

Let recall and transfer be modeled as functions of accumulated goal-relevant processing and structural preservation:

$$
Y_{\mathrm{recall}} = f_R\!\left(\sum_{i=1}^p P_i\right),
$$

$$
Y_{\mathrm{transfer}} = f_T\!\left(\sum_{i=1}^p P_i,\; L(\Pi)\right),
$$

where the minimal proposal-level assumptions are:

- recall increases with total goal-relevant processing,
- transfer depends on both total goal-relevant processing and preserved relational structure,
- transfer is more sensitive than recall to connection loss.

# Validation Path

The proposal only needs to establish that the model is testable.
It does not need to commit to a full experimental program.

A lean validation path is:

1. choose learning material that can be decomposed into explicit elements and relations,
2. compare a small number of segmentation and representation conditions,
3. measure prior knowledge, recall, and transfer, with subjective load as a secondary indicator,
4. derive $I_i$, $P_i$, and $L(\Pi)$ from transparent coding rules,
5. test whether the model's directional predictions align with observed recall and transfer.

# Expected Contribution

This project contributes:

1. a formalization of cognitive load as a constrained optimization problem,
2. a graph-structured representation of intrinsic processing cost,
3. a principled account of segmentation as a trade-off between local tractability and global coherence,
4. a lean empirical bridge showing that the model can generate testable predictions about recall and transfer.
