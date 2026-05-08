# Overview

The `Substance.kt` file is a Kotlin data class file used within the PsychonautWiki Journal application to represent drug substances. It contains essential information about various drugs, their properties, effects, and potential risks. The class also includes relationships with categories, tolerance data, and interaction details.

This documentation will provide a comprehensive understanding of the `Substance` data class, its components, and how it is utilized throughout the application.

# Classes/Types

## Substance

The `Substance` class is the central data structure representing each drug in the application. It contains several properties to store different aspects of the drug's information.

### Properties

- **name**: The official name of the substance.
- **commonNames**: A list of common names or aliases for the substance.
- **url**: A URL pointing to additional details about the substance.
- **isApproved**: A boolean indicating whether the drug is approved for use by regulatory authorities.
- **tolerance**: An optional `Tolerance` object containing information on how tolerance develops over time with repeated usage.
- **crossTolerances**: A list of substances that are cross-tolerant with the current substance, meaning their effects may be reduced if both are used together.
- **addictionPotential**: A string describing the potential for addiction to the drug.
- **toxicities**: A list of potential toxicities associated with the drug.
- **categories**: A list of categories or classifications under which the substance falls, such as hallucinogens or stimulants.
- **summary**: An optional summary description of the substance.
- **effectsSummary**: An optional summary describing the effects of using the substance.
- **dosageRemark**: An optional remark or note about dosage considerations.
- **generalRisks**: An optional list of general risks associated with using the drug.
- **longtermRisks**: An optional list of long-term risks associated with frequent use of the drug.
- **saferUse**: A list of tips and advice for safer usage of the substance.
- **interactions**: An optional `Interactions` object containing lists of substances that are dangerous, unsafe, or have uncertain interactions when taken with the current substance.
- **roas**: A list of `Roa` (Route of Administration) objects representing how the drug can be administered and its associated effects.

### Methods/Functions

- **getRoa(route: AdministrationRoute): Roa?**:
  - Retrieves the `Roa` object corresponding to a specific administration route.
  
- **hasInteractions**: 
  - A property indicating whether the substance has any interactions (dangerous, unsafe, or uncertain).

- **isHallucinogen**: 
  - A property indicating whether the substance is classified as a hallucinogen.

- **isStimulant**:
  - A property indicating whether the substance is classified as a stimulant.

- **interactionExplanationURL**:
  - Returns a URL explaining interactions for the current substance, if available.

# Methods/Functions

## getRoa(route: AdministrationRoute): Roa?

The `getRoa` function takes an `AdministrationRoute` enum value and returns the corresponding `Roa` object from the list of ROAs associated with the substance. If no such ROA exists for the given route, it returns null.

### Parameters

- **route**: An `AdministrationRoute` enum indicating how the drug is administered (e.g., oral, intravenous).

### Returns

- A nullable `Roa` object representing the effects of the drug when administered via the specified route. If no matching ROA is found, it returns null.

## hasInteractions

The `hasInteractions` property checks whether the substance has any significant interactions with other substances as categorized by dangerous, unsafe, or uncertain interactions.

### Returns

- A boolean value indicating whether the substance has any interactions.

## isHallucinogen

The `isHallucinogen` property determines if the substance belongs to a category of hallucinogens, which include drugs that alter perception and experience.

### Returns

- A boolean value indicating whether the substance is classified as a hallucinogen.

## isStimulant

The `isStimulant` property checks if the substance falls into the stimulant category, which includes drugs that increase alertness, energy, or metabolic rate.

### Returns

- A boolean value indicating whether the substance is classified as a stimulant.

## interactionExplanationURL

The `interactionExplanationURL` function returns a URL pointing to additional information on interactions for the current substance. This URL can be used to provide users with more detailed explanations of how different substances interact and potential risks involved.

### Returns

- A string representing a URL, or null if no such URL is available.

# Example Usage

Below is an example of how the `Substance` class might be instantiated and used within the application:

```kotlin
val substance = Substance(
    name = "LSD",
    commonNames = listOf("Lysergic acid diethylamide", "Acid"),
    url = "https://www.psychonautwiki.org/wiki/LSD",
    isApproved = false,
    tolerance = Tolerance(full = "7 days", half = "3 days", zero = "2 hours"),
    crossTolerances = listOf("Mushrooms"),
    addictionPotential = "Low",
    toxicities = listOf("Psychosis", "Serotonin Syndrome"),
    categories = listOf("hallucinogen"),
    summary = "LSD is a powerful psychedelic drug that produces alterations in perception and consciousness.",
    effectsSummary = "Users report experiencing vivid hallucinations, synesthesia, and altered states of reality.",
    dosageRemark = "Dosage should be carefully considered due to potential side effects.",
    generalRisks = listOf("Psychiatric disturbances", "Hypothermia"),
    longtermRisks = listOf("Serotonin Syndrome"),
    saferUse = listOf("Avoid use in conjunction with other substances that increase blood pressure."),
    interactions = Interactions(
        dangerous = listOf("MAOIs"),
        unsafe = listOf("Tricyclic Antidepressants"),
        uncertain = listOf("Antipsychotics")
    ),
    roas = listOf(
        Roa(route = AdministrationRoute.Oral, effects = "Strong psychedelic experience"),
        Roa(route = AdministrationRoute.Intravenous, effects = "Rapid onset of intense hallucinations")
    )
)

// Example method usage
val oralEffects = substance.getRoa(AdministrationRoute.Oral)?.effects
println("Oral effects of LSD: $oralEffects")  // Output: Strong psychedelic experience

if (substance.hasInteractions) {
    println("LSD has interactions with certain substances.")
}
```

This example demonstrates how to create an instance of a substance and retrieve information about its effects, tolerance, and interactions.

