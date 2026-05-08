# ExplainTimelineScreen.kt

## Overview

The `ExplainTimelineScreen` class provides a user interface for displaying a timeline of drug experiences. It includes visual elements such as ingestion dots, lines connecting these points, and labels describing the duration of each experience.

## Classes/Types

### ExplainTimelineScreen (Composable Function)

#### Description

This composable function is responsible for rendering the timeline screen. It takes several parameters to customize its appearance and behavior:

- `onIngestionDotClicked`: A lambda that handles clicks on ingestion dots.
- `drugList`: A list of drug experiences to be displayed on the timeline.

### DrugExperience (Data Class)

#### Description

This data class represents a single drug experience and contains information about it, including the substance name, route of administration, and associated ROA profile.

### ROADuration (Data Class)

#### Description

This data class represents the route of administration duration for a drug experience. It includes properties for onset, come-up, peak, offset, total duration, and afterglow period.

## Methods/Functions

### onIngestionDotClicked (Extension Function)

#### Description

This extension function is used to handle clicks on ingestion dots within the `ExplainTimelineScreen` composable. When a dot is clicked, it triggers an action defined by the provided lambda.

#### Parameters

- `dot`: The dot that was clicked.
- `lambda`: The action to be executed when the dot is clicked.

### drawWeightedLine (Extension Function)

#### Description

This extension function draws a weighted line on the canvas. The line's start and end times, horizontal weight, and height are passed as parameters.

#### Parameters

- `line`: A `WeightedLine` object containing the necessary properties to draw the line.
- `onDrawn`: A callback that is executed after the line has been drawn.

### drawIngestionDot (Extension Function)

#### Description

This extension function draws an ingestion dot on the canvas. The dot's center coordinates, color, and radius are passed as parameters.

#### Parameters

- `center`: The center point of the dot.
- `color`: The color of the dot.
- `radius`: The radius of the dot.

### drawExplainTimeline (Extension Function)

#### Description

This extension function draws the entire timeline on the canvas. It takes a list of drug experiences as a parameter and renders them according to their ROA profiles.

#### Parameters

- `drugsList`: A list of drug experiences to be rendered on the timeline.
- `onDrawn`: A callback that is executed after the timeline has been drawn.

### drawLabels (Extension Function)

#### Description

This extension function draws labels on the canvas, typically indicating the substance names and their durations. It takes a list of drug experiences as a parameter and renders them based on specified conditions.

#### Parameters

- `drugsList`: A list of drug experiences to be labeled.
- `onDrawn`: A callback that is executed after the labels have been drawn.

### drawVerticalGridLines (Extension Function)

#### Description

This extension function draws vertical grid lines on the canvas, providing a visual reference for time intervals. It takes an interval as a parameter and renders lines at regular intervals along the timeline.

#### Parameters

- `interval`: The time interval between each grid line.
- `onDrawn`: A callback that is executed after the grid lines have been drawn.

### drawHorizontalLines (Extension Function)

#### Description

This extension function draws horizontal lines on the canvas, representing the height of the drug experience lines. It takes a list of drug experiences as a parameter and renders lines at specified heights.

#### Parameters

- `drugsList`: A list of drug experiences to be used for determining line heights.
- `onDrawn`: A callback that is executed after the horizontal lines have been drawn.

### drawBackground (Extension Function)

#### Description

This extension function draws the background of the canvas, providing a visual context for the timeline. It takes a color as a parameter and fills the canvas with the specified color.

#### Parameters

- `color`: The color to fill the canvas with.
- `onDrawn`: A callback that is executed after the background has been drawn.

### drawIngestionDots (Extension Function)

#### Description

This extension function draws ingestion dots on the canvas, representing the start of each drug experience. It takes a list of drug experiences as a parameter and renders dots at their respective start times.

#### Parameters

- `drugsList`: A list of drug experiences to be used for determining dot positions.
- `onDrawn`: A callback that is executed after the ingestion dots have been drawn.

### drawVerticalLines (Extension Function)

#### Description

This extension function draws vertical lines on the canvas, providing a visual reference for time intervals. It takes an interval as a parameter and renders lines at regular intervals along the timeline.

#### Parameters

- `interval`: The time interval between each vertical line.
- `onDrawn`: A callback that is executed after the vertical lines have been drawn.

### drawIngestionDotLabels (Extension Function)

#### Description

This extension function draws labels on ingestion dots, typically indicating the substance names. It takes a list of drug experiences as a parameter and renders labels at their respective start times.

#### Parameters

- `drugsList`: A list of drug experiences to be labeled.
- `onDrawn`: A callback that is executed after the dot labels have been drawn.

### drawLines (Extension Function)

#### Description

This extension function draws lines on the canvas, representing the duration of each drug experience. It takes a list of drug experiences as a parameter and renders lines based on their ROA profiles.

#### Parameters

- `drugsList`: A list of drug experiences to be used for determining line positions and durations.
- `onDrawn`: A callback that is executed after the lines have been drawn.

### drawVerticalGridLines (Extension Function)

#### Description

This extension function draws vertical grid lines on the canvas, providing a visual reference for time intervals. It takes an interval as a parameter and renders lines at regular intervals along the timeline.

#### Parameters

- `interval`: The time interval between each vertical line.
- `onDrawn`: A callback that is executed after the vertical grid lines have been drawn.

### drawHorizontalLines (Extension Function)

#### Description

This extension function draws horizontal lines on the canvas, representing the height of the drug experience lines. It takes a list of drug experiences as a parameter and renders lines at specified heights.

#### Parameters

- `drugsList`: A list of drug experiences to be used for determining line heights.
- `onDrawn`: A callback that is executed after the horizontal lines have been drawn.

