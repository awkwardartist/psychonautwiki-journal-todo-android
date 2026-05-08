# Tolerance.kt

## Overview

The `Tolerance` class in the Kotlin codebase of PsychonautWiki Journal is a simple data class designed to encapsulate information related to substance tolerance levels. It provides a straightforward way to represent the full, half, and zero dosage values for a given substance's tolerance.

This class is essential for tracking how a user's body responds to repeated doses of a substance over time, which can be crucial for safe and responsible substance use.

## Classes/Types

### Tolerance

The `Tolerance` class has three properties:

- **full**: A string representing the full dosage level at which tolerance is considered to have been reached.
- **half**: A string representing the half dosage level below which tolerance is considered to have decreased significantly.
- **zero**: A string representing the zero dosage level, typically indicating that no tolerance has been developed.

These properties are all of type `String?`, meaning they can hold a nullable value. This allows for flexibility in how the tolerance information is represented, as some data might be missing or not applicable.

### Example Usage

Here's an example of how you might use the `Tolerance` class in your code:

```kotlin
val substance = Substance(
    name = "LSD",
    tolerance = Tolerance(
        full = "200 micrograms",
        half = "100 micrograms",
        zero = null // Zero dosage not applicable for LSD
    ),
    // Other properties...
)

// Accessing the tolerance information
val fullTolerance = substance.tolerance?.full // "200 micrograms"
val halfTolerance = substance.tolerance?.half // "100 micrograms"
```

## Methods/Functions

### `getInteractionExplanationURLForSubstance(String url: String): String`

This method is not part of the `Tolerance` class itself, but it's worth mentioning in this context because it's a utility function that might be used to retrieve information about substance interactions based on the substance's URL. This function is likely found in another file.

The purpose of this method is to provide an explanation for substance interactions by fetching data from a URL associated with a specific substance. The exact implementation and return type are not detailed here, but it returns a string containing the interaction explanation.

### Context

For more detailed information on how the `Tolerance` class fits into the broader context of the PsychonautWiki Journal app, including its usage in conjunction with other data classes and UI components, please provide additional context.

