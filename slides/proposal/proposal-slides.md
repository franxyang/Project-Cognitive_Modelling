---
title: "Modeling Cognitive Load as an Instructional Partitioning Problem"
subtitle: "A theory-first proposal on segmentation, coherence, and working-memory constraints"
author: "Yifan Yang"
date: "EDPS 506 | Spring 2026"
lang: en
revealjs-url: "https://cdn.jsdelivr.net/npm/reveal.js@5.1.0"
transition: "fade"
backgroundTransition: "fade"
controls: true
progress: true
slideNumber: true
hash: true
width: 1600
height: 900
margin: 0.06
---

## Known

::: {.lead}
The literature already gives us a strong chain of claims.
:::

::: {.logic-line}
::: {.logic-step}
**1 · Capacity**

Working memory is a limited system for temporary storage and manipulation.

<span>Baddeley, 1992</span>
:::

::: {.logic-step}
**2 · Load**

Learning depends on how intrinsic and extraneous demands consume that limited capacity.

<span>Sweller, 1988; Sweller, 2010</span>
:::

::: {.logic-step}
**3 · Structure**

Task complexity depends on element interactivity and prior knowledge, not just item count.

<span>Sweller et al., 2019; Chen et al., 2023</span>
:::

::: {.logic-step .accent}
**4 · Optimization**

Capacity can be modeled as graded, allocable, and costly.

<span>Ma et al., 2014; van den Berg & Ma, 2018</span>
:::
:::

::: {.notes}
This first problem slide should slow down the opening. The point is to show that the project is not coming from nowhere: CLT, working memory, and resource models already justify the modeling move.
:::

## Gap

::: {.lead}
The missing piece is not whether load matters. It is how instructional structure becomes a prediction.
:::

::: {.gap-grid}
::: {.gap-item}
**No explicit content structure**

Mainstream CLT discusses element interactivity, but usually does not represent instructional material as nodes, weights, and relations.
:::

::: {.gap-item}
**No partitioning objective**

Segmentation is treated as a design principle, but not as an optimization problem with local relief and global coherence loss.
:::

::: {.gap-item}
**Weak theory-measurement bridge**

Multimedia learning work often invokes working memory and cognitive load without specifying how constructs map to outcomes.
:::
:::

::: {.anchor}
Anchors: Sweller, 2010; Chen et al., 2023; Anmarkrud et al., 2019; Sawicka, 2008
:::

::: {.notes}
This slide states the gap carefully. Do not claim that no formal models exist. The gap is narrower: a CLT-shaped model of structured instructional partitioning.
:::

## Proposal

::: {.proposal-thesis}
Treat instructional design as a constrained partitioning problem over structured information.
:::

::: {.proposal-flow}
<div class="flow-node">structured material</div>
<div class="flow-arrow">→</div>
<div class="flow-node">capacity-limited processing</div>
<div class="flow-arrow">→</div>
<div class="flow-node accent">partition choice</div>
<div class="flow-arrow">→</div>
<div class="flow-node">recall + transfer</div>
:::

::: {.proposal-claim}
The model asks: **how much should material be segmented before the cost of fragmentation exceeds the benefit of local relief?**
:::

::: {.notes}
The proposal slide should make the project feel tractable. It converts the gap into one modeling question: choose a partition that preserves enough structure while reducing local burden.
:::

## Core Tension

::: {.split}
::: {.big-claim}
Segmentation is useful because it lowers local processing demand.

But segmentation is risky because it can break the relations needed for transfer.
:::

::: {.tradeoff}
<div class="trade-axis">
  <div class="axis-title">Instructional partitioning</div>
  <div class="axis-line"></div>
  <div class="axis-label left">local relief</div>
  <div class="axis-label right">coherence loss</div>
  <div class="axis-dot"></div>
</div>
<div class="trade-equation">good design = tractable segments + preserved structure</div>
:::
:::

::: {.anchor}
Conceptual bridge: element interactivity + coherence-based comprehension
:::

::: {.notes}
This is the deck's central tension. If segmentation were only good, the model would be trivial. The intellectual contribution is representing the benefit and cost in one objective.
:::

## Theoretical Bridge

::: {.lane-grid}
::: {.lane}
**Cognitive load theory**

Intrinsic and extraneous cost; element interactivity; prior knowledge.

$I_i$, $E_i$, $r_j$
:::

::: {.lane}
**Working-memory resource models**

Capacity as graded, allocable, and costly.

$C_i$, optimization
:::

::: {.lane}
**Coherence and comprehension**

Understanding depends on preserved relational structure.

