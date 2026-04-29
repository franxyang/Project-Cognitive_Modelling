# Formal Model Extraction

See also [[Layered Learning Hub]].

This note extracts the main **usable formal models and equations** from the four papers that matter most for the mathematical side of the project:

- [[sawicka-2008-dynamics-of-cognitive-load-theory]]
- [[van-den-berg-ma-2018-resource-rational-working-memory]]
- [[nassar-helmers-frank-2018-chunking-lossy-data-compression]]
- [[jakob-gershman-2023-rate-distortion-theory-working-memory]]

This is not an extraction of every statistical fitting equation in the papers.
It is an extraction of the **core formal objects, objectives, update rules, and trade-off equations** that are most relevant to the current project.

## 1. Sawicka (2008)

Model type:
- system-dynamics simulation model
- stock-and-flow formulation of CLT variables over time

What is formalized:
- revealed material complexity
- relevant schemas
- intrinsic, extraneous, and germane load
- instructional support
- working-memory capacity
- schema development over time

### Core stock-and-flow equations

Available working memory capacity:

$$
\text{Available working memory capacity}
=
\text{Total working memory capacity} - ICL - ECL
$$

Complexity of revealed material:

$$
CRM = \operatorname{INTEG}(\text{New material presentation rate}; t_0 = 0.01)
$$

Schema gap:

$$
CRM\text{-}RS\ gap = \max(0, CRM - RS)
$$

Intrinsic cognitive load:

$$
ICL = \min(CRM\text{-}RS\ gap,\ \text{Total working memory capacity})
$$

Indicated extraneous cognitive load:

$$
\text{Indicated ECL} = \left|\text{Required instructional support} - \text{Provided instructional support}\right|
$$

Actual extraneous cognitive load:

$$
ECL = \min(\text{Total working memory capacity} - ICL,\ \text{Indicated ECL})
$$

Germane cognitive load:

Two variants are given in the paper:

$$
GCL = \text{Available working memory capacity}
$$

or, in the extended version,

$$
GCL =
\text{Available working memory utilization}
\cdot
\text{Available working memory capacity}
\cdot
\text{Effectiveness of GCL stimulation}
$$

Required instructional support:

$$
\text{Required instructional support}
=
1 - \min\left(1,\frac{RS}{CRM}\right)
$$

Provided instructional support:

$$
\text{Provided instructional support}
=
\operatorname{INTEG}(-\text{Instructional support attrition rate}; t_0 = 1)
$$

Relevant schemas:

$$
RS = \operatorname{INTEG}(\text{Schema development rate}; t_0 = 0)
$$

Schema development rate:

$$
\text{Schema development rate}
=
\begin{cases}
0, & \text{if Schema development time} = 0 \\
\dfrac{CRM - RS}{\text{Schema development time}}, & \text{otherwise}
\end{cases}
$$

Schema development time:

$$
\text{Schema development time}
=
\begin{cases}
0, & \text{if } GCL = 0 \\
f(GCL), & \text{otherwise}
\end{cases}
$$

### What is reusable for this project

Directly reusable:
- separating `intrinsic`, `extraneous`, and `germane/goal-relevant` processing
- making load components additive under a capacity ceiling
- treating schema availability as a variable that changes effective burden

Mostly conceptual rather than directly reusable:
- the exact stock-and-flow implementation
- time-evolution of instructional support

Best transferable pattern:

$$
\text{available useful processing}

=
\text{capacity}
-
\text{intrinsic burden}
-
\text{extraneous burden}
$$

This is the nearest formal precedent for your

$$
P_i = (C_i - E_i - I_i)_+
$$

## 2. van den Berg and Ma (2018)

Model type:
- normative resource-rational optimization model
- delayed-estimation working-memory model

What is formalized:
- resource allocation across items
- behavioral cost of error
- neural cost of encoding
- optimal resource investment

### General objective

Let \(Q = \{Q_1,\dots,Q_N\}\) be the resource allocation vector.

Expected total cost:

$$
\bar C_{\text{total}}(Q;\lambda)
=
\bar C_{\text{behavioral}}(Q)
+
\lambda \bar C_{\text{neural}}(Q)
$$

Optimal allocation:

$$
Q_{\text{optimal}}
=
\arg\min_Q \bar C_{\text{total}}(Q;\lambda)
$$

### Precision-based version

The paper then replaces generic resource with mean encoding precision \(\bar J\), using Fisher information.

$$
\bar C_{\text{total}}(\bar J;\lambda,t)
=
\bar C_{\text{behavioral}}(\bar J;t)
+
\lambda \bar C_{\text{neural}}(\bar J;t)
$$

