# Interactions.kt

## Overview

The `Interactions` class provides information on potential interactions with other substances for a given drug. These interactions can be categorized into three levels of severity: dangerous, unsafe, and uncertain. Each category contains a list of substance names that may interact in that manner.

This class is part of the broader system used to manage and present detailed information about various substances, including their effects, risks, and potential interactions with other substances.

## Classes/Types

### InteractionType

`InteractionType` is an enumeration representing different levels of interaction severity. Each level has a corresponding color and danger count:

- **DANGEROUS**: High level of risk; three danger points.
  - Color: `Color(0xffFF7B66)`
- **UNSAFE**: Moderate level of risk; two danger points.
  - Color: `Color(0xFFFFC466)`
- **UNCERTAIN**: Low level of risk or uncertain interaction; one danger point.
  - Color: `Color(0xffFFF966)`

#### Methods/Functions

- **color**: Returns the color associated with the interaction type.
- **dangerCount**: Returns the number of danger points associated with the interaction type.

### Interactions

The `Interactions` data class holds lists of substances that may interact at different severity levels:

- **dangerous**: A list of substance names that pose a high risk of interaction.
- **unsafe**: A list of substance names that could result in an unsafe interaction.
- **uncertain**: A list of substance names where the interaction level is uncertain.

## Methods/Functions

No specific methods or functions are defined within the `Interactions` class itself. All relevant functionality is encapsulated in the properties and enumerations provided by this file.

### Example Usage

```kotlin
val interactions = Interactions(
    dangerous = listOf("LSD", "MDMA"),
    unsafe = listOf("Cannabis", "Alcohol"),
    uncertain = listOf("Ketamine", "DXM")
)

if (interactions.hasInteractions) {
    println("This substance has known interactions.")
} else {
    println("No known interactions for this substance.")
}
```

In this example, we create an instance of `Interactions` and check if there are any known interactions. The result depends on the contents of the `dangerous`, `unsafe`, and `uncertain` lists.

## Context

To fully understand and utilize the functionality provided by the `Interactions` class, it is necessary to have a context of how substances are managed and presented within the larger application. This includes knowledge of how the substance data is structured and how it is integrated into various user interfaces for displaying information about individual substances.

