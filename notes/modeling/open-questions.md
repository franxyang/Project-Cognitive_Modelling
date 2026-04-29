# Open Questions

This file tracks unresolved modeling decisions that matter more than adding more papers.

## Capacity and scale

- What are the units of `C_i`, `E_i`, and `I_i`?
- Is `C_i` fixed across segments, learner-specific, or condition-specific?
- Should capacity be treated as deterministic or as a latent random quantity?

## Information structure

- How should `q_j` be assigned in practice?
- What exactly does `w_uv` represent: dependency, co-activation, prerequisite structure, or simultaneous coordination?
- Should the graph be weighted, directed, or both?

## Prior knowledge

- Is `r_j` estimated from pretest data, expert judgment, or a simpler proxy?
- Should prior knowledge also down-weight `w_uv`, not just node-level terms?

## Partitioning

- What counts as an admissible partition in an instructional setting?
- Is the number of segments fixed, bounded, or optimized?
- Should there be an explicit penalty for too many segments beyond `L(Pi)`?

## Outcome mapping

- What minimal assumptions should `f_R` and `f_T` satisfy?
- Should recall depend only on total `P_i`, or also on segment distribution?
- Should transfer depend on preserved connectivity, path length, or another structural quantity?

## Validation path

- Is the first validation step a toy example, simulation, or empirical pilot?
- What outputs would falsify the current model most cleanly?
- What competing formulations should be compared before settling on the final version?
