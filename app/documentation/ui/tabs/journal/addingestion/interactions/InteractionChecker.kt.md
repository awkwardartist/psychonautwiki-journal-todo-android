## Overview

The `InteractionChecker.kt` file provides functionality to determine interactions between substances based on predefined interaction types: dangerous, unsafe, or uncertain. This is crucial for applications that need to provide information about potential risks associated with substance combinations.

## Classes/Types

### InteractionType (Enum)

An enumeration representing the type of interaction:

- **DANGEROUS**: Indicates a high risk of adverse effects.
- **UNSAFE**: Indicates a medium risk of adverse effects.
- **UNCERTAIN**: Indicates a low or unknown risk of adverse effects.

### Interactions (Data Class)

A data class that holds interaction information for a substance, categorized by danger level:

```kotlin
data class Interactions(
    val dangerous: List<String>,
    val unsafe: List<String>,
    val uncertain: List<String>
)
```

- **dangerous**: A list of substances with which the current substance has a dangerous interaction.
- **unsafe**: A list of substances with which the current substance has an unsafe interaction.
- **uncertain**: A list of substances with which the current substance may have an uncertain interaction.

### Interaction (Data Class)

A data class representing a specific interaction between two substances:

```kotlin
data class Interaction(
    val aName: String,
    val bName: String,
    val interactionType: InteractionType
)
```

- **aName**: The name of the first substance involved in the interaction.
- **bName**: The name of the second substance involved in the interaction.
- **interactionType**: The type of interaction (dangerous, unsafe, or uncertain).

### SubstanceRepository (Dependency)

The `InteractionChecker` class depends on a `SubstanceRepository` to fetch substance data and determine interactions.

## Methods/Functions

### getInteractionBetween(aName: String, bName: String): Interaction?

This function takes two substance names as input and returns an `Interaction` object representing the interaction between them. If there is no interaction or if both substances are the same, it returns `null`.

**Parameters:**

- **aName**: The name of the first substance.
- **bName**: The name of the second substance.

### getInteractionFromAToB(aName: String, bName: String): InteractionType?

This private function checks for interactions from substance A to substance B and returns the corresponding interaction type. If no direct or wildcard match is found, it returns `null`.

**Parameters:**

- **aName**: The name of the first substance.
- **bName**: The name of the second substance.

### getDirectInteraction(interactions: Interactions?, substanceName: String): InteractionType?

This private function checks for a direct interaction between the specified substance and any substance in the provided `Interactions` object. If a match is found, it returns the corresponding interaction type; otherwise, it returns `null`.

**Parameters:**

- **interactions**: The `Interactions` object containing potential interactions.
- **substanceName**: The name of the substance to check for direct interaction.

### getWildcardInteraction(interactions: Interactions?, substanceName: String): InteractionType?

This private function checks for a wildcard interaction between the specified substance and any substance in the provided `Interactions` object. If a match is found, it returns the corresponding interaction type; otherwise, it returns `null`.

**Parameters:**

- **interactions**: The `Interactions` object containing potential interactions.
- **substanceName**: The name of the substance to check for wildcard interaction.

### getClassInteraction(interactions: Interactions?, categories: List<String>): InteractionType?

This private function checks for a class interaction between the specified substance and any substance in the provided `Interactions` object based on their categories. If a match is found, it returns the corresponding interaction type; otherwise, it returns `null`.

**Parameters:**

- **interactions**: The `Interactions` object containing potential interactions.
- **categories**: A list of categories for the specified substance.

### isClassMatch(interactions: List<String>, categories: List<String>): Boolean

This private function checks if any category of the specified substance matches any interaction in the provided list. It returns `true` if a match is found; otherwise, it returns `false`.

**Parameters:**

- **interactions**: A list of interactions.
- **categories**: A list of categories for the specified substance.

### isWildcardMatch(interactions: List<String>, substanceName: String): Boolean

This private function checks if the specified substance matches any wildcard interaction in the provided list. It returns `true` if a match is found; otherwise, it returns `false`.

**Parameters:**

- **interactions**: A list of interactions.
- **substanceName**: The name of the substance to check for wildcard interaction.

### isDirectMatch(interactions: List<String>, substanceName: String): Boolean

This private function checks if the specified substance matches any direct interaction in the provided list. It returns `true` if a match is found; otherwise, it returns `false`.

**Parameters:**

- **interactions**: A list of interactions.
- **substanceName**: The name of the substance to check for direct interaction.

### extendAndCleanInteractions(interactions: List<String>): List<String>

This private function extends and cleans a list of interactions by replacing certain substrings with more general patterns. It returns a new list containing the extended and cleaned interactions.

**Parameters:**

- **interactions**: A list of interactions to be extended and cleaned.

### serotoninReleasers

A constant list of substances that are considered serotonin releasers.

### substitutedAmphetamines

A constant list of substituted amphetamine substances, used for matching in interaction checks.

