## Overview

The `EditRatingViewModel` file provides a ViewModel for managing the state of an experience rating edit screen in the PsychonautWiki Journal application. The ViewModel is responsible for handling the logic related to loading, updating, and deleting ratings.

### Dependencies

- `ExperienceRepository`: Used to interact with the database for retrieving and updating rating data.
- `SavedStateHandle`: Used to receive arguments passed when navigating to this ViewModel.
- `ShulginRatingOption`: An enumeration representing different options for a Shulgin rating.

### State Management

The ViewModel uses `MutableStateFlow` to manage state, including:
- `selectedRatingOption`: The current selected rating option.
- `localDateTimeFlow`: A flow that emits the selected local date and time.
- `rating`: The currently loaded rating object.
- `isOverallRatingFlow`: Indicates whether the rating being edited is an overall rating.

### Lifecycle

The ViewModel initializes by retrieving arguments from the `SavedStateHandle` to determine the rating ID. It then loads the corresponding rating from the database and sets up initial state values based on this data.

### Methods/Functions

#### `init`

- **Description**: Initializes the ViewModel, loading the rating from the database.
- **Dependencies**: 
  - `experienceRepo`: Used to fetch the rating.
  - `state.toRoute<EditRatingRoute>()`: Extracts the rating ID from navigation arguments.
  
#### `onChangeTime(newLocalDateTime: LocalDateTime)`

- **Description**: Updates the selected local date and time state.
- **Parameters**:
  - `newLocalDateTime`: The new local date and time value to set.

#### `onChangeRating(newRating: ShulginRatingOption)`

- **Description**: Updates the selected rating option state.
- **Parameters**:
  - `newRating`: The new rating option to set.

#### `delete()`

- **Description**: Deletes the currently loaded rating from the database.

#### `onDoneTap()`

- **Description**: Handles the done action, updating the rating in the database with the current state values.
- **Dependencies**: 
  - `localDateTimeFlow`: Used to get the selected instant value if it's not an overall rating.
  
## Classes/Types

### `EditRatingViewModel` (Class)

The primary class of this file. It extends `ViewModel` and provides methods for managing the state and logic of the experience rating edit screen.

- **Properties**:
  - `selectedRatingOption`: A mutable state variable representing the current selected rating option.
  - `localDateTimeFlow`: A flow that emits the selected local date and time.
  - `rating`: The currently loaded rating object.
  - `isOverallRatingFlow`: Indicates whether the rating being edited is an overall rating.

- **Methods**:
  - `init`: Initializes the ViewModel, loading the rating from the database.
  - `onChangeTime(newLocalDateTime: LocalDateTime)`: Updates the selected local date and time state.
  - `onChangeRating(newRating: ShulginRatingOption)`: Updates the selected rating option state.
  - `delete()`: Deletes the currently loaded rating from the database.
  - `onDoneTap()`: Handles the done action, updating the rating in the database with the current state values.

