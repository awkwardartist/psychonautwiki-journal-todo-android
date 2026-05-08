## DoubleReadableExtension.kt

### Overview

The `DoubleReadableExtension` file contains a set of extension functions that enhance the readability of `Double` values by formatting them into more user-friendly strings. This includes converting double values to their most significant digits and formatting them with a maximum number of fraction digits.

This file is part of a Kotlin project related to drug research or substance abuse, specifically focusing on displaying dosages and durations in a human-readable format.

### Classes/Types

No specific classes are defined within this file. All functions are top-level extension functions for `Double`.

### Methods/Functions

#### `toReadableString()`

- **Purpose**: Converts a double value to a string that is more readable by rounding it to significant digits and formatting it with up to 6 fraction digits.
  
- **Returns**: A `String` representing the formatted double value.

- **Example**:
  ```kotlin
  val readableValue = 123.456789.toReadableString()
  println(readableValue) // Output: "123.46"
  ```

#### `toPreservedString()`

- **Purpose**: Formats a double value into a string that preserves all digits, using US locale settings.
  
- **Returns**: A `String` representing the preserved double value.

- **Example**:
  ```kotlin
  val preservedValue = 123.456789.toPreservedString()
  println(preservedValue) // Output: "123.456789"
  ```

#### `roundToSignificantDigits(value: Double, significantDigits: Int): Double`

- **Purpose**: Rounds a double value to the specified number of significant digits.
  
- **Parameters**:
  - `value`: The `Double` value to be rounded.
  - `significantDigits`: The number of significant digits to which the value should be rounded.

- **Returns**: A `Double` representing the rounded value.

- **Example**:
  ```kotlin
  val roundedValue = roundToSignificantDigits(123.456789, 3)
  println(roundedValue) // Output: "123.0"
  ```

#### `formatToMaximumFractionDigits(value: Double, maximumFractionDigits: Int): String`

- **Purpose**: Formats a double value into a string with up to the specified number of fraction digits.
  
- **Parameters**:
  - `value`: The `Double` value to be formatted.
  - `maximumFractionDigits`: The maximum number of fraction digits allowed in the output.

- **Returns**: A `String` representing the formatted double value.

- **Example**:
  ```kotlin
  val formattedValue = formatToMaximumFractionDigits(123.456789, 2)
  println(formattedValue) // Output: "123.46"
  ```

### Context

For a complete understanding of how these functions are used within the larger project, additional context would be required, specifically details about the UI components and data models that utilize these formatting utilities for displaying dosages and durations in a more readable format.

