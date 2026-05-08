# ./app/src/main/java/com/isaakhanimann/journal/ui/main/MainScreenViewModel.kt

## Overview

The `MainScreenViewModel` class is a ViewModel that manages the logic for the main screen of the application. It provides state management and data persistence using Android DataStore, specifically handling user preferences related to accepting terms and conditions.

## Classes/Types

### MainScreenViewModel

This class extends `ViewModel` and is annotated with `@HiltViewModel`, indicating that it's a ViewModel provided by Hilt for dependency injection.

#### Properties

- **isAcceptedFlow (StateFlow<Boolean>)**:
  - A StateFlow representing the current state of whether the user has accepted terms and conditions.
  - It initializes to `true` as the default value.
  - Listens to changes in DataStore and updates its flow accordingly.

### Dependencies

- **dataStore (DataStore<Preferences>)**:
  - An instance of DataStore used for storing preferences.
  
## Methods/Functions

### accept()

This method is responsible for accepting terms and conditions by setting the `ARE_CONDITIONS_ACCEPTED` preference to `true`.

#### Implementation

```kotlin
fun accept() {
    viewModelScope.launch {
        dataStore.edit { settings ->
            settings[ARE_CONDITIONS_ACCEPTED] = true
        }
    }
}
```

### Overview of Data Handling

The `MainScreenViewModel` manages the persistence of user preferences using Android's DataStore API. Specifically, it handles a single boolean preference indicating whether terms and conditions have been accepted.

### State Management with StateFlow

- The `isAcceptedFlow` is used to observe the current acceptance status.
- It uses `stateIn` operator to create a flow that starts emitting values when there are subscribers, caching up to 5000 milliseconds of data for subscribers who subscribe later.

### Dependency Injection

- The class is annotated with `@HiltViewModel`, which means Hilt will provide an instance of this ViewModel automatically, allowing for easy injection into other components (like the UI).

## Usage

This ViewModel should be used in conjunction with the `MainScreen` composable to control the flow based on whether terms and conditions have been accepted. It provides a reactive way to observe and update user acceptance status across different parts of the application.

## Conclusion

The `MainScreenViewModel` is an essential component for managing user preferences and state in a declarative manner using Android's DataStore and Hilt. It ensures that the application can reactively respond to changes in user preferences without directly managing complex data persistence logic.

