# OnsetTotalTimeline.kt Documentation

## Overview

The `OnsetTotalTimeline` Kotlin file contains a data class and functions that represent and draw a total timeline with an onset component. This is part of a user interface for visualizing the effects of a substance over time, likely in an app related to drug use or similar experiences.

## Classes/Types

### OnsetTotalTimeline

- **Description**: A data class representing a total timeline with an onset component.
- **Properties**:
  - `onset`: A `FullDurationRange` representing the duration of the substance's onset.
  - `total`: A `FullDurationRange` representing the total duration of the substance's effects.
  - `totalWeight`: A float value indicating the relative weight or intensity of the total duration component.
  - `ingestionTimeRelativeToStartInSeconds`: A float value representing the time of ingestion relative to the start in seconds.
  - `nonNormalisedHeight`: A float value representing the non-normalized height of the timeline.

## Methods/Functions

### toOnsetTotalTimeline

- **Description**: Creates an instance of `OnsetTotalTimeline` from a `RoaDuration`, total weight, ingestion time relative to start in seconds, and non-normalized height.
- **Parameters**:
  - `totalWeight`: A float value indicating the relative weight or intensity of the total duration component.
  - `ingestionTimeRelativeToStartInSeconds`: A float value representing the time of ingestion relative to the start in seconds.
  - `nonNormalisedHeight`: A float value representing the non-normalized height of the timeline.
- **Returns**: An instance of `OnsetTotalTimeline` if both `onset` and `total` durations are not null, otherwise returns null.

## Example Usage

Here's an example of how you might use the `OnsetTotalTimeline` class:

```kotlin
val roaDuration = RoaDuration(/*...*/) // Assume RoaDuration is properly initialized
val totalWeight = 0.7f
val ingestionTimeRelativeToStartInSeconds = 15.2f
val nonNormalisedHeight = 50f

val timeline = roaDuration.toOnsetTotalTimeline(totalWeight, ingestionTimeRelativeToStartInSeconds, nonNormalisedHeight)
if (timeline != null) {
    // Use the timeline object for drawing or other purposes
}
```

## Dependencies

- `RoaDuration`: A class representing the duration of a substance's effects.
- `FullDurationRange`: A data class representing a range of time in seconds with minimum and maximum values.

For detailed documentation on these dependencies, please refer to their respective files. If more context is needed to understand the functionality fully, please provide it.

