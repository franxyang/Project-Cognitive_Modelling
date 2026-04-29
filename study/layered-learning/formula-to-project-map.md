# Formula to Project Map

See also [[Layered Learning Hub]].
See also [[formal-model-extraction]].

This note maps the most reusable formal pieces from the neighboring papers into the current project notation.

It separates three cases:

1. `directly adaptable`
2. `adaptable with reinterpretation`
3. `conceptual precedent only`

## Current project notation

- `A`: set of information elements
- `a_j`: an information element
- `q_j`: element complexity
- `w_uv`: connection strength / coordination demand
- `r_j`: residual novelty after prior knowledge
- `Pi`: partition of the information set into segments
- `A_i`: segment induced by the partition
- `C_i`: effective capacity in segment `i`
- `E_i`: extraneous cost in segment `i`
- `I_i`: intrinsic cost in segment `i`
- `P_i`: goal-relevant processing remaining in segment `i`
- `L(Pi)`: connection loss / fragmentation penalty

## 1. Sawicka (2008)

### Source formula

$$
\text{Available working memory capacity}
=
\text{Total working memory capacity} - ICL - ECL
$$

### Project rewrite

$$
P_i = (C_i - I_i - E_i)_+
$$

### What changed

- `Total working memory capacity` becomes segment-level `C_i`
- `ICL` becomes formal intrinsic term `I_i`
- `ECL` becomes extraneous term `E_i`
- remaining capacity is interpreted as useful processing `P_i`

### Status

`directly adaptable`

### Main caution

Sawicka is dynamic over time and schema development.
Your current model is static or segment-level, not yet a full dynamic simulation.

## 2. van den Berg and Ma (2018)

### Source formula

$$
\bar C_{\mathrm{total}}(Q;\lambda)
=
\bar C_{\mathrm{behavioral}}(Q)
+
\lambda \bar C_{\mathrm{neural}}(Q)
$$

$$
Q_{\mathrm{optimal}}
=
\arg\min_Q \bar C_{\mathrm{total}}(Q;\lambda)
$$

### Project rewrite

You are not allocating visual-memory precision across items.
You are choosing a partition over structured information.

The closest rewrite is:

$$
\Pi^*
=
\arg\max_{\Pi}
\left[
\text{learning-relevant gain from feasible processing}
-
\lambda \cdot \text{resource / organization cost}
-
\mu \cdot L(\Pi)
\right]
$$

Or, if you keep your current structure:

$$
\Pi^*
=
\arg\max_{\Pi}
\left[
\sum_i P_i - \lambda L(\Pi)
\right]
$$

### What changed

- optimization variable changes from `resource vector Q` to `partition Pi`
- behavioral cost becomes learning-relevant gain or outcome proxy
- neural cost becomes generic resource / processing expenditure
- extra penalty enters for fragmentation `L(Pi)`

### Status

`adaptable with reinterpretation`

### Main caution

Their model minimizes cost over encoding precision.
Yours optimizes segmentation of relational material.
So the reusable piece is the objective-function grammar, not the specific variable meanings.

## 3. van den Berg and Ma (2018): local-item objective

### Source formula

$$
\bar J_{\mathrm{optimal},i}(p_i;\lambda,t)
=
\arg\min_{\bar J}
\left(
p_i \bar c_{\mathrm{behavioral}}(\bar J;t)
+
\lambda \bar J
\right)
$$

### Project rewrite

The closest analogue would be a segment-wise or relation-wise local objective:

$$
x_i^*
=
\arg\min_{x_i}
\left[
\text{error / learning cost for segment } i
+
\lambda \cdot \text{processing cost for segment } i
\right]
$$

where `x_i` could later mean:

- amount of capacity assigned to segment `i`
- degree of segmentation
- weight placed on preserving certain relations

### Status

`adaptable with reinterpretation`

### Main caution

This is only useful if you later move from partition-only optimization to segment-wise allocation.

## 4. Nassar et al. (2018): precision from bit allocation

### Source formula

$$
R = \frac{2\pi}{2^b}
$$

where `b` is the number of bits allocated per target.

### Project rewrite

There is no direct one-to-one transfer, but the structural analogue is:

$$
\text{representation error decreases as more effective capacity is devoted to a unit}
$$

Possible future abstraction:

$$
\varepsilon_i = g(C_i)
\quad\text{with}\quad g'(C_i) < 0
$$

### What changed

- bit depth `b` becomes a generic capacity / precision relation
- exact circular color precision is dropped

### Status

`conceptual precedent only`

### Main caution

Do not import this formula literally unless you want a bit-allocation model.

## 5. Nassar et al. (2018): partition criterion

### Source idea

