# OnsetComeupPeakTotalTimeline.kt

## Overview

The `OnsetComeupPeakTotalTimeline` class is a Kotlin data class that represents a specific type of timeline for visualizing the onset, come-up, peak, and total duration of an experience in a user interface. This class extends from `TimelineDrawable`, which likely provides a set of common drawing functionalities.

This class is particularly useful for creating detailed and visually appealing timelines to help users understand the progression and duration of their experiences more effectively.

## Classes/Types

### OnsetComeupPeakTotalTimeline

```kotlin
data class OnsetComeupPeakTotalTimeline(
    val onset: FullDurationRange?,
    val comeUp: FullDurationRange?,
    val peak: FullDurationRange?,
    val total: FullDurationRange?,
    val onsetWeight: Float,
    val comeUpWeight: Float,
    val peakWeight: Float,
    val totalWeight: Float,
    val percentSmoothness: Float = 0.5f,
    override val nonNormalisedHeight: Float
) : TimelineDrawable
```

#### Properties

- `onset`: A nullable property representing the onset duration of an experience as a `FullDurationRange`.
- `comeUp`: A nullable property representing the come-up duration of an experience as a `FullDurationRange`.
- `peak`: A nullable property representing the peak duration of an experience as a `FullDurationRange`.
- `total`: A nullable property representing the total duration of an experience as a `FullDurationRange`.
- `onsetWeight`: A float value indicating the relative weight or importance of the onset period in the timeline.
- `comeUpWeight`: A float value indicating the relative weight or importance of the come-up period in the timeline.
- `peakWeight`: A float value indicating the relative weight or importance of the peak period in the timeline.
- `totalWeight`: A float value indicating the relative weight or importance of the total duration in the timeline.
- `percentSmoothness`: A float value between 0 and 1 that controls the smoothness of the lines in the timeline. The default value is 0.5f.
- `nonNormalisedHeight`: A property inherited from `TimelineDrawable` that represents the non-normalized height of the timeline.

## Methods/Functions

### drawTimeLine

```kotlin
override fun drawTimeLine(
    drawScope: DrawScope,
    canvasHeight: Float,
    pixelsPerSec: Float,
    color: Color,
    density: Density
)
```

#### Description

This method is overridden from `TimelineDrawable` and is responsible for drawing the actual timeline on a canvas. It takes several parameters:

- `drawScope`: A `DrawScope` object that provides the context for drawing.
- `canvasHeight`: The height of the canvas in pixels.
- `pixelsPerSec`: The number of pixels per second, used to convert time durations into pixel coordinates.
- `color`: The color to use for drawing the timeline.
- `density`: A `Density` object providing density-related information.

### smoothLinesTo

```kotlin
fun Path.startSmoothLineTo(
    smoothnessBetween0And1: Float,
    startX: Float,
    startY: Float,
    endX: Float,
    endY: Float
)

fun Path.endSmoothLineTo(
    smoothnessBetween0And1: Float,
    startX: Float,
    endX: Float,
    endY: Float
)
```

#### Description

These two functions are utility functions used to add smooth lines to a `Path` object. The `startSmoothLineTo` function adds a quadratic Bezier curve from the current point to the specified end point, with control points determined by the `smoothnessBetween0And1` parameter. Similarly, the `endSmoothLineTo` function adds another quadratic Bezier curve but in reverse order.

#### Parameters

- `smoothnessBetween0And1`: A float value between 0 and 1 that controls the smoothness of the line.
- `startX`, `startY`, `endX`, `endY`: Coordinates for the start and end points of the line.

