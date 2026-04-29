# Literature Map

This map is built from the current Zotero collection `cognitive_modeling`, which contains 23 top-level papers with local attachments.

It is a model-first map, not a generic topic survey.
The organizing question is not "what has been published?"
It is "which papers justify, constrain, or operationalize the formal model in the proposal?"

## Review objective

Your literature review needs to establish four claims:

1. working memory can be treated as a limited processing resource,
2. cognitive load depends on information quantity, complexity, and interdependence,
3. current cognitive load research still has conceptual and measurement gaps that justify formalization,
4. a mathematical or computational model is therefore a legitimate next step rather than an unnecessary abstraction.

## Lanes

### Lane 1: capacity-limited processing

Role in the project:

- supports `C_i` as a limited but allocable processing resource,
- motivates a shift from purely verbal capacity language to resource allocation language.

Anchor papers:

- Baddeley (1992), *Working memory*
- Ma, Husain, and Bays (2014), *Changing concepts of working memory*
- van den Berg and Ma (2018), *A resource-rational theory of set size effects in human visual working memory*

Why this lane matters:

- Baddeley gives the classic capacity-limited background,
- Ma et al. help you move away from a rigid slot metaphor,
- van den Berg and Ma is the cleanest precedent for normative or optimization-style reasoning.

Priority:

- `Tier 1`

### Lane 2: intrinsic load, element interactivity, and task structure

Role in the project:

- supports the definition of `I_i`,
- provides the theoretical basis for modeling information structure rather than only item count,
- helps justify node-level complexity and edge-level coordination terms.

Anchor papers:

- Sweller (1988), *Cognitive load during problem solving*
- Sweller (2010), *Element interactivity and intrinsic, extraneous, and germane cognitive load*
- Sweller, van Merrienboer, and Paas (2019), *Cognitive Architecture and Instructional Design: 20 Years Later*
- Chen, Paas, and Sweller (2023), *A Cognitive Load Theory Approach to Defining and Measuring Task Complexity Through Element Interactivity*

Why this lane matters:

- Sweller (1988) is the original learning-under-load backbone,
- Sweller (2010) is the closest direct antecedent to your intrinsic-cost term,
- Sweller et al. (2019) helps frame germane processing as allocation rather than a separate load bucket,
- Chen et al. (2023) is your strongest bridge from theory to operationalization of task complexity.

Priority:

- `Tier 1`

### Lane 3: segmentation, representation, and coherence loss

Role in the project:

- motivates the trade-off between local tractability and lost global structure,
- supports `E_i` and the logic behind `L(Pi)`,
- helps explain why representation format and segmentation are not trivial implementation details.

Anchor papers:

- Anmarkrud, Andresen, and Braten (2019), *Cognitive Load and Working Memory in Multimedia Learning: Conceptual and Measurement Issues*
- Mayer (2024), *The Past, Present, and Future of the Cognitive Theory of Multimedia Learning*
- Mutlu-Bayraktar, Altan, and Teker (2019), *Cognitive load in multimedia learning environments: A systematic review*

Why this lane matters:

- Anmarkrud et al. is especially useful because it exposes conceptual ambiguity around working memory and load measurement,
- Mayer gives the application context for integrated versus split representation,
- the multimedia review helps keep representation effects secondary but available as empirical context.

Priority:

- `Tier 1.5`

### Lane 4: measurement and construct validity

Role in the project:

- supports the observation layer of the model,
- frames subjective load measures as useful but limited,
- helps defend the claim that current empirical work is often under-linked to formal theory.

Anchor papers:

- Paas et al. (2003), *Cognitive Load Measurement as a Means to Advance Cognitive Load Theory*
- Brunken, Plass, and Leutner (2003), *Direct Measurement of Cognitive Load in Multimedia Learning*
- Leppink et al. (2013), *Development of an instrument for measuring different types of cognitive load*
- Klepsch, Schmitz, and Seufert (2017), *Development and Validation of Two Instruments Measuring Intrinsic, Extraneous, and Germane Cognitive Load*
- Klepsch and Seufert (2020), *Understanding instructional design effects by differentiated measurement of intrinsic, extraneous, and germane cognitive load*
- Krieglstein et al. (2022), *A Systematic Meta-analysis of the Reliability and Validity of Subjective Cognitive Load Questionnaires in Experimental Multimedia Learning Research*
- Krieglstein et al. (2023), *Development and Validation of a Theory-Based Questionnaire to Measure Different Types of Cognitive Load*

Why this lane matters:

- these papers do not define your core theory,
- but they are essential for the sentence "the model is empirically connectable, while current measures remain imperfect."

Priority:

- `Tier 2`

### Lane 5: formal and computational modeling precedents

