# GroupDrawable.kt

## Overview

`GroupDrawable.kt` contains a class `GroupDrawable` that implements the `TimelineDrawable` interface. This class is responsible for managing and drawing multiple `TimelineDrawable` instances to represent different aspects of a substance's effects over time.

## Classes/Types

### GroupDrawable

#### Description

The `GroupDrawable` class manages a list of `TimelineDrawable` instances, each representing a specific aspect or type of effect (e.g., onset, comeup, peak, offset) of a substance. It also manages time range drawings that cover multiple points of ingestion.

#### Properties

- **timelineDrawables**: A list of `TimelineDrawable` instances.
- **timeRangeDrawables**: A list of `TimeRangeDrawable` instances, each representing a range of effects for multiple points of ingestion.
- **nonNormalisedMaxOfRoute**: The maximum non-normalized height across all managed drawables.

#### Methods/Functions

##### init(weightedLines: List<WeightedLine>, roaDuration: RoaDuration?)

Initializes the `GroupDrawable` with a list of weighted lines and an optional `RoaDuration`.

- **Parameters**:
  - `weightedLines`: A list of `WeightedLine` instances, each representing a timeline segment.
  - `roaDuration`: An optional `RoaDuration` instance containing details about the substance's effects over time.

##### normaliseHeight(overallMaxHeight: Float)

Normalizes the height of all managed drawables based on an overall maximum height.

- **Parameters**:
  - `overallMaxHeight`: The overall maximum height to normalize against.

##### drawTimeLine(drawScope: DrawScope, canvasHeight: Float, pixelsPerSec: Float, color: Color, density: Density)

Draws all managed drawables on the provided `drawScope`.

- **Parameters**:
  - `drawScope`: The `DrawScope` to draw on.
  - `canvasHeight`: The height of the canvas in pixels.
  - `pixelsPerSec`: The number of pixels per second for scaling.
  - `color`: The color to use for drawing.
  - `density`: The density of the display.

##### endOfLineRelativeToStartInSeconds

Calculates the end time relative to the start of the graph for all managed drawables.

## Methods/Functions

### init(weightedLines: List<WeightedLine>, roaDuration: RoaDuration?)

Initializes the `GroupDrawable` with a list of weighted lines and an optional `RoaDuration`.

- **Parameters**:
  - `weightedLines`: A list of `WeightedLine` instances, each representing a timeline segment.
  - `roaDuration`: An optional `RoaDuration` instance containing details about the substance's effects over time.

### normaliseHeight(overallMaxHeight: Float)

Normalizes the height of all managed drawables based on an overall maximum height.

- **Parameters**:
  - `overallMaxHeight`: The overall maximum height to normalize against.

### drawTimeLine(drawScope: DrawScope, canvasHeight: Float, pixelsPerSec: Float, color: Color, density: Density)

Draws all managed drawables on the provided `drawScope`.

- **Parameters**:
  - `drawScope`: The `DrawScope` to draw on.
  - `canvasHeight`: The height of the canvas in pixels.
  - `pixelsPerSec`: The number of pixels per second for scaling.
  - `color`: The color to use for drawing.
  - `density`: The density of the display.

### endOfLineRelativeToStartInSeconds

Calculates the end time relative to the start of the graph for all managed drawables.

