# CombinationSettingsViewModel.kt

## Overview

The `CombinationSettingsViewModel` class is a ViewModel responsible for managing state and business logic related to substance interaction settings within the PsychonautWiki Journal application. It provides reactive data streams and functions to toggle options affecting substance interactions.

This ViewModel leverages Dependency Injection (DI) with Hilt, making it easier to manage dependencies and maintain clean separation of concerns.

## Classes/Types

### CombinationSettingsViewModel

#### Purpose

The `CombinationSettingsViewModel` class manages the state for settings related to substance interactions. It provides a reactive stream of options and functions to toggle these options.

#### Properties

- **optionsFlow**: A Flow representing the current list of substance interaction options, each with an enabled state.
  
  ```kotlin
  val optionsFlow = comboStorage.optionFlow.stateIn(
      initialValue = emptyList(),
      scope = viewModelScope,
      started = SharingStarted.WhileSubscribed(5000)
  )
  ```

#### Methods/Functions

- **Constructor**

  ```kotlin
  @HiltViewModel
  class CombinationSettingsViewModel @Inject constructor(
      private val comboStorage: CombinationSettingsStorage,
  ) : ViewModel()
  ```

  - **Parameters**:
    - `comboStorage`: An instance of `CombinationSettingsStorage` used to access and modify the substance interaction options.

- **toggleOption**

  ```kotlin
  fun toggleOption(optionName: String)
  ```

  - **Description**: Toggles the enabled state of a specific substance interaction option.
  - **Parameters**:
    - `optionName`: The name of the substance interaction option to toggle.

## Usage

To utilize the `CombinationSettingsViewModel`, you typically obtain it via dependency injection and access its properties and methods as needed. Below is an example of how you might use this ViewModel in a Composable screen:

```kotlin
@Composable
fun CombinationSettingsScreen(viewModel: CombinationSettingsViewModel) {
    val options by viewModel.optionsFlow.collectAsState()

    Column {
        // Display the list of substance interaction options
        options.forEach { option ->
            Checkbox(
                checked = option.enabled,
                onCheckedChange = { isChecked -> 
                    viewModel.toggleOption(option.name)
                }
            )
            Text(text = option.name)
        }
    }
}
```

In this example, a Composable function `CombinationSettingsScreen` collects the state of substance interaction options from `optionsFlow` and displays them as checkboxes. When a checkbox is toggled, it calls the `toggleOption` method to update the corresponding option's enabled state in the ViewModel.

## Dependencies

- **CombinationSettingsStorage**: Used for accessing and modifying the substance interaction options.
- **ViewModel**: Provides lifecycle-aware data holder class.
- **HiltViewModel**: Hilt-specific annotation for ViewModel injection.
- **Flow**: Reactive stream type used to emit a sequence of values over time.
- **stateIn**: Operator function for sharing stateful flows.
- **viewModelScope**: Coroutine scope tied to the ViewModel's lifecycle.

## Context

This documentation focuses on the `CombinationSettingsViewModel` class and its primary functions. For a comprehensive understanding of how this ViewModel interacts with other components of the application, further context on data storage, UI components, and overall architecture might be required.

