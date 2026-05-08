# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/search/custom/AddCustomSubstanceViewModel.kt

## Overview

The `AddCustomSubstanceViewModel` class is part of the ViewModel layer for managing state in an Android application, specifically for the UI tab focused on searching and interacting with custom substances. This ViewModel handles data related to adding new custom substances and ensures that the UI remains responsive by offloading data handling tasks to coroutines.

## Classes/Types

### AddCustomSubstanceViewModel

The primary class defined in this file. It extends `ViewModel` from the Android Jetpack library and is annotated with `@HiltViewModel` for dependency injection using Hilt, a dependency injection library that simplifies managing object creation and dependencies in an application.

#### Properties

- **id**: A mutable state variable of type `Int`. This property holds the ID of the custom substance being managed. For new substances, this will be set to 0.
  
- **name**: A mutable state variable of type `String`. This property represents the name of the custom substance and is bound to the UI's text input for the substance name.

- **units**: A mutable state variable of type `String`. This property represents the units in which the custom substance quantity is measured. It is initially set to an empty string but can be updated by selecting predefined options.
  
- **description**: A mutable state variable of type `String`. This property represents a textual description or notes about the custom substance and is bound to the UI's text input for the substance description.

#### Constructor

- **AddCustomSubstanceViewModel(experienceRepo: ExperienceRepository)**: Constructs an instance of `AddCustomSubstanceViewModel` with the provided dependency injection parameter `experienceRepo`. The constructor initializes a coroutine scope (`viewModelScope`) where state updates and data interactions will occur.

### Dependencies

- **ExperienceRepository**: An interface for accessing and managing custom substances in a database. This class is likely implemented by a repository class that interacts with a Room database or similar persistence layer.

## Methods/Functions

### onDoneTap()

This method is called when the user taps the "Done" floating action button to save changes made to the custom substance. It inserts the updated custom substance data into the database using `experienceRepo.insert(customSubstance)`, where `customSubstance` is a new instance of the `CustomSubstance` class with the current state of `name`, `units`, and `description`.

### init()

The `init` block is executed when an instance of `AddCustomSubstanceViewModel` is created. It retrieves the custom substance ID from the route (assuming it's passed via navigation) and fetches the corresponding `CustomSubstance` object from the database using a coroutine that runs in `viewModelScope`. The fetched data is then used to update the properties `id`, `name`, `units`, and `description`.

### deleteCustomSubstance()

This method is intended for deleting a custom substance. However, it's currently commented out. If uncommented and properly implemented, it would call `experienceRepo.delete(CustomSubstance(id, name, units, description))` to remove the specified custom substance from the database.

## Dependencies

- **SavedStateHandle**: Used to access route parameters passed during navigation. This allows the ViewModel to know which custom substance is being edited.

## Context

To fully understand and use this `AddCustomSubstanceViewModel`, a basic understanding of Android development concepts such as ViewModel, LiveData, Data Binding, and Hilt is required. Additionally, familiarity with Jetpack Compose for UI development and Room or similar libraries for data persistence would be beneficial.

