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

::: {.lead}
I am not the first to formalize cognition under limits. I borrow one move from each of these four traditions; the contribution is integrating them.
:::

::: {.lane-grid}
::: {.lane}
::: {.lane-eyebrow}
COGNITIVE LOAD THEORY
:::

::: {.lane-move}
Split cost by source.
:::

The cost of learning a thing is decomposed by where it comes from: the material itself, how it is presented, and what is left over for learning.

::: {.lane-chip}
becomes $I_i$, $E_i$, $P_i$
:::

::: {.lane-cite}
Sweller, 1988; 2010
:::
:::

::: {.lane}
::: {.lane-eyebrow}
WORKING-MEMORY RESOURCE MODELS
:::

::: {.lane-move}
Treat capacity as a graded budget.
:::

Capacity is not a fixed slot count; it is a resource that can be unevenly allocated across elements and that runs out.

::: {.lane-chip}
becomes $C_i$
:::

::: {.lane-cite}
Ma et al., 2014; van den Berg & Ma, 2018
:::
:::

::: {.lane}
::: {.lane-eyebrow}
COHERENCE AND COMPREHENSION
:::

::: {.lane-move}
Preserve the relations transfer needs.
:::

Understanding depends on cross-element relations being intact; segmentation can break them, and that should hurt transfer more than recall.

::: {.lane-chip}
becomes $L(\Pi)$
:::

::: {.lane-cite}
Kintsch, 1994; Anmarkrud et al., 2019
:::
:::

::: {.lane}
::: {.lane-eyebrow}
FORMAL COGNITION MODELS
:::

::: {.lane-move}
Frame limits as constrained optimization.
:::

Adjacent traditions write capacity-limited cognition as an objective to maximize, not just a verbal trade-off.

::: {.lane-chip}
becomes $\arg\max_\Pi[\,\cdot\,]$
:::

::: {.lane-cite}
Sawicka, 2008; Nassar et al., 2018
:::
:::
:::

::: {.bridge-footer}
Each chip names a variable that is formally defined two to three slides later.
:::

::: {.notes}
This slide is doing positioning, not literature review. Each lane should answer one question: what specific move did I take from this tradition, and where does it show up in my model. Speak the chip out loud — "this becomes I_i / E_i / P_i" — so the audience can hold on to the mapping when those symbols return.
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
  <svg class="graph-stage" viewBox="0 0 1200 480" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Two instructional segments with cross-segment relations cut by the partition.">
    <!-- segment frames -->
    <rect class="seg-frame" x="40"  y="60" width="520" height="380" rx="22"/>
    <rect class="seg-frame" x="640" y="60" width="520" height="380" rx="22"/>
    <text class="seg-label" x="64"  y="100">SEGMENT A</text>
    <text class="seg-sub-text" x="208" y="108">1</text>
    <text class="seg-label" x="664" y="100">SEGMENT A</text>
    <text class="seg-sub-text" x="808" y="108">2</text>

    <!-- intra-segment edges (solid teal) -->
    <line class="edge"     x1="140" y1="220" x2="300" y2="320"/>
    <line class="edge"     x1="300" y1="320" x2="460" y2="220"/>
    <line class="edge"     x1="720" y1="220" x2="1060" y2="310"/>

    <!-- cross-segment cut edges (dashed red, a3-a4 and a2-a5) -->
    <line class="cut-edge" x1="460" y1="220" x2="720"  y2="220"/>
    <line class="cut-edge" x1="300" y1="320" x2="1060" y2="310"/>

    <!-- nodes (label = a + subscript number, two text elements per node) -->
    <g class="node-group">
      <circle class="node" cx="140"  cy="220" r="38"/>
      <text class="node-label" x="132"  y="230">a</text>
      <text class="node-sub"   x="156"  y="240">1</text>
    </g>
    <g class="node-group">
      <circle class="node" cx="300"  cy="320" r="38"/>
      <text class="node-label" x="292"  y="330">a</text>
      <text class="node-sub"   x="316"  y="340">2</text>
    </g>
    <g class="node-group">
      <circle class="node" cx="460"  cy="220" r="38"/>
      <text class="node-label" x="452"  y="230">a</text>
      <text class="node-sub"   x="476"  y="240">3</text>
    </g>
    <g class="node-group">
      <circle class="node" cx="720"  cy="220" r="38"/>
      <text class="node-label" x="712"  y="230">a</text>
      <text class="node-sub"   x="736"  y="240">4</text>
    </g>
    <g class="node-group">
      <circle class="node" cx="1060" cy="310" r="38"/>
      <text class="node-label" x="1052" y="320">a</text>
      <text class="node-sub"   x="1076" y="330">5</text>
    </g>

    <!-- caption -->
    <text class="graph-caption" x="600" y="465">Strong relations split across segments contribute to connection loss.</text>
  </svg>
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

