# Proposal Presentation Script

**Target duration:** 10–12 minutes
**Target pace:** ~150 words/min (conversational, slightly slower than reading)
**Approximate word count:** ~1,700 words

A few delivery notes before the script:

- Cues in `[brackets]` are stage directions, not spoken.
- Where you see `[pause]`, take a breath and look at the room. Two seconds is plenty.
- Phrases in *italics* are the moments worth landing — slow down on those.
- Don't read the notation legends or the references slides aloud. They exist on the slide as visual reference for the audience.

---

## Slide 1 · Title  ⏱ ~20s

Good [morning / afternoon].

The project I'm proposing is *Modeling Cognitive Load as an Instructional Partitioning Problem.*

Over the next ten minutes, I want to make one argument: that a familiar problem in instructional design — *how much to segment learning material* — can be written as a precise optimization problem under working-memory constraints.

[click]

---

## Slide 2 · Known  ⏱ ~50s

Let me start with what we already know, because this project is not coming from nowhere. The literature gives us a fairly strong chain of claims.

First, working memory is limited. That's the classic Baddeley result — capacity for temporary storage and manipulation is bounded.

Second, learning depends on *how* that limited capacity gets consumed. Sweller's cognitive load theory separates intrinsic load — the cost of the material itself — from extraneous load — the cost of how it's presented. What's left over for actual learning is not unlimited.

Third, the difficulty of a task isn't just about how many items it contains. It's about how those items have to interact in working memory at the same time. Sweller calls this *element interactivity.*

And fourth, more recent work in working-memory neuroscience treats capacity not as a fixed slot count, but as a graded resource — something that can be allocated unevenly across elements and that gets used up.

So: capacity, load, structure, optimization. Four ideas that, taken together, set up a problem.

[click]

---

## Slide 3 · Gap  ⏱ ~50s

Here's where the gap shows up.

The missing piece is *not* whether load matters — it does, that's settled. The missing piece is how *instructional structure* becomes a *prediction.*

Three things are underspecified.

One: mainstream cognitive load theory talks about element interactivity, but it doesn't usually represent instructional material as nodes, weights, and relations. The structure stays in the verbal description.

Two: segmentation gets discussed as a design *principle* — "break up hard material" — but not as an optimization problem with a benefit and a cost. There's no objective function.

And three: a lot of multimedia learning work invokes working memory and cognitive load without specifying how those constructs map to outcomes. The bridge from theory to measurement is weak.

This proposal targets that gap.

[click]

---

## Slide 4 · Proposal  ⏱ ~40s

Here's the thesis, in one line: *treat instructional design as a constrained partitioning problem over structured information.*

The flow is simple. You start with structured material. It has to pass through a capacity-limited processor — the learner. The instructional designer makes a partition choice — how to break the material into segments. And that partition choice determines recall and transfer.

So the model asks one question, and this is the question I want you to hold onto: *how much should material be segmented before the cost of fragmentation exceeds the benefit of local relief?*

[click]

---

## Slide 5 · Core Tension  ⏱ ~45s

That question only matters because there is a real tension here.

Segmentation is *useful.* That's not in doubt. Breaking material into chunks reduces how much a learner has to hold in mind at once. It lowers local processing demand.

But segmentation is also *risky.* Cut the wrong relations, and the structure that the learner needs in order to *transfer* what they learned starts breaking apart.

So instructional partitioning sits on a single axis — *local relief* on one end, *coherence loss* on the other. Good design isn't pushing as far as you can in one direction. Good design is *tractable segments plus preserved structure.* That's the equation we're going to formalize.

[click]

---

## Slide 6 · Theoretical Bridge  ⏱ ~70s

Before I show you the formal model, I want to be honest about where the pieces come from. *I am not the first to formalize cognition under limits.* I'm borrowing one specific move from each of four traditions.

[gesture across the four columns left to right]

From cognitive load theory, I take the move of *splitting cost by source* — intrinsic from the material, extraneous from how it's presented, and what's left for learning. In my model that becomes *I sub i*, *E sub i*, and *P sub i*.

