# FullTimelines.kt Documentation

## Overview

The `FullTimelines.kt` file contains Kotlin classes and functions for drawing various timelines in a user interface, specifically tailored for use within an Android application related to the PsychonautWiki Journal project. These timelines represent different aspects of a substance's effects, such as onset, comeup, peak, come down, and offset.

## Classes/Types

### FullTimelines

This class is not explicitly defined in the provided code. It is assumed that `FullTimelines` refers to a collection or category of timeline classes that could include:

1. **OnsetTimeline**
2. **ComeupTimeline**
3. **PeakTimeline**
4. **ComeDownTimeline**
5. **OffsetTimeline**

### TimelineDrawable

This is an abstract base class representing a drawable object for timelines. It includes properties and methods common to all timeline drawables, such as:

- `referenceHeight`: The reference height of the timeline.
- `endOfLineRelativeToStartInSeconds`: The end time of the timeline relative to the start time.

It also defines an abstract method `drawTimeLine`, which must be implemented by subclasses.

### OnsetTimeline

This class extends `TotalTimeline` and represents the onset phase of a substance's effects. It inherits properties and methods from `TotalTimeline`.

### ComeupTimeline

This class extends `TotalTimeline` and represents the comeup phase of a substance's effects. It inherits properties and methods from `TotalTimeline`.

### PeakTimeline

This class extends `TotalTimeline` and represents the peak phase of a substance's effects. It inherits properties and methods from `TotalTimeline`.

### ComeDownTimeline

This class extends `TotalTimeline` and represents the come down phase of a substance's effects. It inherits properties and methods from `TotalTimeline`.

### OffsetTimeline

This class extends `TotalTimeline` and represents the offset phase of a substance's effects. It inherits properties and methods from `TotalTimeline`.

## Methods/Functions

### FullTimelines.toOnsetTimeline

- **Parameters**:
  - `totalWeight`: A Float representing the weight or intensity of the total effect.
  - `ingestionTimeRelativeToStartInSeconds`: A Float representing the time relative to the start when the substance was ingested.
  - `nonNormalisedHeight`: A Float representing the non-normalized height of the timeline.

- **Return Type**: `OnsetTimeline?`

- **Description**: This function converts a RoaDuration object into an OnsetTimeline object. If the RoaDuration object is not null, it creates and returns an OnsetTimeline object; otherwise, it returns null.

### FullTimelines.toComeupTimeline

- **Parameters**:
  - `totalWeight`: A Float representing the weight or intensity of the total effect.
  - `ingestionTimeRelativeToStartInSeconds`: A Float representing the time relative to the start when the substance was ingested.
  - `nonNormalisedHeight`: A Float representing the non-normalized height of the timeline.

- **Return Type**: `ComeupTimeline?`

- **Description**: This function converts a RoaDuration object into a ComeupTimeline object. If the RoaDuration object is not null, it creates and returns a ComeupTimeline object; otherwise, it returns null.

### FullTimelines.toPeakTimeline

- **Parameters**:
  - `totalWeight`: A Float representing the weight or intensity of the total effect.
  - `ingestionTimeRelativeToStartInSeconds`: A Float representing the time relative to the start when the substance was ingested.
  - `nonNormalisedHeight`: A Float representing the non-normalized height of the timeline.

- **Return Type**: `PeakTimeline?`

- **Description**: This function converts a RoaDuration object into a PeakTimeline object. If the RoaDuration object is not null, it creates and returns a PeakTimeline object; otherwise, it returns null.

### FullTimelines.toComeDownTimeline

- **Parameters**:
  - `totalWeight`: A Float representing the weight or intensity of the total effect.
  - `ingestionTimeRelativeToStartInSeconds`: A Float representing the time relative to the start when the substance was ingested.
  - `nonNormalisedHeight`: A Float representing the non-normalized height of the timeline.

- **Return Type**: `ComeDownTimeline?`

- **Description**: This function converts a RoaDuration object into a ComeDownTimeline object. If the RoaDuration object is not null, it creates and returns a ComeDownTimeline object; otherwise, it returns null.

### FullTimelines.toOffsetTimeline

- **Parameters**:
  - `totalWeight`: A Float representing the weight or intensity of the total effect.
  - `ingestionTimeRelativeToStartInSeconds`: A Float representing the time relative to the start when the substance was ingested.
  - `nonNormalisedHeight`: A Float representing the non-normalized height of the timeline.

- **Return Type**: `OffsetTimeline?`

- **Description**: This function converts a RoaDuration object into an OffsetTimeline object. If the RoaDuration object is not null, it creates and returns an OffsetTimeline object; otherwise, it returns null.

## context

To provide accurate documentation for the methods `toOnsetTimeline`, `toComeupTimeline`, `toPeakTimeline`, `toComeDownTimeline`, and `toOffsetTimeline`, we need additional context regarding the specific properties of the `RoaDuration` class and how it is used to define the duration phases (onset, comeup, peak, come down, offset) of a substance. This information would help in understanding how the timelines are constructed based on the duration data provided by the user or from other sources within the application.