::: {.notation-legend}
::: {.legend-title}
NOTATION
:::

::: {.legend-grid}
::: {.legend-row}
$I_i$ — intrinsic processing cost in segment $i$
:::

::: {.legend-row}
$C_i$ — effective processing capacity in segment $i$
:::

::: {.legend-row}
$P_i$ — goal-relevant processing left for learning
:::

::: {.legend-row}
$E_i$ — extraneous processing cost (presentation, interface)
:::

::: {.legend-row}
$r_j \in [0,1]$ — residual novelty of element $a_j$ after prior knowledge
:::

::: {.legend-row}
$q_j$ — element-level complexity
:::

::: {.legend-row}
$w_{uv}$ — simultaneous coordination demand between $a_u$ and $a_v$
:::

::: {.legend-row}
$\alpha,\beta,\gamma$ — weights on the three cost terms; $(x)_+ = \max(x,0)$
:::
:::
:::

::: {.notes}
Do not over-explain every parameter. Emphasize that the third term is the formal version of element interactivity: relations among elements can consume capacity, not just the number of elements. The notation strip below is for reference only — do not read it line by line.
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

::: {.notation-legend}
::: {.legend-title}
NOTATION
:::

::: {.legend-grid}
::: {.legend-row}
$\Pi^\star$ — the optimal partition (the choice that maximizes the objective)
:::

::: {.legend-row}
$\Pi = \{A_1, \ldots, A_p\}$ — a candidate partition into $p$ segments
:::

::: {.legend-row}
$P_i$ — goal-relevant processing in segment $i$ (from Processing Cost)
:::

::: {.legend-row}
$L(\Pi) = \sum w_{uv}$ over relations split across segments — connection loss
:::

::: {.legend-row}
$\lambda > 0$ — fragmentation-sensitivity weight (theoretical, not yet estimated)
:::

::: {.legend-row}
The objective rewards accumulated $P_i$ and penalizes coherence loss $L(\Pi)$.
:::
:::
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

## References (1 / 2)

::: {.references-list}
Anmarkrud, Ø., Andresen, A., & Bråten, I. (2019). Cognitive load and working memory in multimedia learning: Conceptual and measurement issues. *Educational Psychologist*, 54(2), 61–83.

Baddeley, A. D. (1992). Working memory. *Science*, 255(5044), 556–559.

Chen, O., Paas, F., & Sweller, J. (2023). A cognitive load theory approach to defining and measuring task complexity through element interactivity. *Educational Psychology Review*, 35, 63.

Kintsch, W. (1994). Text comprehension, memory, and learning. *American Psychologist*, 49(4), 294–303.

Ma, W. J., Husain, M., & Bays, P. M. (2014). Changing concepts of working memory. *Nature Neuroscience*, 17(3), 347–356.

Nassar, M. R., Helmers, J. C., & Frank, M. J. (2018). Chunking as a rational strategy for lossy data compression in visual working memory. *Psychological Review*, 125(4), 486–511.
:::

::: {.notes}
Reference slides are for record only — do not read aloud. Skim past during the talk.
:::

## References (2 / 2)

::: {.references-list}
Sawicka, A. (2008). Dynamics of cognitive load theory: A model-based approach. *Computers in Human Behavior*, 24(3), 1041–1066.

Sweller, J. (1988). Cognitive load during problem solving: Effects on learning. *Cognitive Science*, 12(2), 257–285.

Sweller, J. (2010). Element interactivity and intrinsic, extraneous, and germane cognitive load. *Educational Psychology Review*, 22(2), 123–138.

Sweller, J., van Merriënboer, J. J. G., & Paas, F. (2019). Cognitive architecture and instructional design: 20 years later. *Educational Psychology Review*, 31(2), 261–292.

van den Berg, R., & Ma, W. J. (2018). A resource-rational theory of set size effects in human visual working memory. *eLife*, 7, e34963.
:::

::: {.notes}
Continued reference list. Do not read aloud.
:::
