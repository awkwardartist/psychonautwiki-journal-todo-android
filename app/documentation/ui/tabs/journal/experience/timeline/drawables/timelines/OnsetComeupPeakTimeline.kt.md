# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/timeline/drawables/timelines/OnsetComeupPeakTimeline.kt

## Overview

This Kotlin source file is part of a larger application that focuses on visualizing timelines for substances and their effects. Specifically, it contains a class `OnsetComeupPeakTimeline` which implements the interface `TimelineDrawable`. This class is used to create a drawable representing the timeline segment from onset (when the substance enters the body) through come-up (the initial peak of effect) and into early peak. It includes methods for drawing the timeline on a canvas, calculating the end time relative to a given ingestion time, and converting ROA (Route of Administration) durations to full duration ranges.

## Classes/Types

### OnsetComeupPeakTimeline

- **Description:** A class that implements `TimelineDrawable` to draw a segment representing the onset through come-up to early peak of substance effects.
- **Methods:**
  - `drawTimeLine(drawScope: DrawScope, canvasHeight: Float, pixelsPerSec: Float, color: Color, density: Density): Unit`
    - **Description:** Draws the timeline on the provided `DrawScope` with specified parameters.
  - `toFullDurationRange(peakTimeInSeconds: Int): FullDurationRange?`
    - **Description:** Converts a given peak time in seconds to a full duration range, which is used for drawing purposes.
    - **Parameters:**
      - `peakTimeInSeconds (Int): The peak time in seconds to convert into a full duration range."
  - `getEndTimeRelativeToIngestion(ingestionTimeInSeconds: Int, comeUpDuration: Int, peakDuration: Int, comeUpSmoothnessPercent: Float = 0.5f, peakSmoothnessPercent: Float = 1f): Int`
    - **Description:** Calculates the end time relative to the ingestion time based on the substance's onset, come-up duration, and peak duration.
    - **Parameters:**
      - `ingestionTimeInSeconds (Int): The time when the substance was ingested."
      - `comeUpDuration (Int): The duration of the come-up phase in seconds."
      - `peakDuration (Int): The duration of the early peak phase in seconds."
      - `comeUpSmoothnessPercent (Float = 0.5f): The smoothness factor for the come-up phase, with a default value of 0.5."
      - `peakSmoothnessPercent (Float = 1f): The smoothness factor for the peak phase, with a default value of 1."

## Methods/Functions

### drawTimeLine(drawScope: DrawScope, canvasHeight: Float, pixelsPerSec: Float, color: Color, density: Density): Unit

- **Description:** This method is used to draw the timeline segment on a `DrawScope`. It takes several parameters including the drawing scope, canvas height, pixels per second for scaling, a drawing color, and a density object for size calculations.
- **Parameters:**
  - `drawScope (DrawScope): The drawing scope where the timeline will be drawn."
  - `canvasHeight (Float): The height of the canvas in pixels."
  - `pixelsPerSec (Float): The number of pixels that represent one second on the timeline."
  - `color (Color): The color with which to draw the timeline segment."
  - `density (Density): A density object for accurate size calculations."

### toFullDurationRange(peakTimeInSeconds: Int): FullDurationRange?

- **Description:** Converts a given peak time in seconds to a full duration range, which includes onset and come-up times. This is necessary for drawing the timeline correctly.
- **Parameters:**
  - `peakTimeInSeconds (Int): The peak time in seconds."
- **Returns:**
  - `FullDurationRange?`: A full duration range representing the onset, come-up, and early peak phases of the substance's effects.

### getEndTimeRelativeToIngestion(ingestionTimeInSeconds: Int, comeUpDuration: Int, peakDuration: Int, comeUpSmoothnessPercent: Float = 0.5f, peakSmoothnessPercent: Float = 1f): Int

- **Description:** Calculates the end time of the timeline segment relative to when the substance was ingested.
- **Parameters:**
  - `ingestionTimeInSeconds (Int): The time when the substance was ingested."
  - `comeUpDuration (Int): The duration of the come-up phase in seconds."
  - `peakDuration (Int): The duration of the early peak phase in seconds."
  - `comeUpSmoothnessPercent (Float = 0.5f): The smoothness factor for the come-up phase, with a default value of 0.5."
  - `peakSmoothnessPercent (Float = 1f): The smoothness factor for the peak phase, with a default value of 1."
- **Returns:**
  - `Int`: The calculated end time in seconds relative to ingestion.

## Context

For full understanding, you may need context from the related source files such as `TimelineDrawable`, `FullDurationRange`, and how this class is used within the broader application for visualizing substance timelines.

