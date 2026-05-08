# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/components/RelativeDateTextNew.kt

## Overview

The `RelativeDateTextNew` file contains a Composable function for displaying relative time durations based on the given date-time. This function updates every minute to reflect the current relative time, providing a dynamic and user-friendly display of how long ago an event occurred.

## Classes/Types

### RelativeDateTextNew

- **Type**: Composable Function
- **Purpose**: Displays the relative time duration from a given date-time to the current date-time.

## Methods/Functions

### roundToOneDecimal(num: Double): String

- **Type**: Function
- **Purpose**: Formats a double number to one decimal place.
- **Parameters**:
  - `num`: The double number to format.
- **Returns**: A string representing the formatted number with one decimal place.

### RelativeDateTextNew(dateTime: Instant, style: TextStyle = MaterialTheme.typography.bodyMedium)

- **Type**: Composable Function
- **Purpose**: Displays the relative time duration from a given date-time to the current date-time in a user-friendly format.
- **Parameters**:
  - `dateTime`: The date-time to calculate the relative time for.
  - `style`: The text style to apply to the relative time text. Default is `MaterialTheme.typography.bodyMedium`.
- **Implementation**:
  - Uses a `MutableState` to keep track of the current date-time and updates it every minute using a `LaunchedEffect`.
  - Calculates the duration between the given date-time and the current date-time.
  - Determines the relative time string based on the duration (years, months, weeks, days, hours, minutes).
  - Formats the relative time string and displays it.

## Example Usage

```kotlin
@Preview(showBackground = true)
@Composable
fun RelativeDateTextPreview() {
    Column {
        val dateTime1 = remember { Instant.now().minus(3, ChronoUnit.DAYS) }
        val dateTime2 = remember { Instant.now().minus(5, ChronoUnit.HOURS) }
        val dateTime3 = remember { Instant.now().minus(30, ChronoUnit.MINUTES) }
        RelativeDateTextNew(dateTime = dateTime1)
        RelativeDateTextNew(dateTime = dateTime2)
        RelativeDateTextNew(dateTime = dateTime3)
    }
}
```

## Notes

- The function updates every minute to reflect the current relative time.
- It handles different durations (years, months, weeks, days, hours, minutes) and provides a user-friendly format for the relative time.
- The `roundToOneDecimal` function is used to format numbers to one decimal place for readability.

