# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/calendar/ExperienceFetchViewModel.kt

## Overview

`ExperienceFetchViewModel` is a ViewModel class designed to handle fetching an experience from the repository based on its ID. It provides a single method, `getExperience`, which returns an `ExperienceWithIngestionsCompanionsAndRatings` object for a given experience ID.

This ViewModel is part of the Hilt dependency injection framework, ensuring that it has access to the necessary dependencies through constructor injection.

## Classes/Types

### ExperienceFetchViewModel

#### Purpose
The `ExperienceFetchViewModel` class extends `ViewModel` and provides a method to fetch an experience from the repository.

#### Properties
- **experienceRepo**: An instance of `ExperienceRepository`, injected via the constructor, used for accessing the database operations.

#### Methods/Functions

##### getExperience(experienceId: Int): ExperienceWithIngestionsCompanionsAndRatings?

- **Purpose**: Fetches an experience with associated ingestions, companions, and ratings from the repository based on the given experience ID.
  
- **Parameters**:
  - `experienceId`: The ID of the experience to fetch.

- **Return Value**:
  - An `ExperienceWithIngestionsCompanionsAndRatings` object representing the fetched experience if found; otherwise, `null`.

- **Implementation**:
  ```kotlin
  suspend fun getExperience(experienceId: Int): ExperienceWithIngestionsCompanionsAndRatings? {
      return experienceRepo.getExperienceWithIngestionsCompanionsAndRatings(experienceId)
  }
  ```

## Dependencies

The `ExperienceFetchViewModel` class has a dependency on the `ExperienceRepository`, which is injected via constructor injection. This allows for loose coupling and easier testing.

## Usage Context

This ViewModel should be used in conjunction with the UI components that need to display or interact with an experience's details. It ensures that all necessary data is fetched from the database in a structured manner, adhering to the MVVM architecture principles.

For more detailed information on how this ViewModel interacts with other parts of the application, such as the repository layer and UI components, additional context would be required.

