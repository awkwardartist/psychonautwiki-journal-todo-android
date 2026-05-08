# AddRatingScreen.kt

This Kotlin file is part of the PsychonautWiki Journal project and contains the UI component for adding a Shulgin rating for an experience.

## Overview

The `AddRatingScreen` composable function provides a user interface for adding or editing a rating for a specific experience. It includes options to select a time, a rating option, and whether the rating is overall or not. The screen also has a floating action button that triggers when the user is done with the rating.

## Classes/Types

### AddRatingScreen

- **Purpose**: This function represents the UI component for adding or editing a Shulgin rating.
- **Parameters**:
  - `viewModel: AddRatingViewModel`: An instance of the view model to handle business logic and data state.
  - `navigateBack: () -> Unit`: A lambda function that gets called when the user wants to navigate back.

### AddRatingScreen (Overloaded)

- **Purpose**: This overloaded version of the `AddRatingScreen` function is intended for use in a preview environment.
- **Parameters**:
  - `onDone: () -> Unit`: A lambda function that gets called when the user taps the done button.
  - `selectedTime: LocalDateTime`: The currently selected time.
  - `onTimeChange: (LocalDateTime) -> Unit`: A lambda function that gets called when the user changes the selected time.
  - `selectedRating: ShulginRatingOption`: The currently selected rating option.
  - `onRatingChange: (ShulginRatingOption) -> Unit`: A lambda function that gets called when the user changes the selected rating.
  - `canAddOverallRating: Boolean`: A boolean indicating whether an overall rating can be added.
  - `isOverallRating: Boolean`: A boolean indicating whether the current rating is overall.
  - `onChangeIsOverallRating: (Boolean) -> Unit`: A lambda function that gets called when the user changes the overall rating status.

### ShulginRatingOption

- **Purpose**: An enum class representing different rating options available in the UI. The values include:
  - `ONE`: Rating option for one star.
  - `ONE_PLUS`: Rating option for one and a half stars.
  - `TWO`: Rating option for two stars.
  - `TWO_PLUS`: Rating option for two and a half stars.
  - `THREE`: Rating option for three stars.
  - `THREE_PLUS`: Rating option for three and a half stars.

## Methods/Functions

### onDone

- **Purpose**: This function is called when the user taps the done button. It triggers actions to save the rating, such as inserting it into the database and navigating back if applicable.
- **Parameters**:
  - `selectedInstant: Instant?`: The selected instant (time) for the rating. If null, it indicates an overall rating.

### onChangeTime

- **Purpose**: This function is called when the user changes the selected time.
- **Parameters**:
  - `newLocalDateTime: LocalDateTime`: The new local date and time to be set as the selected time.

### onChangeRating

- **Purpose**: This function is called when the user changes the selected rating option.
- **Parameters**:
  - `newRating: ShulginRatingOption`: The new rating option to be set as the selected rating.

### AddRatingScreenPreview

- **Purpose**: A preview function for the `AddRatingScreen` component. It provides a static preview of how the screen will look under certain conditions.

## Usage Context

This file is part of a larger application for managing drug experiences, and it relies on specific models, repositories, and view models (like `ShulginRating`, `ExperienceRepository`, and `AddRatingViewModel`) to function correctly. The usage of Jetpack Compose and Hilt for dependency injection ensures that the UI components are properly integrated with the data handling logic.

## Notes

- The file includes a preview function (`AddRatingScreenPreview`) to facilitate visual verification during development.
- The code is designed to be modular, with clear separation between the UI layer and the business logic handled by the view model.

