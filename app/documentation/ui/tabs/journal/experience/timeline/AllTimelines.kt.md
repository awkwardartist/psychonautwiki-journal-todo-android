# AllTimelines.kt

## Overview

The `AllTimelines.kt` file is part of a Kotlin-based application designed for managing experiences related to substances. It defines data structures and constants that are used throughout the application to represent timelines and visualize substance usage.

This file includes:

1. A list of lists containing instances of `DataForOneEffectLine`. Each sublist represents a timeline or group of related timelines.
2. Constants and utility functions related to drawing and styling lines on a canvas.

## Classes/Types

### AllTimelines

```kotlin
object AllTimelines {
    // ... (list of lists containing DataForOneEffectLine)
}
```

- **Description**: This object holds the main structure for all timelines, encapsulating various substance usage events within sublists.
- **Sublists**: Each sublist represents a different set of timelines related to specific events or substances.

### DataForOneEffectLine

```kotlin
data class DataForOneEffectLine(
    val substanceName: String,
    val route: AdministrationRoute,
    val roaDuration: RoaDuration,
    val height: Float = 1f,
    val horizontalWeight: Float = 0.5f,
    val color: AdaptiveColor = AdaptiveColor.RED
)
```

- **Description**: Represents a single line or event in a timeline.
- **Properties**:
  - `substanceName`: The name of the substance.
  - `route`: How the substance was consumed (e.g., oral, intravenous).
  - `roaDuration`: The route of administration duration, including onset, comeup, peak, offset, total duration, and afterglow.
  - `height`: Height of the line on a timeline.
  - `horizontalWeight`: Weight of the line horizontally to represent its relative importance or impact.
  - `color`: Color used for drawing the line.

### RoaDuration

```kotlin
data class RoaDuration(
    val onset: DurationRange,
    val comeup: DurationRange,
    val peak: DurationRange,
    val offset: DurationRange,
    val total: DurationRange,
    val afterglow: DurationRange
)
```

- **Description**: Represents the route of administration duration for a substance.
- **Properties**:
  - `onset`: The time it takes for the substance to start affecting the user.
  - `comeup`: The period during which the effects become more pronounced.
  - `peak`: The peak intensity of the substance's effects.
  - `offset`: The time it takes for the effects to begin diminishing.
  - `total`: The total duration from onset to offset.
  - `afterglow`: Any lingering effects after the main effects have dissipated.

### DurationRange

```kotlin
data class DurationRange(val min: Float, val max: Float, val units: DurationUnits)
```

- **Description**: Represents a range of time with minimum and maximum values and units.
- **Properties**:
  - `min`: The minimum duration value.
  - `max`: The maximum duration value.
  - `units`: The unit of measurement for the duration (e.g., minutes, hours).

## Methods/Functions

### context

```kotlin
const val shapeAlpha = 0.25f
```

- **Description**: A constant representing the alpha value for shapes used in drawing timelines.

This documentation provides a comprehensive overview and detailed descriptions of the classes, types, and constants defined in the `AllTimelines.kt` file. Each class and type is explained with its properties and usage context, ensuring that developers understand how to use these components effectively within the application.

