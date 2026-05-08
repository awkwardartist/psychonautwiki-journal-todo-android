# Bioavailability Documentation

## Overview

The `Bioavailability` class represents the effectiveness of a substance being absorbed into the bloodstream after administration through various routes (e.g., oral, intravenous). It includes properties for the minimum and maximum bioavailability ranges, providing a quantitative measure of how well the substance is being utilized by the body.

## Classes/Types

### Bioavailability

```kotlin
data class Bioavailability(
    val min: Double?,
    val max: Double?
)
```

#### Properties

- **min (Double?)**: The minimum bioavailability percentage.
- **max (Double?)**: The maximum bioavailability percentage.

## Methods/Functions

No specific methods or functions are defined within the `Bioavailability` class. It serves as a data container to hold bioavailability information without any business logic or processing capabilities.

## Context

For more comprehensive documentation, additional context about how this class is used in conjunction with other parts of the system, such as dose-response relationships and pharmacokinetics, would be beneficial.

