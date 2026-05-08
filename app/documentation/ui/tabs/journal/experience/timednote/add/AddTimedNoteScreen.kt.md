# AddTimedNoteScreen.kt

## Overview

The `AddTimedNoteScreen` file contains a Composable function for adding timed notes within an experience journal application. The screen allows users to input notes, set times, select colors, and mark notes as part of the timeline. It is part of a larger module focused on handling timed note interactions in the application.

## Classes/Types

### AddTimedNoteScreen

**Composable Function**

This Composable function represents the user interface for adding timed notes. It uses Jetpack Compose to build the UI.

- **Parameters:**
  - `viewModel`: An instance of `AddTimedNoteViewModel` used to manage the state and logic of the screen.
  - `navigateBack`: A lambda function to handle the navigation back to the previous screen when the done icon is tapped.

## Methods/Functions

### AddTimedNoteScreen

**Parameters:**
- `viewModel`: An instance of `AddTimedNoteViewModel` used to manage the state and logic of the screen.
- `navigateBack`: A lambda function to handle the navigation back to the previous screen when the done icon is tapped.

**Usage:**
This Composable function is invoked within a parent Composable (likely a Screen or Tab) to render the user interface for adding timed notes. It uses Jetpack Compose's declarative UI model to create the layout, which includes a `Scaffold` with a top app bar and a body containing the note input fields.

- **TopAppBar:**
  - Displays a title "Add timed note".
  - Contains an IconButton on the right side that triggers when the user taps the done icon. On tap, it calls `viewModel.onDoneTap()` to handle saving the note and then calls `navigateBack()` to navigate back to the previous screen.

- **Body:**
  - Displays a custom composable called `TimedNoteScreenContent`.
  - Passes various state variables from the `ViewModel` such as `selectedTime`, `onTimeChange`, `note`, `onNoteChange`, `color`, `onColorChange`, `modifier`, `alreadyUsedColors`, `otherColors`, `isPartOfTimeline`, and `onChangeOfIsPartOfTimeline`.

### TimedNoteScreenContent

**Parameters:**
- `selectedTime`: The currently selected time for the timed note.
- `onTimeChange`: A lambda function to handle changes in the selected time.
- `note`: The current text of the note.
- `onNoteChange`: A lambda function to handle changes in the note text.
- `color`: The currently selected color for the note.
- `onColorChange`: A lambda function to handle changes in the note color.
- `modifier`: Modifier for the content.
- `alreadyUsedColors`: List of colors already used in other notes or substances.
- `otherColors`: List of available colors that are not yet used.
- `isPartOfTimeline`: Boolean indicating if the note should be part of the timeline.
- `onChangeOfIsPartOfTimeline`: Lambda function to handle changes in the isPartOfTimeline state.

**Usage:**
This composable represents the content area of the screen, where users can input their timed notes. It includes UI elements such as text fields for entering the note and selecting the time, a color picker, and a checkbox to mark the note as part of the timeline. The content is styled using Jetpack Compose's Material 3 theme.

### ViewModel

The `AddTimedNoteViewModel` manages the state and logic of the `AddTimedNoteScreen`. It includes properties for various UI states (e.g., `note`, `color`, `isPartOfTimeline`) and methods to handle changes to these states. The ViewModel also interacts with a repository (`ExperienceRepository`) to fetch relevant data (e.g., substance colors, timed notes) and perform database operations.

### Summary

The `AddTimedNoteScreen` file is a crucial part of the application's user interface, focusing on the creation of timed notes within an experience journal. It leverages Jetpack Compose for declarative UI building and interacts with a ViewModel to manage state and logic. This separation allows for clean and testable code, adhering to best practices in Android development.