- full partitioning
- optimal partitioning
- criterion-based partitioning

Two items are chunked if their distance is below a threshold.

### Project rewrite

This maps naturally to a segmentation rule such as:

$$
\text{separate } a_u \text{ and } a_v
\quad\text{if}\quad
w_{uv} < \tau
\quad\text{or if local burden exceeds threshold}
$$

or more generally:

$$
\Pi(\tau) = \text{partition induced by a threshold or policy parameter } \tau
$$

### Status

`adaptable with reinterpretation`

### Main caution

Their threshold is based on similarity in feature space.
Yours would need to be based on relational dependence, complexity, or local burden.

## 6. Nassar et al. (2018): adaptive policy update

### Source formula

$$
PC \leftarrow PC - \alpha \delta \Delta C
$$

### Project rewrite

If you ever want the model to learn its own segmentation policy:

$$
\tau \leftarrow \tau - \alpha \delta \Delta S
$$

where:

- `tau`: segmentation or partition threshold
- `alpha`: learning rate
- `delta`: performance or reward prediction error
- `Delta S`: deviation in segmentation granularity from baseline

### Status

`adaptable with reinterpretation`

### Main caution

This belongs to a later adaptive version of the model, not the first static proposal.

## 7. Jakob and Gershman (2023): constrained rate-distortion form

### Source formula

$$
Q^* = \arg\min_{Q:\,R\le C} D
$$

### Project rewrite

This is the cleanest abstract analogy for your project:

$$
\Pi^*
=
\arg\min_{\Pi:\,\text{processing demand} \le \text{capacity}}
\text{structural distortion}
$$

or more explicitly:

$$
\Pi^*
=
\arg\min_{\Pi:\,I_i + E_i \le C_i \ \forall i}
L(\Pi)
$$

### What changed

- communication channel `Q` becomes partition `Pi`
- rate/capacity constraint becomes processing-capacity constraint
- distortion becomes connection loss or structural distortion

### Status

`adaptable with reinterpretation`

### Main caution

This version alone is too narrow because your project also cares about preserving goal-relevant processing, not only minimizing distortion.

## 8. Jakob and Gershman (2023): Lagrangian form

### Source formula

$$
Q^* = \arg\min_Q (R + \beta D)
$$

### Project rewrite

The nearest analogue is:

$$
\Pi^*
=
\arg\min_{\Pi}
\left[
\text{capacity / processing burden}
+
\beta L(\Pi)
\right]
$$

or in gain form:

$$
\Pi^*
=
\arg\max_{\Pi}
\left[
\sum_i P_i - \beta L(\Pi)
\right]
$$

### Status

`directly adaptable`

### Main caution

This is the cleanest bridge from information-theoretic trade-off to your current proposal objective.

## 9. Multi-item weighted distortion

### Source formula

$$
d(\theta,\hat\theta)
=
\sum_m \pi_m d(\theta_m,\hat\theta_m)
$$

### Project rewrite

This suggests a weighted connection-loss or weighted learning-outcome penalty:

$$
L_w(\Pi)
=
\sum_{u,v} \omega_{uv}(\Pi)\, w_{uv}
$$

or:

$$
\text{outcome loss}
=
\sum_k \pi_k \ell_k(\Pi)
$$

### What changed

- probe probabilities become importance weights
- distortion across items becomes structural loss across relations or outcomes

### Status

`adaptable with reinterpretation`

## 10. What to use now, not later

### Best formulas for the first version of your model

Use now:

1. Sawicka-style available capacity accounting

$$
P_i = (C_i - I_i - E_i)_+
$$

2. van den Berg and Ma style explicit optimization

$$
\Pi^*
=
\arg\max_{\Pi}
\left[
\sum_i P_i - \lambda L(\Pi)
\right]
$$

3. Jakob and Gershman style capacity-distortion interpretation

$$
\text{more preserved structure}
\Longrightarrow
\text{more required capacity}
$$

### Better saved for later versions

- adaptive policy update from Nassar
- segment-wise strategic allocation variants
- neural implementation details
- full dynamic simulation over time

## 11. Bottom line

If you want the cleanest first model, the current synthesis should be:

- from Sawicka: `capacity accounting`
- from CLT: `intrinsic/extraneous distinction`
- from your own structure: `graph-based intrinsic cost`
- from Jakob and Gershman: `distortion trade-off`
- from van den Berg and Ma: `explicit objective function`

That yields the most defensible first-pass objective:

$$
\Pi^*
=
\arg\max_{\Pi}
\left[
\sum_i (C_i - E_i - I_i)_+
-
\lambda L(\Pi)
\right]
$$

This is still your model, not a direct copy of any source.
Its strength is that each major term now has a clearer literature ancestor.
