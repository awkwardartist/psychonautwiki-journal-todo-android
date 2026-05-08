# OnsetTimeline.kt

## Overview

The `OnsetTimeline` class represents a drawable element that visually represents the onset period of a substance's effects on a timeline within an application. This class extends the `TimelineDrawable` abstract class, which provides the basic structure for drawing timelines.

This documentation focuses solely on the `OnsetTimeline` class and its related methods, providing details on how to use it and its capabilities in visualizing the onset period of substances.

## Classes/Types

### OnsetTimeline

#### Description

The `OnsetTimeline` class is a concrete implementation of the `TimelineDrawable` abstract class. It represents a drawable that visually indicates the initial effects or onset period of a substance on a timeline.

#### Properties

- **onset**: A nullable `Duration` object representing the onset duration.
- **totalWeight**: A float value between 0 and 1 indicating the weight of the total duration for calculating the position along the timeline.
- **ingestionTimeRelativeToStartInSeconds**: A float representing the ingestion time relative to the start in seconds.
- **nonNormalisedHeight**: A float representing the non-normalized height of the timeline.

#### Methods

### Constructor

```kotlin
constructor(onset: Duration?, totalWeight: Float, ingestionTimeRelativeToStartInSeconds: Float, nonNormalisedHeight: Float)
```

**Parameters**

- `onset`: The onset duration.
- `totalWeight`: The weight of the total duration for calculating the position along the timeline.
- `ingestionTimeRelativeToStartInSeconds`: The ingestion time relative to the start in seconds.
- `nonNormalisedHeight`: The non-normalized height of the timeline.

### Methods

#### drawTimeLine

```kotlin
override fun drawTimeLine(drawScope: DrawScope, canvasHeight: Float, pixelsPerSec: Float, color: Color, density: Density)
```

**Parameters**

- `drawScope`: The drawing scope.
- `canvasHeight`: The height of the canvas in pixels.
- `pixelsPerSec`: The number of pixels per second.
- `color`: The color to use for the timeline.
- `density`: The density of the screen.

**Description**

Draws the onset timeline on the provided `drawScope`. This method uses the provided parameters to calculate and draw the timeline path, incorporating the onset duration and its position relative to the total duration. It also draws a circle at the ingestion time and applies a smooth transition effect using quadratic Bezier curves for better visual representation.

### Helper Functions

#### context

A placeholder indicating that additional context is required to fully understand or utilize this class effectively.