$$
\bar J_{\text{optimal}}
=
\arg\min_{\bar J}
\bar C_{\text{total}}(\bar J;\lambda,t)
$$

### Neural cost

Global neural cost is additive across items:

$$
\bar C_{\text{neural}}(\bar J;t)
=
\sum_{i=1}^N \bar c_{\text{neural}}(\bar J_i;t)
$$

Local expected neural cost:

$$
\bar c_{\text{neural}}(\bar J;t)
=
\int c_{\text{neural}}(J)\,
\Gamma(J;\bar J,t)\,dJ
$$

If neural cost is linear in resource:

$$
c_{\text{neural}}(J;a)=aJ
$$

then:

$$
\bar C_{\text{neural}}(\bar J;a)
=
a\sum_{i=1}^N \bar J_i
$$

### Behavioral cost for local tasks

If each item has probing probability \(p_i\):

$$
\bar C_{\text{behavioral}}(\bar J;t)
=
\sum_{i=1}^N p_i \bar c_{\text{behavioral},i}(\bar J_i;t)
$$

Combining behavioral and neural cost:

$$
\bar C_{\text{total}}(\bar J;a,\lambda,t)
=
\sum_{i=1}^N p_i \bar c_{\text{behavioral}}(\bar J_i;t)
+
a\lambda\sum_{i=1}^N \bar J_i
$$

The paper then fixes \(a=1\), so per-item optimization becomes:

$$
\bar J_{\text{optimal},i}(p_i;\lambda,t)
=
\arg\min_{\bar J}
\left(
p_i \bar c_{\text{behavioral}}(\bar J;t)
+
\lambda \bar J
\right)
$$

### What is reusable for this project

Directly reusable:
- an explicit objective function
- cost = performance loss + resource expenditure
- per-item or per-segment optimization
- capacity/resource treated as allocable instead of fixed by default

Potentially adaptable pattern:

$$
\text{objective}
=
\text{learning/performance term}
-
\text{processing/resource cost term}
-
\text{structural loss term}
$$

This is the main precedent for writing your problem as a constrained or penalized optimization problem.

## 3. Nassar, Helmers, and Frank (2018)

Model type:
- normative/information-theoretic binary encoding model
- criterion-based partitioning model
- mechanistic center-surround chunking model

What is formalized:
- capacity-limited storage as finite bits
- chunking versus full partitioning
- criterion-based grouping
- reward-based updating of chunking policy
- recall/precision trade-off under center-surround dynamics

### Binary encoding model

The paper first models working memory as a fixed-capacity binary storage system.

Key representation idea:
- each color is encoded with a binary word
- more bits means higher precision
- chunking reduces number of stored words and frees bits per stored word

The precision term shown in the methods is:

$$
R = \frac{2\pi}{2^b}
$$

where \(b\) is the number of bits allocated to each target.

Interpretation:
- more bits \(\Rightarrow\) lower representational error
- chunking fewer representations together can increase \(b\) for each stored representation

### Partitioning models

The paper compares three storage strategies:

1. full partitioning  
   every item stored independently

2. optimal partitioning  
   all partition patterns considered, best one selected

3. criterion-based partitioning  
   two nearby colors are chunked if their distance is below a threshold

The key policy variable is the partitioning criterion:

- criterion \(= 0\): everything stored independently
- criterion \(= \pi\): everything chunked together

This is one of the closest neighbors to your project because it turns information organization into a model variable.

### Trial-by-trial policy update

The paper gives a reinforcement-style update rule for the partitioning criterion:

$$
PC \leftarrow PC - \alpha \delta \Delta C
$$

where:
- \(PC\): partitioning criterion
- \(\alpha\): learning rate
- \(\delta\): reward prediction error
- \(\Delta C\): deviation in number of chunks from its long-run average

Interpretation:
- if more chunking happened and feedback was good, criterion increases
- if more chunking happened and feedback was bad, criterion decreases

### Center-surround algorithmic model

The paper then introduces a mechanistic model with:
- attractive forces among nearby representations
- repulsive forces among more distant representations
- chunking probability based on a narrowly tuned von Mises function
- repulsion magnitude based on a broadly tuned von Mises function
- storage across the delay following a Poisson process

The paper does not reduce this section to one single compact objective equation.
The usable formal structure is:

1. add random noise to each stored feature
2. probabilistically chunk nearby items
3. apply repulsive forces between representations
4. store a Poisson number of resulting representations

### What is reusable for this project

Directly reusable:
- a partition criterion as a policy variable
- comparing full partitioning versus adaptive partitioning
- explicit tractability-versus-fidelity trade-off

Strong conceptual transfer:
- chunking can improve effective capacity while lowering precision
- organization policy can be learned or adapted
- local grouping and global distortion are in tension

