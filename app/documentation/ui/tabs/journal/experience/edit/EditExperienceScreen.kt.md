# EditExperienceScreen.kt Documentation

## Overview

The `EditExperienceScreen.kt` file contains a Composable function and its preview for rendering an experience editing screen in a journal app. The screen allows users to edit an existing experience by updating its title, location, and notes. The component is designed to be used within the Jetpack Compose framework.

## Classes/Types

### EditExperienceScreen

**Composable Function:**

```kotlin
@Composable
fun EditExperienceScreen(
    navigateBack: () -> Unit,
    viewModel: EditExperienceViewModel = hiltViewModel()
)
```

- **Parameters:**
  - `navigateBack`: A lambda function that will be called when the user taps the "Done" icon, indicating they have finished editing.
  - `viewModel`: An instance of `EditExperienceViewModel` to manage the state and logic of the screen. Defaults to a Hilt-provided instance.

### EditExperienceScreen

**Composable Function:**

```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun EditExperienceScreen(
    enteredTitle: String,
    onChangeOfEnteredTitle: (String) -> Unit,
    isEnteredTitleOk: Boolean,
    onDoneTap: () -> Unit,
    text: String,
    onTextChange: (String) -> Unit,
    location: String,
    onLocationChange: (String) -> Unit
)
```

- **Parameters:**
  - `enteredTitle`: The current title of the experience.
  - `onChangeOfEnteredTitle`: A lambda function to update the title when it changes.
  - `isEnteredTitleOk`: A boolean indicating whether the title is valid and can be saved.
  - `onDoneTap`: A lambda function to handle the action when the "Done" button is tapped.
  - `text`: The current notes of the experience.
  - `onTextChange`: A lambda function to update the notes when they change.
  - `location`: The current location of the experience.
  - `onLocationChange`: A lambda function to update the location when it changes.

## Methods/Functions

### @Composable EditExperienceScreen(navigateBack: () -> Unit, viewModel: EditExperienceViewModel = hiltViewModel())

This is a Composable function that serves as the main entry point for rendering the experience editing screen. It uses dependency injection to obtain an instance of `EditExperienceViewModel` and invokes another Composable function with the initial state provided by the ViewModel.

### @OptIn(ExperimentalMaterial3Api::class) @Composable EditExperienceScreen(enteredTitle: String, onChangeOfEnteredTitle: (String) -> Unit, isEnteredTitleOk: Boolean, onDoneTap: () -> Unit, text: String, onTextChange: (String) -> Unit, location: String, onLocationChange: (String) -> Unit)

This Composable function builds the UI for the experience editing screen. It uses Jetpack Compose components to create a structured layout with an editable title, location, and notes field.

- **UI Components Used:**
  - `Scaffold`: Provides a structure for the app bar and content.
  - `TopAppBar`: Displays the top navigation bar with a "Done" button if the entered title is valid.
  - `OutlinedTextField`: Text input fields for the title, location, and notes.
  - `IconButton`: Button to trigger the completion of editing.

- **Event Handling:**
  - The `onDoneTap` function is invoked when the user taps the "Done" icon, which saves the updated experience details.
  - Each text field has event handlers (`onChangeOfEnteredTitle`, `onTextChange`, `onLocationChange`) to update the corresponding state variable as the user types.

### @Preview

This annotation marks the `EditExperienceScreen` function that will be used for previewing the UI in the Compose editor. The preview function provides a static example of how the screen should look with some default values for title, text, and location.

## Usage Context

To use this component in your Jetpack Compose application, you would typically include it within another Composable function and pass in the necessary dependencies such as `navigateBack` and a ViewModel instance. The ViewModel manages the data state and interacts with repositories to fetch or save experience details.

For example:

```kotlin
@Composable
fun JournalScreen() {
    val viewModel = hiltViewModel<JournalViewModel>()
    
    // Fetch experiences from the ViewModel
    val experiences by viewModel.experiences.collectAsState()

    Column {
        for (experience in experiences) {
            EditExperienceScreen(
                navigateBack = { /* Handle navigation back */ },
                viewModel = ExperienceViewModel(experienceId = experience.id)
            )
        }
    }
}
```

This example demonstrates how `EditExperienceScreen` could be integrated into a larger journaling application, where it might appear as part of a list of experiences that can be edited.

