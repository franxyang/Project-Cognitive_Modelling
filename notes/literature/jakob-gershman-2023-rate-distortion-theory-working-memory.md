---
title: Rate-distortion theory of neural coding and its implications for working memory
authors: Anthony MV Jakob; Samuel J. Gershman
year: 2023
doi: 10.7554/eLife.79450
status: first-pass-extracted
priority: theory-addition
tags:
  - rate_distortion
  - formal_model
  - computational_neuroscience
---

# Core claim

Jakob and Gershman argue that working memory can be understood through rate-distortion theory, where memory performance reflects an optimal trade-off between information rate and distortion under a capacity limit.

# Relevance to my project

This paper is one of the strongest additions for making the optimization side of the project more principled.
It supports:

- explicit trade-offs between fidelity and limited capacity,
- viewing memory limitations as optimization under information constraints,
- connecting abstract objective functions to plausible neural coding mechanisms.

# Constructs and definitions

- `rate`: the amount of information transmitted or preserved,
- `distortion`: the cost of memory error,
- `capacity limit`: an upper bound on information rate,
- `rate-distortion trade-off`: lower distortion requires more information capacity.

# Method or formal approach

This is a formal computational paper connecting rate-distortion theory to a population-coding implementation.

# Useful evidence

- The paper explicitly formalizes memory optimization as minimizing expected distortion subject to an information-capacity constraint.
- It argues that the rate-distortion framework explains regularities of working-memory error.
- It provides a bridge between computational-level optimization and neural implementation.
- For this project, the main value is conceptual: a strong formal precedent for fidelity-cost trade-offs.

# Limitations

This paper is not about instructional design, element interactivity, or segmentation.
It is most useful as a formal neighbor that strengthens the theoretical legitimacy of your optimization framing.

# Links

- Related concept notes: [[working-memory-resource]]
- Related concept notes: [[chunking-and-compression]]
- Related modeling notes:
