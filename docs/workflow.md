# Workflow

## Operating principle

Treat this repository as your Obsidian vault.

- `Zotero` stores papers, metadata, PDFs, highlights, and citation truth.
- `Obsidian` stores literature notes, concept notes, model notes, and argument structure.
- `Codex` turns those materials into comparison tables, gap statements, outlines, derivation checklists, and draft prose.

Because this is a theory-first project, the workflow should center on model construction and argument structure, not on experimental logistics.

## Phase 1: Literature review

### Zotero structure

Create collections like:

- `00_inbox`
- `01_clt_and_working_memory`
- `02_segmentation_and_representation`
- `03_formal_models_of_cognition`
- `04_measurement_and_validation`
- `05_anchor_papers`

Use tags for fast filtering:

- `must-cite`
- `theory`
- `measurement`
- `formalization-gap`
- `segmentation`
- `working-memory`
- `modeling`

### Obsidian note flow

For each paper:

1. store the paper in Zotero,
2. annotate in Zotero,
3. create one note in `notes/literature/`,
4. link that paper note to one or more concept notes in `study/layered-learning/concepts/`.

Do not write full review paragraphs yet.
Write extraction notes that answer:

- what theoretical claim does the paper make?
- what construct definition does it rely on?
- what does it measure well or poorly?
- what part of your model does it support, constrain, or leave open?

### Codex use in this phase

Use Codex to:

- turn a batch of literature notes into a comparison table,
- separate "background theory" from "formalization gap" papers,
- identify recurring definitions of working memory, intrinsic load, and segmentation,
- draft literature review subsections from your notes only.

## Phase 2: Model construction

This is the center of the project.

Create notes in `notes/modeling/` for:

- notation and variables,
- assumptions,
- candidate objective functions,
- interpretation of each term,
- open identifiability issues,
- toy examples,
- alternative formulations.

Recommended order:

1. define all variables and units,
2. state the assumptions behind each cost term,
3. test simple toy cases,
4. decide what counts as a partition,
5. clarify what outcome functions need to assume,
6. document rival formulations before locking one in.

Use Codex here to:

- stress-test definitions for internal consistency,
- rewrite informal ideas into mathematical prose,
- compare alternative formulations,
- generate small worked examples,
- and produce a list of unresolved modeling decisions.

## Phase 3: Proposal writing

The proposal should be assembled from claims, not from raw notes.

Create short argument notes that map:

- claim,
- why it matters,
- which sources support it,
- which part of the model it motivates.

Then write the proposal in `manuscript/` with this sequence:

1. problem and gap,
2. theoretical motivation,
3. formal framework,
4. predicted trade-off,
5. validation path,
6. contribution.

For this project, keep the empirical study design lean.
It should justify testability, but it should not dominate the proposal.

## Phase 4: Preprint expansion

When moving from proposal to preprint, add:

- a stronger related-work section,
- a full model section with assumptions and notation table,
- toy examples or simulations,
- proposition-style results if available,
- a clearer bridge from model quantities to observable measures.

If the empirical study remains preliminary, the preprint can still be valuable as a theory or methods paper as long as the formal contribution is explicit and defensible.

## Weekly cadence

### Weekly loop

1. collect and annotate papers in Zotero,
2. convert the most relevant papers into literature notes,
3. update one or two concept notes,
4. advance one modeling note,
5. ask Codex to consolidate the week's notes into a review matrix or outline update,
6. revise the manuscript outline from those outputs.

### Output rule

Every week should produce at least one of these:

- one polished concept note,
- one resolved modeling assumption,
- one literature comparison table,
- one proposal subsection draft.

## Guardrails

- Do not let Codex invent citations. Ground it in notes, excerpts, or PDFs you actually have.
- Do not store authoritative bibliography fields in Obsidian. Zotero remains the source of truth.
- Do not let the empirical study section become the project center unless your advisor explicitly shifts the scope.
- Keep a running list of unresolved modeling decisions. Those are often more important than adding more papers.
