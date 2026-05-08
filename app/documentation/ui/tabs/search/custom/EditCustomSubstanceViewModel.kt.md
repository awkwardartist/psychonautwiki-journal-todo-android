# EditCustomSubstanceViewModel

## Overview

The `EditCustomSubstanceViewModel` class is a ViewModel designed for managing the state and logic of the edit custom substance feature in an Android application. It handles fetching, updating, and deleting a custom substance based on user input.

## Classes/Types

### `EditCustomSubstanceViewModel`

This class extends `ViewModel`. It provides the necessary functionality to manage the state and logic of editing a custom substance. The ViewModel is responsible for data persistence and is lifecycle-aware, which means it can survive configuration changes such as screen rotations without losing its state.

#### Properties

- **id**: An integer representing the unique identifier of the custom substance being edited.
  
- **name**: A mutable state property that holds the name of the custom substance. It is a `String` and is initially set to an empty string when the ViewModel is initialized.
  
- **units**: A mutable state property that holds the units of measurement for the custom substance. It is a `String` and is initially set to an empty string when the ViewModel is initialized.
  
- **description**: A mutable state property that holds the description of the custom substance. It is a `String` and is initially set to an empty string when the ViewModel is initialized.

#### Methods/Functions

- **init**:

  Initializes the ViewModel. It retrieves the ID of the custom substance from the navigation route, fetches the corresponding custom substance from the database using the `ExperienceRepository`, and sets the state properties (`id`, `name`, `units`, `description`) based on the retrieved data.

- **onDoneTap()**:

  Updates the custom substance in the database with the current state of the properties (`name`, `units`, `description`). This method is called when the user taps the "Done" button to save their changes.

- **deleteCustomSubstance()**:

  Deletes the custom substance from the database. This method is called when the user taps the "Delete" button to remove the custom substance.

## Context

To fully understand and use this ViewModel, you will need to have a basic understanding of Android development with Jetpack Compose, Coroutines, Hilt for dependency injection, and Android's ViewModel lifecycle management. Additionally, familiarity with Room or another database library for data persistence is helpful.

