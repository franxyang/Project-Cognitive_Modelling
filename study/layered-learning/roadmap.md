# Layered Learning Roadmap

See also [[Layered Learning Hub]].

## Goal

Build enough conceptual fluency in cognitive load theory, working memory, coherence, and neighboring formal models to support a defensible mathematical model.

This roadmap is not for exhaustive reading.
It is for moving from `zero theory background` to `model-ready conceptual understanding`.

## Phase 1: Concept map first

Before deep reading, make sure the following concepts can be explained in plain language:

### CLT core

- cognitive load
- intrinsic load
- extraneous load
- germane processing
- element interactivity

### Working memory core

- working memory
- storage versus processing
- slot versus resource
- allocable resource
- precision

### Coherence and learning core

- textbase
- situation model
- coherence
- prior knowledge
- recall versus transfer

### Formal-model core

- constrained optimization
- resource-rationality
- chunking
- compression
- rate-distortion
- segmentation versus partitioning

## Phase 2: Read by concept lane

### Lane A: CLT foundations

Question:

- What does CLT mean by load, and which parts are still verbal rather than formal?

Read in this order:

1. [[sweller-1988-cognitive-load-during-problem-solving]]
2. [[sweller-2010-element-interactivity]]
3. [[sweller-van-merrienboer-paas-2019-cognitive-architecture]]
4. [[chen-paas-sweller-2023-task-complexity-element-interactivity]]

Required output:

- define intrinsic load in your own words
- explain element interactivity without using the phrase itself
- explain how prior knowledge changes effective load
- explain why CLT alone does not yet give the full model

### Lane B: Working memory foundations

Question:

- What does limited working memory mean in a way that can support mathematics?

Read in this order:

1. [[baddeley-1992-working-memory]]
2. [[ma-husain-bays-2014-changing-concepts-of-working-memory]]
3. [[van-den-berg-ma-2018-resource-rational-working-memory]]

Required output:

- explain classical working-memory architecture
- explain flexible resource views
- explain why model capacity should not mean only a fixed item bound
- explain why optimization language is justified

### Lane C: Coherence and learning

Question:

- Why is local ease not enough, and why should structural preservation matter?

Read in this order:

1. [[kintsch-1994-text-comprehension-memory-and-learning]]
2. [[anmarkrud-andresen-braten-2019-cognitive-load-and-working-memory]]
3. [[sweller-van-merrienboer-paas-2019-cognitive-architecture]]

Required output:

- explain textbase versus situation model
- explain why recall and transfer should not behave the same
- explain why segmentation can help and hurt at the same time

### Lane D: Formal neighbors

Question:

- What kinds of formal models already exist, and what do they solve that is close to this problem?

Read in this order:

1. [[sawicka-2008-dynamics-of-cognitive-load-theory]]
2. [[van-den-berg-ma-2018-resource-rational-working-memory]]
3. [[nassar-helmers-frank-2018-chunking-lossy-data-compression]]
4. [[jakob-gershman-2023-rate-distortion-theory-working-memory]]
5. [[yoo-klyszejko-curtis-ma-2018-strategic-allocation-working-memory-resource]]

Required output:

- explain why Sawicka is a precedent but not the same model
- explain why chunking is related but not identical to segmentation
- explain what rate-distortion contributes conceptually
- explain what remains unsolved after these models

## Phase 3: Convert reading into knowledge artifacts

For each paper, produce exactly three outputs:

1. `paper card`
   - one-sentence core claim
   - two reasons it matters for the project
   - one limit

2. `concept update`
   - which concept note should be revised
   - what distinction or clarification the paper adds

3. `model consequence`
   - does it change a variable, assumption, trade-off, or validation idea?

## Weekly rhythm

For a `6-8 hour` week:

1. concept consolidation: `90 min`
2. close reading: `2 hours`
3. output conversion: `90 min`
4. synthesis rehearsal: `60-90 min`

Completion rule:

- a lane is only done when you can explain it aloud without notes

## Phase 4: Model translation

Do not start serious formula design until you can answer these in plain language:

- What exactly is intrinsic cost in CLT terms?
- What exactly is element interactivity?
- Why should prior knowledge affect effective cost?
- Why is segmentation not always beneficial?
- Why should transfer be more sensitive than recall to fragmentation?
- What do existing formal models capture, and what do they miss?

Then map concepts to variables:

- element interactivity -> `w_uv`
- element complexity -> `q_j`
- prior knowledge / novelty -> `r_j`
- effective capacity -> `C_i`
- extraneous design burden -> `E_i`
- coherence loss / fragmentation -> `L(Pi)`

Use [[open-questions]] as the next task list.

## Mastery checks

You are ready to formalize only when you can:

- define cognitive load, intrinsic load, extraneous load, and germane processing
- explain working memory in both classical and resource terms
- distinguish task complexity from task difficulty
- distinguish segmentation from chunking
- explain why coherence matters for learning
- explain how Sawicka, van den Berg and Ma, Nassar, and Jakob and Gershman help without solving the exact problem
