# WeightedLine.kt

## Overview

The `WeightedLine.kt` file contains a single data class named `WeightedLine`. This data class is used to represent a line on a timeline with specific start and end times, horizontal weight, and height.

## Classes/Types

### WeightedLine

This data class has the following properties:

- **startTime**: An instance of `Instant` representing the start time of the line.
- **endTime**: An optional instance of `Instant` representing the end time of the line. If not provided (i.e., null), it indicates that the line extends indefinitely to the right.
- **horizontalWeight**: A floating-point number (`Float`) representing the horizontal weight or thickness of the line. This can be used for visual representation purposes, such as adjusting the width of a line on a timeline graph.
- **height**: A floating-point number (`Float`) representing the height or vertical position of the line relative to some reference point. This could be used to layer lines vertically on a single chart or plot.

## Methods/Functions

### Constructor

```kotlin
data class WeightedLine(
    val startTime: Instant,
    val endTime: Instant?,
    val horizontalWeight: Float,
    val height: Float
)
```

The constructor initializes the `startTime`, `endTime`, `horizontalWeight`, and `height` properties with the provided values.

## Example Usage

Here is an example of how you might use the `WeightedLine` class:

```kotlin
import java.time.Instant

fun main() {
    val startTime = Instant.now()
    val endTime = startTime.plusSeconds(3600) // One hour from now
    
    val line1 = WeightedLine(
        startTime = startTime,
        endTime = endTime,
        horizontalWeight = 5f,
        height = 1.2f
    )

    println("Line Start Time: ${line1.startTime}")
    println("Line End Time: ${line1.endTime}")
    println("Horizontal Weight: ${line1.horizontalWeight}")
    println("Height: ${line1.height}")
}
```

This example creates a `WeightedLine` object representing a line that starts now and ends one hour from now, with a horizontal weight of 5 and a height of 1.2.

