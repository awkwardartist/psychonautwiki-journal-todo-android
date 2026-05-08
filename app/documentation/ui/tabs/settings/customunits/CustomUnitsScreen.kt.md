# CustomUnitsScreen.kt

This Kotlin file defines a composable function `CustomUnitsScreen` used within an Android application's UI layer for displaying a list of custom units managed by the user. The screen allows users to search, navigate between different screens, and view details or edit existing custom units.

## Overview

The `CustomUnitsScreen` serves as a central hub for managing custom units, providing functionalities such as searching through them, adding new ones, and navigating to an archive of previously used units. It is designed using Jetpack Compose, a modern toolkit for building native Android UIs that enables declarative programming.

## Classes/Types

### CustomUnitsScreen

- **Type**: Composable function
- **Description**: The main composable function that represents the user interface for managing custom units.
  
  - **Parameters**:
    - `viewModel`: An instance of `CustomUnitsViewModel`, used to manage state and data logic.
    - `navigateToEditCustomUnit`: A lambda function accepting a single parameter (custom unit ID) that navigates to the screen for editing a specific custom unit.
    - `navigateToAddCustomUnit`: A lambda function with no parameters that navigates to the screen for adding a new custom unit.
    - `navigateToCustomUnitArchive`: A lambda function with no parameters that navigates to the archive of previously used custom units.
  
  - **Implementation**:
    - The function uses `Scaffold` to structure its layout, providing a top app bar and an extended floating action button for adding new custom units.
    - It displays a search bar using `TextField`, allowing users to filter displayed units based on their input.
    - A `LazyColumn` is used to display the list of filtered custom units, with each unit represented by a `CustomUnitRow`.
    - If no units are found matching the search criteria or if no search was performed, an `EmptyScreenDisclaimer` is shown.

### CustomUnitsScreenContent

- **Type**: Composable function
- **Description**: A helper composable that encapsulates the content of the `CustomUnitsScreen`, including the UI elements and logic for handling filtered units.
  
  - **Parameters**:
    - `filteredUnits`: A list of `CustomUnit` objects, representing the currently displayed custom units after filtering.
    - `navigateToEditCustomUnit`: The same lambda function as in `CustomUnitsScreen`.
    - `navigateToAddCustomUnit`: The same lambda function as in `CustomUnitsScreen`.
    - `navigateToCustomUnitArchive`: The same lambda function as in `CustomUnitsScreen`.
    - `searchText`: A string representing the current search input.
    - `onSearch`: A lambda function accepting a single parameter (new search text) that updates the search filter.

  - **Implementation**:
    - Uses `Scaffold` for layout, similar to `CustomUnitsScreen`, but with more specific components like `TextField` and `LazyColumn`.
  
### CustomUnitRow

- **Type**: Composable function
- **Description**: Represents a single row in the list of custom units, showing details about each unit.
  
  - **Parameters**:
    - `customUnit`: A `CustomUnit` object representing the unit to display.
    - `navigateToEditCustomUnit`: The lambda function for navigating to the edit screen for the given custom unit.

  - **Implementation**:
    - Uses a `Column` with vertical alignment set to start, containing `Text` components to display the substance name, dose description, and any notes associated with the unit.
    - Clicking on the row navigates to the edit screen using the provided lambda function.

## Methods/Functions

### CustomUnitsScreen

- **Parameters**:
  - `viewModel`: `CustomUnitsViewModel`
  - `navigateToEditCustomUnit`: `(Int) -> Unit`
  - `navigateToAddCustomUnit`: `() -> Unit`
  - `navigateToCustomUnitArchive`: `() -> Unit`

- **Implementation**: Composable function that sets up the UI with a top app bar, search bar, and list of custom units. Uses `Scaffold` to structure the layout.

### CustomUnitsScreenContent

- **Parameters**:
  - `filteredUnits`: `List<CustomUnit>`
  - `navigateToEditCustomUnit`: `(Int) -> Unit`
  - `navigateToAddCustomUnit`: `() -> Unit`
  - `navigateToCustomUnitArchive`: `() -> Unit`
  - `searchText`: `String`
  - `onSearch`: `(String) -> Unit`

- **Implementation**: Composable function that handles the UI content for managing custom units, including filtering and displaying them.

### CustomUnitRow

- **Parameters**:
  - `customUnit`: `CustomUnit`
  - `navigateToEditCustomUnit`: `(Int) -> Unit`

- **Implementation**: Composable function representing a single row in the list of custom units, showing details about each unit. Clicking on the row navigates to the edit screen.

## Context

To fully understand and utilize this codebase effectively, it is important to have a basic understanding of Jetpack Compose, state management with ViewModel, and data persistence using Room for Android applications. The `CustomUnitsScreen` integrates these concepts to create an interactive user interface that allows users to manage their custom units efficiently.

