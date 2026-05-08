# Overview

The `CurrentDoseClassInfo.kt` file contains a Composable function for displaying information about the dose class of a substance in a user interface. This is used to provide users with details on what a specific dose range means in terms of their experiences.

## Classes/Types

- **CurrentDoseClassInfo**:
  - A Composable function that displays information about the dose class of a substance.
  - Parameters:
    - `doseRange`: A string representing the dose range to be displayed, e.g., "Low", "Medium", "High".
    - `description`: A string providing a description of what the dose range means for the user.

## Methods/Functions

### CurrentDoseClassInfo

```kotlin
@Composable
fun CurrentDoseClassInfo(
    doseRange: String,
    description: String,
)
```

- **Parameters**:
  - `doseRange`: A string representing the dose range to be displayed.
  - `description`: A string providing a description of what the dose range means for the user.

### Description

The function uses a Composable layout to display two pieces of information:

1. The dose range using a `Text` component with a specified style from `MaterialTheme.typography.headlineSmall`.
2. A description of what that dose range means, also displayed using a `Text` component with a default style.

### Example Usage

```kotlin
@Composable
fun MyApp() {
    CurrentDoseClassInfo(
        doseRange = "High",
        description = "Can lead to intense physical and psychological effects."
    )
}
```

In this example, the function is called within another Composable function (`MyApp`) to display information about a high-dose range of a substance. The `doseRange` parameter is set to "High", and the `description` provides a statement about potential effects.

This function serves as a utility for displaying dose-related information clearly and concisely in user interfaces, helping users understand the implications of different doses they might encounter.

