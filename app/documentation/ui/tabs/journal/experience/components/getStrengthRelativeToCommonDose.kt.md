# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/components/getStrengthRelativeToCommonDose.kt

## Overview

This Kotlin file is a part of an Android application's user interface, specifically within the journal feature where users can track and record their substance experiences. The file contains a function designed to calculate the relative strength of a substance experience compared to others recorded by the user.

The `getStrengthRelativeToCommonDose` function evaluates the strength of a specific substance use event based on historical data. This is useful for providing insights into how the substance's impact might vary over time and with different doses, helping users better understand their experiences.

## Classes/Types

No classes or types are explicitly defined within this file. The primary element is a single function.

## Methods/Functions

### `getStrengthRelativeToCommonDose`

#### Overview

The `getStrengthRelativeToCommonDose` function calculates the relative strength of a specific substance use event based on historical data.

#### Parameters

- **context** (`Context`): The application context, used for accessing resources and services.
- **substanceUseEvent** (`SubstanceUseEvent`): The specific substance use event for which to calculate the relative strength.
- **historicalEvents** (`List<SubstanceUseEvent>`): A list of historical substance use events recorded by the user.

#### Return Type

- **Float**: A float value representing the relative strength of the specified substance use event.

#### Implementation

The function implements a basic calculation to determine the relative strength. It first calculates the average dose from all historical events, then computes the ratio of the current event's dose to this average. The result is clamped between 0 and 1 to ensure it remains within a valid range for representing relative strength.

```kotlin
fun getStrengthRelativeToCommonDose(
    context: Context,
    substanceUseEvent: SubstanceUseEvent,
    historicalEvents: List<SubstanceUseEvent>
): Float {
    if (historicalEvents.isEmpty()) return 0.5f // Default to middle if no data

    val totalDose = historicalEvents.sumOf { it.dose }
    val averageDose = totalDose / historicalEvents.size
    val relativeStrength = substanceUseEvent.dose / averageDose

    // Clamp the result between 0 and 1
    return relativeStrength.coerceIn(0f, 1f)
}
```

#### Notes

- The function assumes that `substanceUseEvent.dose` is a valid float representing the dose of the substance used.
- If there are no historical events (`historicalEvents.isEmpty()`), it returns a default value of 0.5 to avoid division by zero or undefined behavior.

This implementation provides a basic framework for calculating relative strength and can be extended with more sophisticated statistical methods depending on user feedback and requirements.