From working-memory resource models — Ma and colleagues, van den Berg and Ma — I take the move of treating capacity as a *graded budget*, not a slot count. That becomes *C sub i*.

From coherence and comprehension — Kintsch, Anmarkrud — I take the move of *preserving the relations transfer needs.* If you cut them, transfer suffers more than recall. That becomes *L of Pi*.

And from formal cognition models — Sawicka, Nassar — I take the move of framing capacity-limited cognition as *constrained optimization*. That becomes the argmax structure of the objective itself.

Each chip on this slide names a variable that I'll define in the next two or three slides. Hold these four moves in mind — they're the bones of what comes next.

[click]

---

## Slide 7 · Memory Partition Demo  ⏱ ~60s

Quick concrete example before we go formal.

Same ten digits. Three different partitions.

[point]

On the left: no partition. One long string. You have to hold ten unrelated digits as a single unstable object — that's hard.

In the middle: a useful partition — three chunks. The chunk boundaries reduce local burden, but the *structure* of the sequence is still preserved.

On the right: too many partitions. Every digit is separated. The local burden per chunk is tiny — but there's nothing left to bind them together. Information that was easy to chunk is now ten isolated pieces.

[pause]

Same ten digits. Three different partitions. *Three different memory demands.* That's the phenomenon the model is trying to capture — but for instructional content, where the elements aren't digits, they're concepts with relations between them.

[click]

---

## Slide 8 · Representing Instructional Structure  ⏱ ~55s

Here's how I represent instructional material formally. It's a set of information elements — these are the nodes — with relations between them — the edges.

Each node has an element-level complexity, *q sub j*. Each edge has a coordination demand, *w sub uv* — how strongly the two elements need to be jointly active in working memory for understanding. And each element has a residual novelty, *r sub j*, which captures how much of it is genuinely new given the learner's prior knowledge.

A partition is just a way of grouping the nodes into segments. In this picture, segment A1 has three nodes; segment A2 has two. *The dashed red lines are relations that the partition cut.* Those cuts are what create *connection loss.*

When I talk about partitioning later, this is the picture I have in mind.

[click]

---

## Slide 9 · Minimal Assumptions  ⏱ ~55s

Five assumptions. I want to state them explicitly because the math that follows is just an encoding of these.

A1: instructional material can be represented as elements and relations. *Decomposable.*

A2: cost is *learner-relative.* Prior knowledge reduces residual novelty, which reduces effective burden.

A3: the relation weight *w sub uv* is *simultaneous coordination demand* — not generic semantic similarity. This is a deliberate, narrow definition.

A4: capacity, extraneous cost, and intrinsic cost are treated on a *common scale* — comparable latent processing quantities.

And A5 — this is the one that powers the whole project — *good segmentation improves local tractability without destroying too much global structure.* The trade-off is not assumed away. It's built in.

If you grant me these five, the model follows.

[click]

---

## Slide 10 · Processing Cost  ⏱ ~70s

Here is the central cost equation.

Intrinsic cost in segment i has three terms.

[point to each in turn]

The first term — *effective quantity*. Alpha times the sum of residual novelty across elements in the segment. After prior knowledge, *how much new stuff is in there.*

The second — *element complexity*. Beta times the sum of complexity weighted by novelty. Some elements are just intrinsically harder than others.

The third — *coordination demand.* Gamma times the sum over pairs of relation weight, weighted by the novelties on both ends. This is the formal version of element interactivity. *Relations among elements consume capacity*, not just element count.

And then *goal-relevant processing*, P sub i, is what's left after capacity is spent on extraneous and intrinsic cost. The plus-subscript just means clipped at zero — you can't have negative learning capacity, you just have none.

The notation strip at the bottom is reference, not reading material — every symbol in the formula is defined there if you need it.

[click]

---

## Slide 11 · Optimization Objective  ⏱ ~55s

And here is the model in one equation.

The optimal partition *Pi-star* is the partition that maximizes the sum of goal-relevant processing across segments, *minus* a penalty for coherence loss.

