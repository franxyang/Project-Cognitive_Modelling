# Proposal Draft

## Working Title

**Optimal Partitioning of Structured Information Under Working-Memory Constraints: A Formal Model of Intrinsic Cost, Extraneous Cost, and Goal-Relevant Processing**

## 1. Problem and Gap

Instructional materials differ in complexity, representation, and segmentation, yet cognitive load theory still does not provide a formal mapping from those properties to predicted learning outcomes. CLT establishes that working memory is limited, that intrinsic and extraneous burden matter for learning, and that prior knowledge changes effective task difficulty (Sweller, 1988, 2010; Sweller et al., 2019). However, the theory remains largely verbal at the point where task structure, processing cost, and downstream learning need to be linked precisely. That gap matters because adjacent multimedia-learning work often invokes working memory and cognitive load without a sufficiently explicit model of either construct and without a strong bridge from theory to measurement (Anmarkrud et al., 2019). The central problem for this proposal is therefore not whether capacity limits matter, but how the structure of information should be represented when we want to predict what kinds of segmentation and representation will support learning rather than merely reduce immediate difficulty.

This proposal argues that cognitive processing under limited working-memory capacity can be formalized as a constrained optimization problem over structured instructional information. The goal is not to claim that no one has formalized cognition under limits before. Formal memory models, resource-rational models, and dynamic CLT models already exist. The narrower claim is that current theory lacks an integrated model for partitioning structured instructional information under capacity constraints while preserving the relations required for meaningful learning and transfer.

## 2. Theoretical Motivation

The proposal draws together four lines of work that are already present in the literature, but not yet combined into a single account. First, CLT provides the core educational problem. Sweller (1988) showed that solving a problem and learning from it are not the same process, because search procedures can consume resources that would otherwise support schema acquisition. Sweller (2010) later argued that intrinsic burden depends on element interactivity rather than raw information quantity alone, and Sweller et al. (2019) emphasized the roles of prior knowledge, long-term memory, and instructional design in shaping effective burden. Read together, these papers justify separating structure-driven cost from presentation-driven cost and treating prior knowledge as a moderator rather than a background detail.

Second, working-memory theory supports modeling capacity as a limited processing resource rather than only a fixed item bound. Baddeley (1992) provides the classic account of working memory as a system for temporary storage and manipulation in the service of reasoning, comprehension, and learning. Ma et al. (2014) and van den Berg and Ma (2018) push this further by showing that capacity can be treated as graded, allocable, and costly. These papers do not solve an instructional-design problem, but they make optimization language theoretically legitimate. Once capacity is treated as a limited resource system, the relevant question becomes what properties of the material consume that resource and how design choices redistribute the burden.

Third, coherence-based comprehension theory clarifies why local ease is not enough. Kintsch (1994) distinguishes remembering propositions from building a situation model that supports inference and transfer. That distinction matters because segmentation can reduce local simultaneous-processing demand while also weakening the relational structure needed for later understanding. Anmarkrud et al. (2019) sharpen this point by showing that lower reported load does not automatically imply better learning when the underlying concepts of working memory and comprehension remain underspecified. This proposal therefore treats coherence preservation as a substantive theoretical requirement rather than a cosmetic presentation issue.

Fourth, neighboring formal models show that cognition under limits can be modeled as optimization under constraints, but they solve adjacent rather than identical problems. Sawicka (2008) demonstrates that formalizing CLT is legitimate within the field itself. van den Berg and Ma (2018) model rational resource investment under memory limits. Nassar et al. (2018) and Jakob and Gershman (2023) show that compression, fidelity, and distortion trade-offs can be formalized rather than merely described. What these models do not yet provide is a CLT-shaped model of how to partition structured instructional information whose elements must be understood in relation to one another. That is the space this proposal targets.

## 3. Formal Framework

The proposal models a learning task as a structured set of information elements:

$$
A = \{a_1, \dots, a_k\}.
$$

Each element $a_j$ has an element-level complexity $q_j \ge 0$. For proposal purposes, the relation between two elements is represented by a weighted, undirected coordination term $w_{uv} \ge 0$. Here, $w_{uv}$ is interpreted narrowly as **simultaneous coordination demand**: the extent to which elements $a_u$ and $a_v$ must be jointly active in working memory for correct understanding. This keeps the first version of the model conceptually clear and avoids expanding the proposal into a more elaborate typed or directed graph before the central logic is stable.

Let

$$
\Pi = \{A_1, \dots, A_p\}
$$

be a partition of $A$ into instructional segments, with

$$
\bigsqcup_{i=1}^p A_i = A.
$$

To incorporate learner knowledge, let $r_j \in [0,1]$ denote the residual novelty of element $a_j$, where $r_j = 0$ means highly schematized and $r_j = 1$ means highly novel. Let $C_i > 0$ denote the effective processing capacity available in segment $i$, and let $E_i \ge 0$ denote extraneous processing cost induced by representation, interface, or presentation format.

Under these definitions, the intrinsic processing cost of segment $A_i$ is

$$
I_i
=
\alpha \sum_{a_j \in A_i} r_j
+
\beta \sum_{a_j \in A_i} q_j r_j
+
\gamma \sum_{\substack{a_u, a_v \in A_i \\ u < v}} w_{uv} r_u r_v.
$$

This expression captures three claims from the literature. The first term captures effective information quantity after prior knowledge has reduced novelty. The second captures element-level complexity. The third captures the cost of coordinating interdependent elements within the same segment. The model therefore translates CLT's verbal account of element interactivity into an explicit structure over nodes and relations.

The useful processing that remains available for learning in segment $i$ is then

$$
P_i = (C_i - E_i - I_i)_+,
\qquad
(x)_+ = \max\{x, 0\}.
$$

