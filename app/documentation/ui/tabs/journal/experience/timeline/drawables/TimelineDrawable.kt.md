# TimelineDrawable.kt

## Overview

The `TimelineDrawable.kt` file contains an interface that defines a contract for drawable objects within a timeline visualization component in a Kotlin-based Android application. This interface is crucial for creating reusable, customizable drawing functionalities tailored to the specific needs of various types of timelines.

## Classes/Types

### TimelineDrawable Interface

#### Purpose

The `TimelineDrawable` interface specifies a common set of methods that any drawable object used within a timeline must implement. This includes drawing the timeline on a canvas and retrieving properties such as non-normalized height and end time relative to the start.

#### Usage

Developers extend this interface in their custom drawable classes to provide specific implementations for drawing timelines, allowing for a high degree of customization while maintaining a consistent API across different types of timelines.

#### Key Members

- `drawTimeLine(drawScope: DrawScope, canvasHeight: Float, pixelsPerSec: Float, color: Color, density: Density)`: Abstract method that defines how to draw the timeline on a canvas.
  - **Parameters**:
    - `drawScope`: The drawing scope provided by Jetpack Compose for rendering.
    - `canvasHeight`: The height of the canvas where the timeline will be drawn.
    - `pixelsPerSec`: The number of pixels per second, used to convert time-based data into drawable coordinates.
    - `color`: The color used to draw the timeline.
    - `density`: The density of the display, useful for pixel density-independent drawing.

- `nonNormalisedHeight: Float`: Property that represents the non-normalized height of the drawable. This is typically used to calculate the overall height of the timeline in a context where multiple timelines might be displayed side-by-side or stacked vertically.
  
- `referenceHeight: Float`: Mutable property that holds the reference height for normalization purposes. This allows different parts of the application to set and manage a common height reference, which can then be applied to all drawable objects within that context.

- `endOfLineRelativeToStartInSeconds: Float`: Property that calculates and returns the end time relative to the start in seconds. This is useful for determining the maximum width or duration of any timeline component within its parent container.

### Classes Implementing TimelineDrawable

While not explicitly detailed in this file, typical classes implementing the `TimelineDrawable` interface might include:

- **OnsetComeupPeakTotalTimeline**: Represents a drawable object that shows the onset, comeup, peak, and total effects of a substance over time.
- **NoTimeline**: A placeholder or default implementation for drawables that do not represent any actual data but are necessary for layout purposes.

## Methods/Functions

### drawTimeLine(drawScope: DrawScope, canvasHeight: Float, pixelsPerSec: Float, color: Color, density: Density)

**Purpose**

This abstract method must be implemented by any class that implements the `TimelineDrawable` interface. It is responsible for rendering the timeline on a given canvas with specified parameters.

**Parameters**

- `drawScope`: The drawing scope provided by Jetpack Compose.
- `canvasHeight`: The height of the canvas where the timeline will be drawn.
- `pixelsPerSec`: Conversion factor from seconds to pixels, useful for time-based data visualization.
- `color`: Color used to draw the timeline.
- `density`: Display density, essential for drawing that respects pixel density independence.

**Usage**

Developers will provide their custom implementation of this method, using Jetpack Compose's drawing capabilities and the provided parameters to render timelines according to specific requirements.

### nonNormalisedHeight: Float

**Purpose**

This read-only property represents the non-normalized height of the drawable object. It is used to calculate the overall height of the timeline in a context where multiple timelines might be displayed side-by-side or stacked vertically.

**Usage**

Developers can access this property to understand how high each drawable should be drawn, which can then be normalized according to the overall height of the timeline container if needed.

### referenceHeight: Float

**Purpose**

This mutable property holds a reference height for normalization purposes. It allows different parts of the application to set and manage a common height reference, which can then be applied to all drawable objects within that context.

**Usage**

Developers will typically set this property before drawing timelines within a specific context (e.g., in an adapter or fragment) to ensure consistency in height across multiple drawables.

### endOfLineRelativeToStartInSeconds: Float

**Purpose**

This read-only property calculates and returns the end time relative to the start in seconds. This is useful for determining the maximum width or duration of any timeline component within its parent container.

**Usage**

Developers can access this property to determine how wide each drawable should be drawn, which can help in calculating layout parameters such as padding or margin.

## Context

For a complete understanding of how `TimelineDrawable` and related classes are used within the application, additional context from other files such as `GroupedDrawables.kt`, `RoaDuration.kt`, and various drawable implementations (`OnsetComeupPeakTotalTimeline`, etc.) would be required. These files provide the full scope of how timelines are managed, data is processed for visualization, and how different types of drawables interact to form a comprehensive timeline representation.