Important difference from your project:
- their chunking is about internal grouping of similar features
- your problem is about partitioning structured instructional information with relations

## 4. Jakob and Gershman (2023)

Model type:
- rate-distortion model
- channel optimization model
- neural population coding implementation

What is formalized:
- communication channel between stimulus and memory report
- distortion as memory error cost
- rate as mutual information
- capacity-limited optimal coding
- neural implementation of the optimal channel

### Constrained optimization form

Let \(Q(\hat\theta \mid \theta)\) denote the noisy memory channel.

Expected distortion:

$$
D = \mathbb E[d(\theta,\hat\theta)]
$$

Information rate:

$$
R = I(\theta;\hat\theta)
$$

Capacity-constrained design problem:

$$
Q^* = \arg\min_{Q:\,R\le C} D
$$

Equivalent Lagrangian form:

$$
Q^* = \arg\min_Q (R + \beta D)
$$

with

$$
\beta = -\frac{\partial R}{\partial D}
$$

This is the cleanest information-theoretic trade-off in the current set.

### Optimal channel form

For a discrete stimulus space, the optimal channel satisfies:

$$
Q^*(\hat\theta\mid\theta)
\propto
\exp\left[-\beta d(\theta,\hat\theta) + \log \bar Q(\hat\theta)\right]
$$

where the marginal output distribution is

$$
\bar Q(\hat\theta)
=
\sum_{\theta} P(\theta) Q^*(\hat\theta\mid\theta)
$$

### Multiple items with probe probabilities

For \(M\) stimuli with probe probabilities \(\pi_m\), distortion is averaged over probes:

$$
d(\theta,\hat\theta)
=
\sum_m \pi_m d(\theta_m,\hat\theta_m)
$$

This is directly relevant to weighted importance across elements or segments.

### Population-coding implementation

Neuron firing rate:

$$
r_i = \exp(u_i - b)
$$

With divisive normalization:

$$
r_i =
\frac{\exp(u_i)}{\sum_j \exp(u_j)}
$$

Winner probability:

$$
q(\hat\theta=\phi_i\mid\theta)=r_i
$$

Excitatory input:

$$
u_i = -\beta d(\theta,\phi_i) + w_i
$$

Excitability term:

$$
w_i
=
\log \sum_\theta q(\hat\theta=\phi_i\mid\theta)P(\theta)
$$

Plasticity update:

$$
\Delta w_i = \eta\left(c e^{-w_i} z_i - 1\right)
$$

### What is reusable for this project

Directly reusable:
- constrained optimization under capacity limits
- Lagrangian form of fidelity-cost trade-off
- weighted distortion across multiple items or outputs

Most transferable pattern:

$$
\text{minimize structural distortion subject to limited processing/information capacity}
$$

This is the strongest precedent for saying that preserving more structure must carry some resource cost.

## 5. Fast comparison

### What each paper gives you

Sawicka:
- CLT as dynamic formal system
- additive load logic under capacity

van den Berg and Ma:
- explicit objective function
- optimal resource allocation under cost

Nassar et al.:
- adaptive partitioning / chunking policy
- tractability-precision trade-off

Jakob and Gershman:
- principled rate-distortion framework
- constrained optimization language plus neural implementation

## 6. Best candidates to adapt into your own model

### Most directly reusable equations

1. From Sawicka:

$$
\text{available useful processing}
=
\text{capacity} - \text{intrinsic burden} - \text{extraneous burden}
$$

2. From van den Berg and Ma:

$$
\arg\min \left(
\text{behavioral/performance cost}
+
\lambda \cdot \text{resource cost}
\right)
$$

3. From Nassar:

$$
\text{organization policy} = \text{partition criterion}
$$

and adaptive update

$$
PC \leftarrow PC - \alpha \delta \Delta C
$$

4. From Jakob and Gershman:

$$
\arg\min_{Q:\,R\le C} D
\quad\text{or}\quad
\arg\min_Q (R + \beta D)
$$

### Closest combined template for your project

Your eventual model is most likely to look like a combination of:

- Sawicka's additive capacity accounting
- van den Berg and Ma's explicit optimization objective
- Nassar's adaptive organization policy
- Jakob and Gershman's fidelity-versus-capacity language

One abstract combined template would be:

$$
\Pi^*
=
\arg\max_{\Pi}
\left[
\text{goal-relevant processing under capacity}
-
\lambda \cdot \text{fragmentation/coherence loss}
-
\mu \cdot \text{resource expenditure}
\right]
$$

This last equation is **not** from any one paper.
It is the most natural synthesis of the reusable formal tools extracted above.
