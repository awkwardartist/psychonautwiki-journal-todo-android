```markdown
# TimeRangeDrawable.kt

## Overview

The `TimeRangeDrawable` class provides functionality for drawing time ranges with specific styling and properties. It is part of a larger system designed to visually represent data related to substance ingestion timelines, including onset, comeup, peak, and offset durations.

This class includes nested classes and functions that facilitate the creation and rendering of these complex time ranges, as well as utility methods to handle the conversion between different types of timelines.

## Classes/Types

### TimeRangeDrawable

- **Description**: Represents a drawable object for visualizing a specific time range in a substance ingestion timeline.
  
  - **Properties**:
    - `color`: The color used for rendering the time range.
    - `ingestionStartInSeconds`: The start time of the ingestion in seconds relative to some reference point.
    - `ingestionEndInSeconds`: The end time of the ingestion in seconds relative to the same reference point.
    - `intersectionCountWithPreviousRanges`: The number of intersections with previous time ranges, used for styling purposes.

  - **Nested Type**: `IntermediateRepresentation`
  
### FullTimelineDurations

- **Description**: Represents a set of durations associated with different stages of substance ingestion (onset, comeup, peak, and offset).
  
  - **Properties**:
    - `onsetInSeconds`: Duration from the start to the onset stage.
    - `comeupInSeconds`: Duration from the onset to the comeup stage.
    - `peakInSeconds`: Duration from the comeup to the peak stage.
    - `offsetInSeconds`: Duration from the peak to the offset stage.

## Methods/Functions

### toFullTimelineDurations

- **Description**: Converts a RoaDuration object into a FullTimelineDurations object by interpolating at specific values (0.5 for this example).

- **Parameters**:
  - `RoaDuration`: The input RoaDuration object containing different stages of substance ingestion.

- **Return Value**:
  - A FullTimelineDurations object if all required durations are non-null; otherwise, null.
  
- **Example Usage**:
  ```kotlin
  val roaDuration = ... // Assume this is a valid RoaDuration object
  val fullTimelineDurations = roaDuration.toFullTimelineDurations()
  ```

## Notes

For more context on how these classes and methods are used within the larger system, please refer to the related source files and documentation.
```