This term follows the broad CLT logic that learning-relevant processing depends on what remains after intrinsic and extraneous burden have been subtracted from available capacity. The proposal uses the label **goal-relevant processing** rather than relying on a stronger commitment to a separate germane-load construct.

Partitioning creates a second trade-off. Breaking material into segments may reduce local burden, but it can also weaken the cross-element relations required for coherent understanding. For the proposal version of the model, this cost is represented as a weighted cross-segment connection loss:

$$
L(\Pi)
=
\sum_{\substack{a_u \in A_i,\; a_v \in A_j \\ i \neq j}} w_{uv}.
$$

This is intentionally a simple edge-cut style measure. Later versions could consider path disruption or higher-order structure, but the current proposal freezes the concept at a level that is transparent, defensible, and easy to explain: relations that are strong and split across segments impose a coherence cost.

The optimal instructional partition is therefore defined by

$$
\Pi^\star
=
\arg\max_{\Pi}
\left[
\sum_{i=1}^p P_i - \lambda L(\Pi)
\right],
$$

where $\lambda > 0$ is a **fragmentation sensitivity parameter**. In this proposal, $\lambda$ is not treated as an empirically estimated parameter that must already be measured. It functions as a theoretical weight that encodes how strongly cross-segment fragmentation should matter relative to local processing relief.

Finally, the model links processing and partitioning to learning outcomes through minimal assumptions:

$$
Y_{\mathrm{recall}} = f_R\!\left(\sum_{i=1}^p P_i\right),
$$

$$
Y_{\mathrm{transfer}} = f_T\!\left(\sum_{i=1}^p P_i,\; L(\Pi)\right).
$$

For proposal purposes, the functional forms remain unspecified. The only committed assumptions are that recall should increase with total goal-relevant processing, while transfer should depend on both available processing and preserved relational structure. In other words, transfer is expected to be more sensitive than recall to fragmentation.

## 4. Predicted Trade-Off

The model generates a set of directional predictions that follow directly from its structure. First, when unsegmented material imposes intrinsic cost that exceeds feasible capacity, some segmentation should improve learning because it reduces local coordination burden and leaves more goal-relevant processing available. Second, this benefit should not increase monotonically with the number of segments. Once segmentation begins to cut too many strong relations, the rise in $L(\Pi)$ should offset or exceed local gains in $P_i$. Third, this cost should appear more strongly in transfer than in recall, because transfer requires learners to preserve and reuse relational structure rather than merely reproduce isolated elements.

The framework also clarifies the role of representation. Integrated representations, better signaling, or other design choices that reduce extraneous cost should increase $P_i$ even when intrinsic structure is unchanged. Likewise, prior knowledge should reduce effective burden through $r_j$, allowing the same material to be processed with lower cost by more knowledgeable learners. These are not ad hoc predictions added after the fact. They are direct consequences of treating capacity, burden, and coherence preservation within one objective.

The practical implication is that the proposal does not treat segmentation as universally beneficial or harmful. Instead, it treats instructional design as a partitioning problem with a genuine trade-off: materials must be divided enough to make local processing feasible, but not so much that the relations needed for understanding are broken apart.

## 5. Validation Path

The empirical component of this proposal is deliberately lean. Its purpose is to show that the model is testable, not to turn the project into a full experiment-first study. The first validation target is therefore directional fit rather than full parameter estimation. A reasonable proposal-level design would use learning materials from a domain that can be decomposed transparently into information elements and relations, such as a scientific explanation, a statistics concept, or a procedural reasoning task. Conditions could vary segmentation strategy and representation format in order to induce differences in local burden and cross-segment fragmentation.

At minimum, the study would collect a prior-knowledge measure, a post-learning recall measure, and a post-learning transfer measure. Subjective load ratings could be included as a secondary observation layer, but they should not dominate the logic of the proposal. The key point is that the formal model yields observable directional predictions: moderate segmentation should outperform no segmentation when unsegmented material is locally infeasible, excessive segmentation should disproportionately harm transfer, and representation choices that reduce extraneous burden should increase learning-relevant processing.

For the proposal version, the model does not need to promise a complete estimation framework. It only needs a transparent bridge from theory to observation. That bridge can be stated as follows: assign or justify approximate values for $q_j$, $w_{uv}$, and segment structure using explicit coding rules; derive model-based summaries such as $I_i$, $P_i$, and $L(\Pi)$ for each condition; and test whether those summaries align with observed recall and transfer in the predicted directions. This is sufficient to establish testability without overcommitting the project to a full empirical program before the theoretical contribution is stable.

## 6. Contribution

This proposal contributes a theory-first model of instructional processing under working-memory constraints. Its first contribution is to formalize CLT-style distinctions among intrinsic burden, extraneous burden, and remaining goal-relevant processing in a way that makes task structure explicit rather than implicit. Its second contribution is to represent element interactivity as weighted relational structure and to treat segmentation as an optimization problem over that structure. Its third contribution is to build coherence preservation directly into the objective through a weighted cross-segment connection-loss term, which provides a principled explanation for why design choices that lower local burden can still weaken deeper learning.

The novelty claim is intentionally narrow. This project does not claim to be the first formal model of limited cognition or the first optimization model of working memory. Instead, it claims to offer a first integrated model for **partitioning structured instructional information under capacity constraints** while jointly representing intrinsic cost, extraneous cost, goal-relevant processing, and coherence loss. In that sense, it positions itself between mainstream CLT, coherence-based comprehension theory, and existing formal memory models that solve adjacent but different problems.

By design, the proposal remains theory-first. The empirical section is included only to demonstrate that the model yields falsifiable and educationally meaningful predictions. The main intellectual contribution lies in turning a familiar verbal problem in instructional design into a precise, constrained, and testable formal account.