*L of Pi* is the connection loss — the sum of relation weights for relations that got cut by the partition.

*Lambda* is the fragmentation-sensitivity weight. It controls how strongly the model penalizes cutting strong relations relative to rewarding local relief.

The three illustrations below show the trade-off. No segmentation: high local burden, all in one block. Excessive: relief everywhere, but *fragmentation dominates.* Moderate segmentation, the best case: enough cuts to reduce local burden, *but* the relations are still mostly preserved.

To be honest about lambda — *it's a theoretical weight in this proposal, not yet an empirically estimated parameter.* Estimating it is future work.

[click]

---

## Slide 12 · Hypotheses  ⏱ ~50s

Four directional predictions fall out of the model.

H1: when unsegmented material exceeds feasible capacity, *moderate* segmentation should improve learning. That's the lower end of the curve.

H2: *excessive* segmentation should hurt transfer more than it hurts recall — because transfer depends on the relations that got cut, and recall doesn't, as much.

H3: integrated representations should improve outcomes by reducing extraneous cost. That's the design lever that doesn't change intrinsic structure.

And H4: learners with more prior knowledge should tolerate larger or denser chunks, because their residual novelty is lower. The same material is just less costly for them.

The bottom line: *recall depends on total processing; transfer depends on processing and preserved structure.*

[click]

---

## Slide 13 · Validation + Contribution  ⏱ ~50s

How would we test this? The validation path is deliberately lean.

One: pick material that decomposes transparently into elements and relations.

Two: compare conditions that vary segmentation and representation format.

Three: collect a prior-knowledge measure, recall, transfer, and optionally subjective load.

Four: ask whether the model's summaries — I sub i, P sub i, L of Pi — line up with the directional predictions.

The novelty claim is *intentionally narrow.* Existing models optimize memory fidelity, or resource allocation. This proposal does something different: it optimizes *the partitioning of structured instructional information under capacity limits.* That's the gap.

What I'm trying to do, in one sentence, is *take a familiar verbal problem in instructional design and turn it into a precise, constrained, and testable formal account.*

Thank you. I'd be happy to take questions.

[end]

---

## Quick timing recap

| Slide | Topic | Target |
|---|---|---|
| 1 | Title | 20s |
| 2 | Known | 50s |
| 3 | Gap | 50s |
| 4 | Proposal | 40s |
| 5 | Core Tension | 45s |
| 6 | Theoretical Bridge | 70s |
| 7 | Memory Demo | 60s |
| 8 | Representing Structure | 55s |
| 9 | Minimal Assumptions | 55s |
| 10 | Processing Cost | 70s |
| 11 | Optimization Objective | 55s |
| 12 | Hypotheses | 50s |
| 13 | Validation + Contribution | 50s |
| **Total** | | **~11 min 10 s** |

If you're running long, the easiest cuts are:

1. The "Known" recap can collapse from four moves to two (capacity + element interactivity).
2. The "Memory Demo" can drop the no-partition box and just contrast useful vs. excessive.
3. The third Processing Cost term (coordination demand) can be summarized as "relations also cost capacity" without unpacking the gamma sum.

If you're running short, expand:

1. Add one sentence on *why* you're not centering this on an experiment.
2. On Optimization Objective, add a sentence on what would falsify the model — useful for the Q&A pivot.

## On Q&A

Most likely questions and a one-line answer for each:

- **"How would you estimate lambda?"** — Treat it as a free parameter and sweep across plausible values; or fit it by minimizing prediction error on the recall and transfer outcomes.
- **"How do you set q_j and w_uv in practice?"** — Use explicit coding rules from the material — number of sub-concepts per element for q, and number of forward references / pre-requisite links for w.
- **"Isn't this just element interactivity in fancy notation?"** — Element interactivity is the nearest neighbor; the contribution is making partition choice an explicit optimization, with a separate coherence-loss term that segmentation must trade against.
- **"Why not just run an experiment?"** — The model needs to be defensible *before* I commit to a specific empirical instantiation; the proposal is a theory step, with a validation path attached.
