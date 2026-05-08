# DurationRange.kt

## Overview

`DurationRange.kt` contains a single class that represents the duration of effects for a substance based on its administration route (Roa). This class includes properties for different stages of the substance's effects such as onset, comeup, peak, offset, total duration, and afterglow. Each property is of type `DurationRange`, which itself could be defined elsewhere in the project.

## Classes/Types

### DurationRange

The primary data class used to represent a range of durations for various stages of a substance's effects.

**Properties:**
- **onset:** DurationRange? - The time it takes for the substance to start having an effect.
- **comeup:** DurationRange? - The period of time where the effects of the substance are increasing in intensity.
- **peak:** DurationRange? - The peak intensity of the effects, which could last from a short period or extend over several hours depending on the substance.
- **offset:** DurationRange? - The period during which the substance's effects begin to diminish and return to baseline.
- **total:** DurationRange? - The total duration from administration until all effects are gone.
- **afterglow:** DurationRange? - Additional effects or hangovers that may persist after the primary effects have faded.

**Primary Constructor:**
```kotlin
data class RoaDuration(
    val onset: DurationRange?,
    val comeup: DurationRange?,
    val peak: DurationRange?,
    val offset: DurationRange?,
    val total: DurationRange?,
    val afterglow: DurationRange?
)
```

## Methods/Functions

`DurationRange.kt` does not contain any methods or functions that are exported for use in other parts of the application. All properties are publicly accessible.

### Context

To fully understand and utilize `DurationRange.kt`, it is important to have a clear understanding of how durations are represented throughout the project, particularly within the context of substance administration routes (Roa). This includes knowing how durations are calculated based on factors such as dose, route, and individual variability.