$L(\Pi)$, transfer
:::

::: {.lane}
**Formal cognition models**

Capacity limits can be modeled as constrained optimization.

objective function
:::
:::

::: {.anchor}
Anchors: Baddeley, 1992; Ma et al., 2014; Kintsch, 1994; Sawicka, 2008
:::

::: {.notes}
The point of this slide is positioning. The proposal is not claiming to be the first formal model of limited cognition. It is claiming that these lines have not been integrated into a CLT-shaped model of instructional partitioning.
:::

## Memory Partition Demo

```{=html}
<div class="memory-demo">
  <div class="demo-head">
    <div>
      <div class="eyebrow">working-memory intuition</div>
      <h3>Same ten digits, different partitions.</h3>
    </div>
    <button id="new-digits" type="button">new sequence</button>
  </div>
  <div class="digit-row">
    <div class="digit-card raw">
      <div class="digit-label">no partition</div>
      <div class="digits" id="digits-raw">7394816205</div>
      <p>One long string must be held as a single unstable object.</p>
    </div>
    <div class="digit-card good">
      <div class="digit-label">useful partition</div>
      <div class="digits" id="digits-good">739 · 481 · 6205</div>
      <p>Chunk boundaries reduce local burden while preserving sequence structure.</p>
    </div>
    <div class="digit-card over">
      <div class="digit-label">too many partitions</div>
      <div class="digits" id="digits-over">7 · 3 · 9 · 4 · 8 · 1 · 6 · 2 · 0 · 5</div>
      <p>Every digit is separated; nothing helps bind the parts together.</p>
    </div>
  </div>
</div>
<script>
(function () {
  const raw = document.getElementById("digits-raw");
  const good = document.getElementById("digits-good");
  const over = document.getElementById("digits-over");
  const button = document.getElementById("new-digits");
  if (!raw || !good || !over || !button) return;
  function nextDigits() {
    const digits = Array.from({ length: 10 }, () => Math.floor(Math.random() * 10)).join("");
    raw.textContent = digits;
    good.textContent = digits.slice(0, 3) + " · " + digits.slice(3, 6) + " · " + digits.slice(6);
    over.textContent = digits.split("").join(" · ");
  }
  button.addEventListener("click", nextDigits);
})();
</script>
```

::: {.pdf-fallback}
Memory intuition: the same ten digits can be presented as one unsegmented string, as useful chunks such as `739 · 481 · 6205`, or as ten isolated digits. Moderate partitioning reduces local burden; excessive partitioning removes useful binding structure.
:::

::: {.notes}
Use this slide as a quick live activity. Ask viewers to look at each row for a few seconds and notice that the raw string, useful chunks, and over-partitioned sequence have different memory demands despite containing identical information.
:::

## Representing Instructional Structure

```{=html}
<div class="html-only">
  <div class="graph-stage">
    <div class="segment segment-a">
      <span class="seg-label">segment A<sub>1</sub></span>
      <span class="node n1">a<sub>1</sub></span>
      <span class="node n2">a<sub>2</sub></span>
      <span class="node n3">a<sub>3</sub></span>
      <span class="edge e12"></span>
      <span class="edge e23"></span>
    </div>
    <div class="segment segment-b">
      <span class="seg-label">segment A<sub>2</sub></span>
      <span class="node n4">a<sub>4</sub></span>
      <span class="node n5">a<sub>5</sub></span>
      <span class="edge e45"></span>
    </div>
    <span class="cut-edge cut1"></span>
    <span class="cut-edge cut2"></span>
    <div class="graph-caption">Strong relations split across segments contribute to connection loss.</div>
  </div>
</div>
```

::: {.pdf-fallback}
Instructional material is represented as a structured set of information elements. A partition divides the set into instructional segments; strong relations split across segments create connection loss.
:::

::: {.notation-strip}
$A = \{a_1, \ldots, a_k\}$  
$q_j$ = element complexity  
$w_{uv}$ = coordination demand  
$r_j$ = residual novelty  
$\Pi = \{A_1, \ldots, A_p\}$ = partition
:::

::: {.notes}
Use the graph only as an explanatory object. Nodes are information elements. Edges are simultaneous coordination demands. The partition is the instructional segmentation decision.
:::

## Minimal Assumptions

::: {.assumption-grid}
::: {.assumption}
**A1 · Decomposability**

Instructional material can be represented as elements and relations.
:::

::: {.assumption}
**A2 · Learner-relative cost**

Prior knowledge reduces residual novelty and therefore effective burden.
:::

::: {.assumption}
**A3 · Relation cost**

