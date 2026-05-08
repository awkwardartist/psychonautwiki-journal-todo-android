# ./app/src/main/java/com/isaakhanimann/journal/data/substances/classes/SubstanceFile.kt

## Overview

The `SubstanceFile` class is a data model that represents a file containing categories and substances. It provides a structured way to manage and access the substance data, including its relationship with various categories.

## Classes/Types

### SubstanceFile

Represents a file containing categories and substances.

#### Properties

- **categories**: A list of `Category` objects representing different categories associated with substances.
- **substances**: A list of `Substance` objects representing individual substances.

#### Methods

- **getSubstanceMap()**: Returns a map where the keys are substance names and the values are corresponding `Substance` objects. This provides a convenient way to quickly access any substance by its name.

## Example Usage

```kotlin
val categories = listOf(
    Category("Hallucinogen", "Drugs that affect your perception of reality.", null, Color(0xFFD26F58)),
    // other categories...
)

val substances = listOf(
    Substance("LSD", listOf("Lysergic Acid Diethylamide"), "https://www.drugbank.ca/drugs/LSD", true, null, emptyList(), null, emptyList(), listOf("Hallucinogen"), null, null, null, Interactions(emptyList(), emptyList(), emptyList()), listOf(Roa(AdministrationRoute.ORAL, null))),
    // other substances...
)

val substanceFile = SubstanceFile(categories, substances)
val substanceMap = substanceFile.substanceMap

// Accessing a specific substance by name
if (substanceMap.containsKey("LSD")) {
    val lsd = substanceMap["LSD"]
    println(lsd?.name)  // Output: LSD
}
```

This example demonstrates how to create an instance of `SubstanceFile` and access the substances within it using a map.

