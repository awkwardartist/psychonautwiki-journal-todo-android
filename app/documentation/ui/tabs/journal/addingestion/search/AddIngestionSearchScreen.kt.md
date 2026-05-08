# Overview

The `AddIngestionSearchScreen.kt` file contains a screen component for searching and selecting substances or custom units for ingestion in a journal application. It uses Jetpack Compose for UI composition. The screen displays a list of suggestions based on user input, including predefined substances and custom units, along with options to add new substances.

# Classes/Types

## `AddIngestionSearchScreen`

This is the main composable function that represents the screen. It manages the state and behavior of the search screen, including fetching data, displaying results, and handling user interactions.

### Properties

- `viewModel: AddIngestionSearchViewModel`: The view model for managing the screen's logic.
- `searchText: String`: The current text entered by the user in the search bar.
- `showMenu: Boolean`: A boolean indicating whether the menu (for adding new substances) is visible.

### Composable

```kotlin
@Composable
fun AddIngestionSearchScreen(
    viewModel: AddIngestionSearchViewModel,
    searchText: String = "",
    onSearchTextChange: (String) -> Unit,
    navigateToCustomUnitChooseDose: (customUnitId: Int) -> Unit,
    navigateToAddNewSubstance: () -> Unit
)
```

## `AddIngestionSearchViewModel`

This is the view model for managing the search screen's logic. It provides data and handles side effects.

### Properties

- `suggestions: State<List<Suggestion>>`: A state holding the current list of suggestions.
- `isLoading: State<Boolean>`: A state indicating whether data is currently being loaded.

### Functions

- `onSearchTextChange(text: String)`: Updates the search text and triggers a new search.
- `onAddNewSubstance()`: Navigates to the screen for adding a new substance.

# Methods/Functions

## `onSearchTextChange`

This function updates the search text and triggers a new search by calling the view model's `search` function with the current search text.

```kotlin
@Composable
fun onSearchTextChange(text: String) {
    searchText = text
    viewModel.search(text)
}
```

## `navigateToCustomUnitChooseDose`

This function is called when a user taps on a custom unit in the list of suggestions. It navigates to the screen for choosing a dose for the selected custom unit.

```kotlin
@Composable
fun navigateToCustomUnitChooseDose(customUnitId: Int) {
    viewModel.navigateToCustomUnitChooseDose(customUnitId)
}
```

## `navigateToAddNewSubstance`

This function is called when the user taps on the menu item to add a new substance. It navigates to the screen for adding a new substance.

```kotlin
@Composable
fun navigateToAddNewSubstance() {
    viewModel.onAddNewSubstance()
}
```

# Usage

To use this screen, you need to create an instance of `AddIngestionSearchViewModel` and pass it to the `AddIngestionSearchScreen` composable function. You should also provide callbacks for handling search text changes, navigating to custom unit dose choose screens, and adding new substances.

```kotlin
@Composable
fun App() {
    val viewModel = remember { AddIngestionSearchViewModel() }
    
    AddIngestionSearchScreen(
        viewModel = viewModel,
        searchText = "LSD",
        onSearchTextChange = { viewModel.onSearchTextChange(it) },
        navigateToCustomUnitChooseDose = { viewModel.navigateToCustomUnitChooseDose(it) },
        navigateToAddNewSubstance = { viewModel.onAddNewSubstance() }
    )
}
```

# Conclusion

The `AddIngestionSearchScreen.kt` file provides a user-friendly interface for searching and selecting substances or custom units for ingestion in a journal application. It leverages Jetpack Compose for UI composition and separates concerns with a view model for managing the screen's logic.

