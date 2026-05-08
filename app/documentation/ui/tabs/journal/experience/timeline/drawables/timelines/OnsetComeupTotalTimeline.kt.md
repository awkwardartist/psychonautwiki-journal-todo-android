# Overview

The `OnsetComeupTotalTimeline.kt` file contains a Kotlin class that implements a drawable timeline for representing the onset, come-up, and total duration of a substance's effect. This class is part of a larger system for visualizing drug effects in a user interface.

# Classes/Types

## OnsetComeupTotalTimeline

### Properties

- `onset`: The initial period during which the substance begins to take effect.
  - Type: `Duration?`
- `comeUp`: The period during which the substance's effects become more pronounced and stable.
  - Type: `Duration?`
- `total`: The overall duration of the substance's effects.
  - Type: `Duration?`
- `percentSmoothness`: A factor between 0 and 1 controlling the smoothness of the total timeline. Default is 0.5.
  - Type: `Float`
- `ingestionTimeRelativeToStartInSeconds`: The time since the start of the substance's effects in seconds when the timeline starts.
  - Type: `Float`
- `nonNormalisedHeight`: A non-normalized height value used for scaling the timeline.
  - Type: `Float`
- `referenceHeight`: A reference height value used for normalizing the timeline.
  - Type: `Float`

### Methods

- `toOnsetComeupTotalTimeline(totalWeight: Float, ingestionTimeRelativeToStartInSeconds: Float, nonNormalisedHeight: Float): OnsetComeupTotalTimeline?`:
  - Converts an instance of `RoaDuration` to an `OnsetComeupTotalTimeline` if all required properties (`onset`, `comeUp`, `total`) are not null.

# Methods/Functions

## toOnsetComeupTotalTimeline

### Parameters

- `totalWeight`: The weight factor for the total duration, a value between 0 and 1.
  - Type: `Float`
- `ingestionTimeRelativeToStartInSeconds`: The time since the start of the substance's effects in seconds when the timeline starts.
  - Type: `Float`
- `nonNormalisedHeight`: A non-normalized height value used for scaling the timeline.
  - Type: `Float`

### Return Value

- Returns an instance of `OnsetComeupTotalTimeline` if all required properties (`onset`, `comeUp`, `total`) are not null, otherwise returns null.

# Usage Context

This class is intended to be used in a graphical user interface context where drug effects need to be visually represented. The class provides a structured way to represent the onset, come-up, and total duration of a substance's effects, allowing for customization through properties such as smoothness and height scaling.