$w_{uv}$ means simultaneous coordination demand, not generic semantic similarity.
:::

::: {.assumption}
**A4 · Common scale**

$C_i$, $E_i$, and $I_i$ are treated as comparable latent processing quantities.
:::

::: {.assumption .accent}
**A5 · Partition trade-off**

Good segmentation improves local tractability without destroying too much global structure.
:::
:::

::: {.notes}
These assumptions make the model defensible without overclaiming. They should come before formulas so the math feels like an encoding of assumptions rather than an arbitrary equation.
:::

## Processing Cost

::: {.formula-focus}
$$
I_i =
\alpha \sum_{a_j \in A_i} r_j
+ \beta \sum_{a_j \in A_i} q_j r_j
+ \gamma \sum_{\substack{a_u,a_v \in A_i \\ u<v}} w_{uv} r_u r_v
$$
:::

::: {.cost-line}
::: {.cost-piece}
effective quantity
:::

::: {.cost-piece}
element complexity
:::

::: {.cost-piece}
coordination demand
:::
:::

::: {.formula-secondary}
$$
P_i = \left(C_i - E_i - I_i\right)_+
$$

Goal-relevant processing is what remains after capacity is consumed by extraneous and intrinsic cost.
:::

::: {.notes}
Do not over-explain every parameter. Emphasize that the third term is the formal version of element interactivity: relations among elements can consume capacity, not just the number of elements.
:::

## Optimization Objective

::: {.objective}
$$
\Pi^\star =
\arg\max_{\Pi}
\left[
\sum_{i=1}^{p} P_i
- \lambda L(\Pi)
\right]
$$
:::

```{=html}
<div class="html-only">
  <div class="partition-row">
    <div class="partition-card">
      <div class="partition-title">No segmentation</div>
      <div class="mini-strip one"></div>
      <div class="partition-note">high local burden</div>
    </div>
    <div class="partition-card best">
      <div class="partition-title">Moderate segmentation</div>
      <div class="mini-strip three"></div>
      <div class="partition-note">local relief, relations mostly preserved</div>
    </div>
    <div class="partition-card">
      <div class="partition-title">Excessive segmentation</div>
      <div class="mini-strip six"></div>
      <div class="partition-note">fragmentation dominates</div>
    </div>
  </div>
</div>
```

::: {.pdf-fallback}
The objective rewards accumulated goal-relevant processing and penalizes connection loss. Moderate segmentation can be optimal when it lowers local cost without cutting too many strong relations.
:::

::: {.objective-footnote}
$\lambda$ is a theoretical fragmentation-sensitivity weight, not yet a fully estimated empirical parameter.
:::

::: {.notes}
This is the model in one slide. The optimization logic is the main contribution: instructional design becomes a partitioning problem under working-memory constraints.
:::

## Hypotheses

::: {.prediction-flow}
::: {.prediction}
**H1**

When unsegmented material exceeds feasible capacity, moderate segmentation should improve learning.
:::

::: {.prediction}
**H2**

Excessive segmentation should hurt transfer more than recall because transfer depends on preserved relations.
:::

::: {.prediction}
**H3**

Integrated representations should improve outcomes by reducing extraneous cost.
:::
:::

::: {.prediction-extra}
**H4:** Learners with more prior knowledge should tolerate larger or denser chunks because residual novelty is lower.
:::

::: {.outcome-line}
$$
Y_{\mathrm{recall}} = f_R\!\left(\sum_i P_i\right)
\qquad
Y_{\mathrm{transfer}} = f_T\!\left(\sum_i P_i, L(\Pi)\right)
$$
:::

::: {.notes}
Keep this slide directional. The proposal does not need to claim final functional forms. It only needs to show that the model generates falsifiable predictions.
:::

## Validation + Contribution

::: {.validation-grid}
::: {.validation}
**Validation path**

1. Choose material decomposable into elements and relations.
2. Compare segmentation and representation conditions.
3. Measure prior knowledge, recall, transfer, and optional subjective load.
4. Test whether model summaries align with directional outcomes.
:::

::: {.contribution}
**Narrow novelty claim**

Existing models optimize memory fidelity or resource allocation.

This proposal optimizes the partitioning of structured instructional information under capacity limits.
:::
:::

::: {.closing}
The project turns a familiar verbal problem in instructional design into a precise, constrained, and testable formal account.
:::

::: {.notes}
Close by making the novelty claim careful. It is not "the first formal model of working memory." It is an integrated model for structured instructional partitioning that joins intrinsic cost, extraneous cost, goal-relevant processing, and coherence loss.
:::
