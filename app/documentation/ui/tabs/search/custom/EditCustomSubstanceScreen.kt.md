# EditCustomSubstanceScreen.kt

## Overview

The `EditCustomSubstanceScreen.kt` file contains the implementation of a screen that allows users to edit custom substances within an application. This screen includes functionality for editing substance details, such as name, units, and description. It also provides options to delete a substance.

## Classes/Types

### EditCustomSubstanceScreen

This is a composable function representing the main screen for editing a custom substance. It is annotated with `@OptIn(ExperimentalMaterial3Api::class)` to indicate its use of experimental Material 3 APIs.

#### Parameters:

- `navigateBack: () -> Unit`: A lambda function that specifies what should happen when the user navigates back from this screen.
  
### EditCustomSubstanceViewModel

This is a ViewModel class for managing the state and logic related to editing custom substances. It is annotated with `@HiltViewModel` to indicate its use of Hilt dependency injection.

#### Parameters:

- `experienceRepo: ExperienceRepository`: The repository responsible for accessing experience data, such as custom substances.
- `state: SavedStateHandle`: A handle to the saved state of the current screen.

## Methods/Functions

### EditCustomSubstanceScreen

This composable function is the main entry point for displaying the edit substance screen. It takes a `navigateBack` lambda function as a parameter, which specifies what should happen when the user navigates back from this screen.

#### Parameters:

- `navigateBack: () -> Unit`: A lambda function that specifies what should happen when the user navigates back from this screen.
  
### init

The `init` block initializes the ViewModel by retrieving the custom substance ID from the saved state and fetching the corresponding custom substance from the experience repository. It then populates the `name`, `units`, and `description` properties of the ViewModel with the fetched data.

#### Parameters:

- None
  
### onDoneTap

This function is called when the user taps the "Done" floating action button. It updates the custom substance in the database with the new details provided by the user.

#### Parameters:

- None
  
### deleteCustomSubstance

This function is called when the user confirms the deletion of a custom substance. It deletes the specified custom substance from the database.

#### Parameters:

- None

