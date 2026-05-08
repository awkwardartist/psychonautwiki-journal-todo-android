# DurationUnits.kt

## Overview

The `DurationUnits` file defines an enumeration that represents various units of time commonly used for describing the duration of psychoactive effects. This enumeration includes different time units such as seconds, minutes, hours, and days. Each unit is associated with its text representation, short text abbreviation, and a multiplier to convert it into seconds.

## Classes/Types

### DurationUnits

This enumeration class represents different units of time used for describing the duration of psychoactive effects.

#### Properties

- **text (String)**: The full name of the time unit.
- **inSecondsMultiplier (Int)**: The multiplier that converts this unit to seconds.
- **shortText (String)**: A short abbreviation of the time unit.

#### Enumerated Values

- **SECONDS**: Represents seconds. Multiplier is 1, short text is "s".
- **MINUTES**: Represents minutes. Multiplier is 60, short text is "m".
- **HOURS**: Represents hours. Multiplier is 3600, short text is "h".
- **DAYS**: Represents days. Multiplier is 86400, short text is "d".

## Methods/Functions

No public methods or functions are defined in this enumeration.

## Usage Context

To use the `DurationUnits` class, you can simply reference it within your code to represent time units such as:

```kotlin
val durationUnit = DurationUnits.MINUTES
println(durationUnit.text) // Outputs: minutes
println(durationUnit.inSecondsMultiplier) // Outputs: 60
println(durationUnit.shortText) // Outputs: m
```

This enumeration is particularly useful in applications that deal with time durations, such as apps related to psychoactive substances where effects are described over different time frames.

