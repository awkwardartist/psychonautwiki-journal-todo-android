```markdown
# ToleranceSection.kt

## Overview

The `ToleranceSection` component is used to display information about a substance's tolerance levels and any cross-tolerances it may have. This includes details such as when full tolerance is reached, half tolerance is observed, and when zero tolerance occurs.

## Classes/Types

### ToleranceSection

This is the main composable function that displays the tolerance section for a given substance.

#### Parameters
- **tolerance: Tolerance?**
  - The tolerance information for the substance.
- **crossTolerances: List<String>**
  - A list of substances with which cross-tolerance exists.
- **modifier: Modifier = Modifier**
  - Additional modifiers to apply to the composable.

#### Usage
```kotlin
ToleranceSection(
    tolerance = Tolerance(full = "with prolonged use", half = "two weeks", zero = "1 month"),
    crossTolerances = listOf("dopamine", "stimulant")
)
```

## Methods/Functions

### roundToSignificantDigits

This function rounds a double value to the specified number of significant digits.

#### Parameters
- **value: Double**
  - The value to be rounded.
- **significantDigits: Int**
  - The number of significant digits to keep.

#### Returns
- **Double**: The rounded value.

### formatToMaximumFractionDigits

This function formats a double value to the specified maximum number of fraction digits.

#### Parameters
- **value: Double**
  - The value to be formatted.
- **maximumFractionDigits: Int**
  - The maximum number of fraction digits to include.

#### Returns
- **String**: The formatted value as a string.
```

