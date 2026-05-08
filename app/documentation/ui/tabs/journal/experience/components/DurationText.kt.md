## Overview

The `DurationText.kt` file provides utility functions for calculating and displaying time durations between two `Instant` objects. These functions are essential for rendering duration-related information in user interfaces within a journaling application.

## Classes/Types

### None

The file does not define any classes or types explicitly. Instead, it provides functions that can be used to calculate and format time durations.

## Methods/Functions

### getDurationText(fromInstant: Instant, toInstant: Instant): String

- **Description**: Calculates the duration between two `Instant` objects and formats it as a readable string.
  
- **Parameters**:
  - `fromInstant`: The starting `Instant`.
  - `toInstant`: The ending `Instant`.

- **Return Type**: A string representing the formatted duration.

### getDurationText(fromInstant: Instant, toInstant: Instant, shortFormat: Boolean = false): String

- **Description**: Similar to `getDurationText`, but allows for a shorter format if specified.
  
- **Parameters**:
  - `fromInstant`: The starting `Instant`.
  - `toInstant`: The ending `Instant`.
  - `shortFormat`: A boolean indicating whether to use a short format.

- **Return Type**: A string representing the formatted duration in either full or short format.

### getDurationText(fromInstant: Instant, toInstant: Instant, unit: ChronoUnit): String

- **Description**: Calculates the duration between two `Instant` objects and formats it based on a specified time unit.
  
- **Parameters**:
  - `fromInstant`: The starting `Instant`.
  - `toInstant`: The ending `Instant`.
  - `unit`: A `ChronoUnit` representing the desired unit of measurement.

- **Return Type**: A string representing the formatted duration in the specified unit.

## Usage

To use these functions, simply call them with the appropriate parameters. For example:

```kotlin
val from = Instant.parse("2023-04-01T12:00:00Z")
val to = Instant.now()
val durationText = getDurationText(from, to)
println(durationText)  // Output will vary based on the current time
```

## Context

For accurate usage and understanding of these functions, a basic knowledge of Kotlin's `Instant` and `ChronoUnit` classes is required. Additionally, familiarity with the context in which these functions are used within the application (likely related to displaying times and durations in user interfaces) is beneficial.

