# AddTimedNoteViewModel.kt

## Overview

`AddTimedNoteViewModel.kt` contains a ViewModel for managing the state and logic related to adding timed notes within an experience journal application. This ViewModel interacts with a repository to retrieve relevant data and manages user inputs such as time, note content, color, and whether the note is part of a timeline.

## Classes/Types

### `AddTimedNoteViewModel`

- **Purpose**: Manages the state and logic for adding timed notes.
  
  - **Properties**:
    - `note`: MutableStateFlow representing the current note content.
    - `color`: MutableStateFlow representing the selected color for the note.
    - `isPartOfTimeline`: MutableStateFlow indicating whether the note is part of a timeline.
    - `experienceId`: ID of the experience associated with the timed note.
    - `localDateTimeFlow`: MutableStateFlow containing the current local date and time.
    - `alreadyUsedColors`: List of colors already used in related substances or notes.
    - `otherColors`: List of available colors not yet used.

  - **Methods/Functions**:
    - `onChangeTime(newLocalDateTime: LocalDateTime)`: Updates the local date and time when the user changes it.
    - `onChangeIsPartOfTimeline(newIsPartOfTimeline: Boolean)`: Updates whether the note is part of a timeline.
    - `onChangeNote(newNote: String)`: Updates the note content when the user types in it.
    - `onChangeColor(newColor: AdaptiveColor)`: Updates the selected color for the note.
    - `onDoneTap()`: Inserts the new timed note into the database if the note is not empty.

- **Dependencies**:
  - `ExperienceRepository`: Used to interact with the database and retrieve data related to experiences and notes.
  - `AdaptiveColor`: Enum representing different color options for notes.
  - `TimedNote`: Entity representing a timed note in the journal.

## Methods/Functions

### `onChangeTime(newLocalDateTime: LocalDateTime)`

- **Purpose**: Updates the local date and time when the user changes it.

- **Parameters**:
  - `newLocalDateTime`: The new local date and time to be set.

- **Implementation**: Emits the new local date and time into `localDateTimeFlow`.

### `onChangeIsPartOfTimeline(newIsPartOfTimeline: Boolean)`

- **Purpose**: Updates whether the note is part of a timeline.

- **Parameters**:
  - `newIsPartOfTimeline`: The new value indicating whether the note should be part of a timeline.

- **Implementation**: Sets the `isPartOfTimeline` property to the new value.

### `onChangeNote(newNote: String)`

- **Purpose**: Updates the note content when the user types in it.

- **Parameters**:
  - `newNote`: The new note content to be set.

- **Implementation**: Sets the `note` property to the new value.

### `onChangeColor(newColor: AdaptiveColor)`

- **Purpose**: Updates the selected color for the note.

- **Parameters**:
  - `newColor`: The new color to be set.

- **Implementation**: Sets the `color` property to the new value.

### `onDoneTap()`

- **Purpose**: Inserts the new timed note into the database if the note is not empty.

- **Implementation**:
  - Checks if the note content is not blank.
  - If valid, constructs a new `TimedNote` entity with current date and time, creation date, note content, color, experience ID, and timeline status.
  - Inserts the new timed note into the database using the `ExperienceRepository`.

## Dependencies

- **`ExperienceRepository`**: Used to interact with the database and retrieve data related to experiences and notes.
- **`AdaptiveColor`**: Enum representing different color options for notes.
- **`TimedNote`**: Entity representing a timed note in the journal.

