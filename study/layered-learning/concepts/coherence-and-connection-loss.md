---
title: coherence and connection loss
status: active
tags:
  - concept
  - coherence
  - segmentation
---

See also [[Layered Learning Hub]].

# Core idea

Segmenting information can make local processing easier while weakening the learner's ability to preserve or construct global relational coherence.

# Why it matters here

This concept is the clearest route to justifying `L(Pi)`.
Without it, the partitioning penalty looks ad hoc.

# Main sources

- [[anmarkrud-andresen-braten-2019-cognitive-load-and-working-memory]]
- [[sweller-van-merrienboer-paas-2019-cognitive-architecture]]
- [[chen-paas-sweller-2023-task-complexity-element-interactivity]]
- Kintsch (1994) should be added next

# Key distinctions

- local tractability versus global coherence
- representation convenience versus relational preservation
- recall of isolated pieces versus transfer over connected structure

# Modeling implications

- `L(Pi)` needs a conceptual interpretation as lost cross-segment coordination or coherence
- transfer should probably be more sensitive than recall to structural fragmentation
- the model may need more than a raw edge-cut term if some relations are more important than others

# Open questions

- Is connection loss best represented by edge cut, path disruption, or a higher-order structure measure?
- Should all cross-segment relations be penalized equally?
- Does coherence loss interact with prior knowledge?
