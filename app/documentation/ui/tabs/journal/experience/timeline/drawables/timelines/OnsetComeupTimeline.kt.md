# OnsetComeupTimeline.kt

## Overview

The `OnsetComeupTimeline` class is designed to represent a graphical timeline of the onset and comeup phases of drug effects on a user interface. It extends the `TimelineDrawable` abstract base class, which provides a common framework for drawing timelines in the application.

This specific class focuses on visualizing the period from when a substance is consumed until the peak effect (onset) and the subsequent build-up of effects (comeup). It allows customization through parameters such as the total duration of the drug effects, the weight or emphasis to place on the onset and comeup phases, and the height of the timeline.

## Classes/Types

### OnsetComeupTimeline : TimelineDrawable

#### Properties

- **total : FullDurationRange?** - The total duration of the drug effects. If `null`, this property is ignored.
- **comeupWeight : Float = 0.5f** - The weight or emphasis to place on the comeup phase, ranging from 0.0 to 1.0. Defaults to 0.5.
- **onsetComeupPercentSmoothness : Float = 0.3f** - The smoothness of the curve for both the onset and comeup phases, ranging from 0.0 to 1.0. Defaults to 0.3.
- **ingestionTimeRelativeToStartInSeconds : Float** - The time at which the drug was ingested relative to the start time of the effects timeline, measured in seconds.
- **nonNormalisedHeight : Float** - The non-normalized height of the timeline.

#### Methods/Functions

1. **constructor(total : FullDurationRange?, comeupWeight : Float = 0.5f, onsetComeupPercentSmoothness : Float = 0.3f, ingestionTimeRelativeToStartInSeconds : Float, nonNormalisedHeight : Float)** - Initializes a new instance of `OnsetComeupTimeline`.

2. **drawTimeLine(drawScope : DrawScope, canvasHeight : Float, pixelsPerSec : Float, color : Color, density : Density)** - Draws the timeline using the provided draw scope and parameters. This method is responsible for rendering the onset and comeup phases on the user interface.

## Methods/Functions

### constructor(total : FullDurationRange?, comeupWeight : Float = 0.5f, onsetComeupPercentSmoothness : Float = 0.3f, ingestionTimeRelativeToStartInSeconds : Float, nonNormalisedHeight : Float)

- **Parameters:**
  - `total : FullDurationRange?`: The total duration of the drug effects.
  - `comeupWeight : Float = 0.5f`: The weight or emphasis to place on the comeup phase.
  - `onsetComeupPercentSmoothness : Float = 0.3f`: The smoothness of the curve for both the onset and comeup phases.
  - `ingestionTimeRelativeToStartInSeconds : Float`: The time at which the drug was ingested relative to the start time of the effects timeline, measured in seconds.
  - `nonNormalisedHeight : Float`: The non-normalized height of the timeline.

### drawTimeLine(drawScope : DrawScope, canvasHeight : Float, pixelsPerSec : Float, color : Color, density : Density)

- **Parameters:**
  - `drawScope : DrawScope`: The scope for drawing the timeline.
  - `canvasHeight : Float`: The height of the canvas on which the timeline will be drawn.
  - `pixelsPerSec : Float`: The number of pixels per second in the timeline.
  - `color : Color`: The color to use when drawing the timeline.
  - `density : Density`: The density of the display.

- **Description:** Draws the onset and comeup phases on the user interface using the provided draw scope and parameters. This method calculates the positions and shapes of the onset and comeup curves based on the given properties and then renders them on the canvas.

