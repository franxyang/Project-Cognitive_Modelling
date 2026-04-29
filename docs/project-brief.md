# Project Brief

## What the project is really about

This is primarily a theoretical modeling project, not an experiment-first project.

Its core contribution is a formal account of cognitive load and segmentation under working-memory constraints:

- represent task content as structured information,
- assign costs to information quantity, complexity, and inter-element coordination,
- model segmentation as a partitioning problem,
- predict learning outcomes from remaining goal-relevant processing and structural preservation.

The empirical section is best understood as a validation path for the model, not the main intellectual center of the project.

## Core objects

- `A`: a set of information elements
- `q_j`: element complexity
- `w_uv`: connection strength between elements
- `r_j`: residual novelty after prior knowledge
- `Pi`: a partition of the information set into segments
- `C_i`: effective capacity in a segment
- `E_i`: extraneous processing cost
- `I_i`: intrinsic processing cost induced by elements and their coordination
- `P_i`: goal-relevant processing that remains after costs
- `L(Pi)`: cross-segment connection loss

## Main theoretical identity

At a high level, the project says:

1. learning materials have a latent structure,
2. processing that structure has a capacity cost,
3. segmentation can reduce local burden,
4. but segmentation can also destroy relational coherence,
5. and good instructional design should optimize that trade-off.

This makes the project sit at the intersection of:

- cognitive load theory,
- working-memory theory,
- graph-structured representation,
- constrained optimization,
- and measurement of learning outcomes.

## What the literature review needs to do

The review should not just summarize empirical findings about load.
It needs to build the argument that a formal model is needed and justified.

That means the review should cover at least four lanes:

1. cognitive load theory and working-memory limits,
2. segmentation, split-attention, and representation effects,
3. formal or computational approaches to cognition and instructional structure,
4. measurement and validation problems in the cognitive load literature.

## Key modeling tasks

Before the project is manuscript-ready, the model needs several things that are not yet fully specified in the skeleton:

- the units and interpretation of `C_i`, `E_i`, and `I_i`,
- the operational meaning of `w_uv`,
- the admissible space of partitions,
- the form of `f_R` and `f_T`,
- the meaning of `lambda`,
- and whether model comparison or simulation will be used before empirical testing.

## Likely research output sequence

The natural sequence is:

1. formalize assumptions and notation,
2. review literature around theory and formalization gaps,
3. build toy examples and simulated predictions,
4. write the proposal,
5. expand to a preprint with stronger model exposition and validation logic.