Role in the project:

- justifies modeling as a legitimate move inside this literature,
- provides precedent for dynamic or architecture-based treatments of workload.

Anchor papers:

- Sawicka (2008), *Dynamics of cognitive load theory: A model-based approach*
- Sohn, Doane, and Jang (2018), *Modeling of multiple sources of workload and time pressure effect with ACT-R*
- van den Berg and Ma (2018), already listed above

Why this lane matters:

- Sawicka is your closest direct precedent inside the CLT orbit,
- Sohn et al. broadens the case that workload can be computationally modeled,
- van den Berg and Ma helps normalize optimization language.

Priority:

- `Tier 1`

### Lane 6: process and neuro measurement

Role in the project:

- supports possible future observation layers,
- useful for a preprint or later validation section,
- not central to the proposal's theoretical core.

Anchor papers:

- Mutlu-Bayraktar, Cosgun, and Altan (2018), *A systematic review of eye tracking research on multimedia learning*
- Wang et al. (2023), *Characterisation of Cognitive Load Using Machine Learning Classifiers of Electroencephalogram Data*
- Hassan et al. (2025), *EEG workload estimation and classification: a systematic review*

Why this lane matters:

- these papers are best treated as optional extensions for how latent processing states might be observed,
- they should not be allowed to pull the project into a neuroscience-first direction.

Priority:

- `Tier 3`

## Priority reading order

### Pass 1: backbone papers

Read these first because they define the intellectual center of the proposal:

1. Sweller (1988)
2. Sweller (2010)
3. Sweller, van Merrienboer, and Paas (2019)
4. Chen, Paas, and Sweller (2023)
5. Baddeley (1992)
6. Ma, Husain, and Bays (2014)
7. van den Berg and Ma (2018)
8. Anmarkrud, Andresen, and Braten (2019)
9. Sawicka (2008)

Outcome of Pass 1:

- one paragraph on why formalization is needed,
- one paragraph on why load should be represented structurally,
- one paragraph on why optimization language is defensible,
- one list of unresolved modeling choices.

### Pass 2: empirical bridge papers

Read these next to support the validation and measurement part of the proposal:

1. Paas et al. (2003)
2. Brunken, Plass, and Leutner (2003)
3. Leppink et al. (2013)
4. Klepsch, Schmitz, and Seufert (2017)
5. Klepsch and Seufert (2020)
6. Krieglstein et al. (2022)
7. Krieglstein et al. (2023)
8. Sweller (2024)

Outcome of Pass 2:

- one paragraph on measurement limits,
- one paragraph on how the model could be linked to observed outcomes,
- one shortlist of measures appropriate for proposal-level validation.

### Pass 3: context and extension papers

Read these last unless your advisor pushes the project toward richer empirical validation:

1. Mayer (2024)
2. Mutlu-Bayraktar, Altan, and Teker (2019)
3. Mutlu-Bayraktar, Cosgun, and Altan (2018)
4. Wang et al. (2023)
5. Hassan et al. (2025)
6. Sohn, Doane, and Jang (2018)

Outcome of Pass 3:

- one optional section on observation layers or process measures,
- one optional application framing paragraph for multimedia learning.

## Paper-to-model map

### Best supports for `C_i`

- Baddeley (1992)
- Ma, Husain, and Bays (2014)
- van den Berg and Ma (2018)
- Sweller (2024)

### Best supports for `I_i`

- Sweller (1988)
- Sweller (2010)
- Chen, Paas, and Sweller (2023)

### Best supports for `E_i`

- Sweller, van Merrienboer, and Paas (2019)
- Mayer (2024)
- Anmarkrud, Andresen, and Braten (2019)

### Best supports for `r_j`

- Sweller, van Merrienboer, and Paas (2019)
- Sweller (2024)
- Baddeley (1992)

### Best supports for `L(Pi)` and segmentation trade-off

- Anmarkrud, Andresen, and Braten (2019)
- Mayer (2024)
- Mutlu-Bayraktar, Altan, and Teker (2019)

### Best supports for outcome and observation layers

- Paas et al. (2003)
- Brunken, Plass, and Leutner (2003)
- Leppink et al. (2013)
- Klepsch, Schmitz, and Seufert (2017)
- Klepsch and Seufert (2020)
- Krieglstein et al. (2022)
- Krieglstein et al. (2023)
- Wang et al. (2023)
- Hassan et al. (2025)

## Current bottleneck

The bottleneck is no longer finding papers.
It is turning these papers into:

1. literature notes,
2. concept notes,
3. explicit modeling decisions.

## Immediate next action

Convert the nine `Pass 1` papers into notes first.
Do not distribute effort evenly across all 23 papers.
