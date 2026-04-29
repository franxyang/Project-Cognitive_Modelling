---
title: Strategic allocation of working memory resource
authors: Aspen H. Yoo; Zuzanna Klyszejko; Clayton E. Curtis; Wei Ji Ma
year: 2018
doi: 10.1038/s41598-018-34282-1
status: first-pass-extracted
priority: theory-addition
tags:
  - working_memory
  - resource_allocation
  - formal_model
---

# Core claim

Yoo, Klyszejko, Curtis, and Ma argue that working-memory resources are allocated strategically according to behavioral relevance, and that people appear to distribute those resources in a way that minimizes expected memory error.

# Relevance to my project

This paper is useful for making the capacity-allocation part of your model less generic.
It supports:

- treating resource allocation as strategic rather than passive,
- allowing unequal importance to alter how limited capacity is distributed,
- and thinking about why optimal allocation is often more balanced than raw priority weights.

# Constructs and definitions

- `priority`: probability or relevance of later use,
- `resource allocation`: distribution of memory resource across items,
- `minimizing error`: a normative strategy for allocating resource,
- `memory uncertainty`: trial-level variability in the quality of representations.

# Method or formal approach

This paper combines psychophysical experiments with variable-precision models and alternative allocation rules.

# Useful evidence

- The paper shows that people allocate more resource to higher-priority items.
- It also shows that people underallocate to high-priority targets and overallocate to low-priority targets relative to raw probe probabilities.
- A key result is that an error-minimizing model fits allocation better than a purely proportional allocation model.
- This is directly relevant if your later model needs item weights or priority-sensitive capacity allocation.

# Limitations

This paper concerns unequal priority across items, not structured relations among elements.
It therefore helps most with the `C_i` and allocation side of the project, not with `L(Pi)` or coherence loss.

# Links

- Related concept notes: [[working-memory-resource]]
- Related modeling notes:
