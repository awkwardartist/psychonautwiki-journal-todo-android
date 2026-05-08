# Overview

The `EditTimedNoteViewModel` class is responsible for managing the state and business logic of the timed note editing screen within the PsychonautWiki Journal application. It utilizes Jetpack Compose for building UI components and interacts with a repository to perform data operations.

# Classes/Types

## EditTimedNoteViewModel

### Summary

The `EditTimedNoteViewModel` class is a ViewModel that handles the state and logic of the timed note editing screen. It provides reactive properties, methods to update the state, and functions to interact with the database.

### Properties

- **note**: A mutable state variable representing the current note content.
- **color**: A mutable state variable representing the current color selected for the note.
- **isPartOfTimeline**: A mutable state variable indicating whether the note is part of a timeline.
- **localDateTimeFlow**: A MutableStateFlow representing the local date and time selected by the user.
- **timedNoteId**: An integer representing the ID of the timed note being edited.

### State Flows

- **alreadyUsedColorsFlow**: A StateFlow that emits a list of colors already used in related experiences or notes.
- **otherColorsFlow**: A StateFlow that emits a list of colors available for selection, excluding those already used.

### Functions/Methods

- **init()**: Initializes the ViewModel by loading the existing timed note data from the repository based on the provided route parameters. Sets up state flows and updates initial values.
- **onChangeTime(newLocalDateTime: LocalDateTime)**: Updates the `localDateTimeFlow` with a new date and time.
- **onChangeIsPartOfTimeline(newIsPartOfTimeline: Boolean)**: Updates the `isPartOfTimeline` property.
- **onChangeNote(newNote: String)**: Updates the `note` property.
- **onChangeColor(newColor: AdaptiveColor)**: Updates the `color` property.
- **delete()**: Deletes the current timed note from the repository.
- **onDoneTap()**: Updates or inserts the current timed note into the repository based on whether it's a new or existing note.

### Dependencies

- **ExperienceRepository**: Used for accessing and manipulating data related to experiences and timed notes.

# Usage Context

To use this ViewModel, you need to provide an instance of `ExperienceRepository` through dependency injection. The ViewModel expects to receive a `SavedStateHandle` to extract route parameters containing the experience ID and timed note ID.

# Example Usage

Here's an example of how you might set up and use this ViewModel within your application:

```kotlin
@HiltViewModel
class EditTimedNoteScreenViewModel @Inject constructor(
    private val experienceRepo: ExperienceRepository,
    state: SavedStateHandle
) : ViewModel() {
    // Initialize the ViewModel as described in the overview section.
}

// In your Composable function, use the hiltViewModel() extension to inject and use the ViewModel:
@Composable
fun EditTimedNoteScreen(viewModel: EditTimedNoteViewModel = hiltViewModel()) {
    // Use viewModel properties and methods to control UI state and interact with the database.
}
```

This setup ensures that your timed note editing screen is well-structured, reactive, and data-driven.

