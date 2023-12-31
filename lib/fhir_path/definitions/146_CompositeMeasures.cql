
include THATKACommon

/*
Problem Statement:
We have 2 separate proportion measures:
* V2_Risk-standardized Major Bleeding Rate
    Following Elective Primary Total Hip Arthroplasty (THA)
    and/or Total Knee Arthroplasty (TKA) Electronic Clinical Quality Measure (eCQM)
* V2_Risk-standardized Venous Thromboembolism (VTE) Rate
    Following Elective Primary Total Hip Arthroplasty (THA)
    and/or Total Knee Arthroplasty (TKA) Electronic Clinical Quality Measure (eCQM)

Can we develop a composite measure that combines these 2 measures to produce a
single performance rate? What would be the best approach to achieve this goal?

Composite Measure Support in the CQL-based HQMF IG is described for two
general approaches:

1. Individual-Based: Scoring methods that operate at the individual level
  by combining members of component populations and then calculating the
  measure score using standard measure scoring techniques on the combined
  populations.

2. Component-Based: Scoring methods that operate at the population level
  by combining the summary scores of component measures.

From an implementation perspective, systems that can calculate component measures
can readily calculate individual-based composites by simply combining criteria
from the component measures.

However, component-based calculation would require aggregation and calculation
on the results of component calculations and would require more extensive modification
to existing systems to support. For this reason, eCQMs only make use of the
individual-based calculation methods for defining composite measures.

Composite Scoring methods described in CQL-based HQMF IG:

All-or-nothing
Opportunity-based
Patient-level linear combination
Component-level weighted combination

Patient-level linear combination is a special case of the more general "linear combination" category described in the blueprint.
Specifically, the "linear combination" in the blueprint allows for simple and weighted average, and can be performed at the
individual level, or the component level. Current tooling only supports specifying individual level composite measures, so
the capability is described as "patient-level linear combination" to make clear that it is not applying at the component level.
*/


/*
Question:
Will the following approach produce the same result:

Can just develop just one measure (this is not composite measure) that has the following components:
Initial population: Patient >= 18 and had THA/TKA surgery
Denominator Exclusions: combine denominator exclusion criteria from the 2 measures above
Denominator: Initial population – Denominator Exclusions
Numerator 1: include numerator criteria for VTE
Numerator 2: include numerator criteria for Bleeding

Then calculate a single performance rate using one of the following formulas:

1) linear combination:
Performance Rate = (Numerator 1 + Numerator 2) / (Denominator – Denominator Exclusions)

2) Any-Or-None
Performance Rate = (Numerator 1 + Numerator 2 - number with both) / (Denominator – Denominator Exclusions)

We also plan to present the individual rates:

Performance Rate VTE = Numerator 1 / (Denominator – Denominator Exclusions)
Performance Rate Bleeding = Numerator 2 / (Denominator – Denominator Exclusions)
*/

/*
Answer:
For option 1) linear combination:
This can be expressed as a composite measure within the MAT by selecting patient-level linear combination
as your composite scoring method. The way this will calculate is as a continuous variable measure
where:
* The initial population is made up of the combined initial population of all component measures
* The measure population is made up of the combined denominators of all component measures
* The measure population exclusion is made up of the combined denominator exclusions of all component measures
* The measure observation is then the number of numerators in which that member appears

For option 2) Any-or-None:
This can't be expressed as a composite (in the existing tooling) because the IG only provides for All-or-none,
Any-or-none would need to be added.

To make this more clear, let's define a non-composite measure, following the
approach being proposed (i.e. defining a measure with multiple performance rates)
*/

/*
For the purpose of this example, I've defined a common library THATKACommon, and
combined the measure logic from both measures in that library.
The initial population and denominator are the same for both measures, so I've left
them defined as is in the common library. In this library, we'll set up multiple
performance rates, one for Bleeding Rate, one for VTE Rate, and then one for
each of the different types of "composites" we want to produce.
*/

/*
First, the Bleeding Rate, we'll call it Numerator 1:
*/
