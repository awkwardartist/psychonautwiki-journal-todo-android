## Overview

The `EditExperienceViewModel` class is a ViewModel designed for managing the state of an experience editing screen within a journal application. It provides data binding between the UI components and the underlying model representing an experience.

This ViewModel leverages Hilt for dependency injection, allowing it to inject an instance of the `ExperienceRepository`. It also uses `SavedStateHandle` to receive navigation parameters, specifically the ID of the experience being edited.

## Classes/Types

### EditExperienceViewModel

- **Inheritance**: `ViewModel`
- **Annotations**: `@HiltViewModel`, `@Inject`

The `EditExperienceViewModel` class is annotated with `@HiltViewModel` to facilitate dependency injection and with `@Inject` for constructor injection.

#### Properties

- **experience**: A nullable `Experience` object representing the current state of the experience being edited.
- **enteredTitle**: A mutable state variable holding the title entered by the user. It is initialized based on the experience's title from the repository.
- **isEnteredTitleOk**: A read-only property indicating whether the entered title is valid (non-empty).
- **enteredText**: A mutable state variable holding the text notes entered by the user. It is initialized based on the experience's text from the repository.
- **enteredLocation**: A mutable state variable holding the location entered by the user. It is initialized based on the experience's location name from the repository.
- **oldLongitude** and **oldLatitude**: Private properties to store the original longitude and latitude of the experience, used for updates when no new location is provided.

#### Initialization

The `init` block retrieves navigation parameters using `SavedStateHandle` and fetches the corresponding experience data from the `ExperienceRepository`. The retrieved data initializes the mutable state variables.

#### Methods/Functions

- **onDoneTap()**: Updates the experience with the current entered values (title, text, location) and saves it back to the repository if the title is not empty.

## Methods/Functions

### onDoneTap()

- **Purpose**: Saves the edited experience.
- **Behavior**:
  - Checks if `enteredTitle` is non-empty.
  - Updates the experience object with new values.
  - If a new location is entered, creates a new `Location` object; otherwise, retains the existing one.
  - Calls `repository.update()` to save the updated experience.

## Usage Context

The `EditExperienceViewModel` should be used in conjunction with a corresponding UI component (likely a composable function) that displays and interacts with the user's input. The ViewModel manages the state of the data layer, ensuring that the UI remains responsive and consistent with the application's backend data.

For complete functionality, this ViewModel requires proper setup for Hilt dependency injection and should be instantiated within a `ViewModelProvider`.

