## Overview

The `FullDurationRange.kt` file contains a data class that represents a full duration range for an experience timeline. This class is utilized by various timeline-related classes to store and manipulate time ranges effectively.

## Classes/Types

### FullDurationRange

- **Description**: A data class representing a full duration range with minimum and maximum time in seconds.
  
  - **Properties**:
    - `minInSeconds`: The minimum time in the range, in seconds.
    - `maxInSeconds`: The maximum time in the range, in seconds.

## Methods/Functions

### interpolateAtValueInSeconds

- **Description**: Interpolates a value between the minimum and maximum times based on a given fraction.
  
  - **Parameters**:
    - `fraction`: A value between 0 and 1 representing the fraction of the total range to interpolate.

  - **Returns**: The interpolated time in seconds.

### toFullDurationRange

- **Description**: Converts a `RoaDuration` object into a `FullDurationRange`.
  
  - **Parameters**:
    - `roaDuration`: A `RoaDuration` object representing the duration to be converted.
  
  - **Returns**: A new `FullDurationRange` object based on the input `RoaDuration`.

## Context

For accurate documentation, additional context related to other classes such as `RoaDuration` or any timeline-related data classes would be beneficial.

