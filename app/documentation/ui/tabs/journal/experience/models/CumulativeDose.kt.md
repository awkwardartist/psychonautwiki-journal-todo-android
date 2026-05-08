```markdown
# CumulativeDose.kt

## Overview

The `CumulativeDose` Kotlin file contains data models related to the cumulative doses of substances taken during experiences. It is part of a larger application for journaling experiences, specifically focusing on tracking substance use and effects.

This file includes two primary data classes: `CumulativeDose` and `CumulativeRouteAndDose`. These classes help in representing the total amount of a substance consumed over time, broken down by route of administration and any associated statistics.

## Classes/Types

### CumulativeDose

```kotlin
data class CumulativeDose(
    val substanceName: String,
    val cumulativeRouteAndDose: List<CumulativeRouteAndDose>
)
```

- **substanceName**: A string representing the name of the substance.
- **cumulativeRouteAndDose**: A list of `CumulativeRouteAndDose` objects, each representing a specific route and dose combination.

### CumulativeRouteAndDose

```kotlin
data class CumulativeRouteAndDose(
    val cumulativeDose: Double,
    val units: String,
    val isEstimate: Boolean,
    val cumulativeDoseStandardDeviation: Double?,
    val numDots: Int?,
    val route: AdministrationRoute,
    val hasMoreThanOneIngestion: Boolean
) {
    val doseDescription: String get()
    {
        val description = cumulativeDose.toReadableString() + " $units"
        return if (isEstimate) {
            if (cumulativeDoseStandardDeviation != null && cumulativeDoseStandardDeviation > 0) {
                "${cumulativeDose.toReadableString()}±${cumulativeDoseStandardDeviation.toReadableString()} $units"
            } else {
                "~$description"
            }
        } else {
            description
        }
    }
}
```

- **cumulativeDose**: The total amount of substance consumed.
- **units**: The units in which the dose is measured (e.g., mg, ml).
- **isEstimate**: A boolean indicating whether the dose is an estimate rather than a precise measurement.
- **cumulativeDoseStandardDeviation**: An optional double representing the standard deviation of the cumulative dose if it's an estimate.
- **numDots**: An optional integer representing the number of dots associated with the dose, which might indicate concentration or potency.
- **route**: The route by which the substance was administered (e.g., oral, intravenous).
- **hasMoreThanOneIngestion**: A boolean indicating whether there are multiple ingestions for this combination of substance and route.

## Methods/Functions

### DoseDescription

```kotlin
val doseDescription: String get()
{
    val description = cumulativeDose.toReadableString() + " $units"
    return if (isEstimate) {
        if (cumulativeDoseStandardDeviation != null && cumulativeDoseStandardDeviation > 0) {
            "${cumulativeDose.toReadableString()}±${cumulativeDoseStandardDeviation.toReadableString()} $units"
        } else {
            "~$description"
        }
    } else {
        description
    }
}
```

- **Description**: Generates a readable string describing the cumulative dose, including its units and whether it's an estimate.
- **Returns**: A string representation of the cumulative dose.

## Usage

These data classes are intended to be used in conjunction with other models and components within the application. For instance, `CumulativeDose` might be used in a summary view of a user's experience, while `CumulativeRouteAndDose` could be utilized for detailed views or statistics related to substance consumption.

This file provides a structured way to represent and manage cumulative doses of substances, which is essential for accurate tracking and analysis within the application.
```

