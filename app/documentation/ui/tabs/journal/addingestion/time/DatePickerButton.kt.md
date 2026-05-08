## DatePickerButton.kt

### Overview

The `DatePickerButton.kt` file contains a composable function for creating a button that opens a date picker dialog when pressed. This is used to allow users to select or update dates within the application's user interface.

### Classes/Types

#### DatePickerButton

- **Purpose**: A composable function that creates a button with an icon and text, opening a date picker dialog upon clicking.
- **Parameters**:
  - `localDateTime`: The current date and time.
  - `onChange`: A lambda function to be called when the date is changed.
  - `dateString`: The formatted date string to display on the button.
  - `modifier`: Modifiers for the button, defaulting to an empty modifier.
  - `hasOutline`: Boolean indicating whether the button should have an outline (default: true).

### Methods/Functions

#### TimePickerButton Composable Function

- **Parameters**:
  - `localDateTime`: The current date and time.
  - `onChange`: A lambda function to be called when the date is changed.
  - `dateString`: The formatted date string to display on the button.
  - `modifier`: Modifiers for the button, defaulting to an empty modifier.
  - `hasOutline`: Boolean indicating whether the button should have an outline (default: true).

- **Implementation**:
  - Uses `LocalContext` to get the current context.
  - Creates a `DatePickerDialog` styled according to the device's theme (`R.style.DialogThemeDark` or `R.style.DialogThemeLight`).
  - Sets up the dialog with the selected date and time, and updates the button's text when a new date is selected.
  - The button can be either an `OutlinedButton` (default) or a `TextButton`, depending on the value of `hasOutline`.

#### TimePickerDialog

- **Description**: A private class used internally within the `DatePickerButton` composable to handle the creation and management of the date picker dialog.

### Usage Context

To use this component, you would typically call the `DatePickerButton` function in your Composable hierarchy. You need to provide the current date and time, a callback for when the date changes, and optionally modify its appearance using the `modifier` parameter. The button will display the current date or a user-selected date, and pressing it will open a dialog where the user can choose a new date.

### Example Usage

```kotlin
DatePickerButton(
    localDateTime = LocalDateTime.now(),
    onChange = { newDate ->
        // Handle the new date
    },
    dateString = "Select Date",
    modifier = Modifier.padding(16.dp),
    hasOutline = false
)
```

This example demonstrates how to include a `DatePickerButton` in your UI, specifying an initial date, a callback for handling date changes, and customizing its appearance with padding.

