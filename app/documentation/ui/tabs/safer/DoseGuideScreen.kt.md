# DoseGuideScreen.kt

## Overview

The `DoseGuideScreen.kt` file contains a Kotlin Composable function named `DoseGuideScreen`. This function is used to display a guide for safe dosing of psychoactive substances. It provides information on various aspects of responsible drug use, including set and setting, combinations, administration routes, reflection, and safety measures.

The guide includes specific sections such as "Set and Setting," "Combinations," "Administration Routes," "Allergy Tests," "Reflection," "Safety of Others," and "Recovery Position." Each section provides detailed text instructions and, where applicable, links to external resources for more information or further guidance. The screen is organized within a Composable structure, utilizing `Column` layouts, `Text`, `Button`, and `TopAppBar` components from the Material3 library.

## Classes/Types

### DoseGuideScreen (Composable Function)

- **Description**: A Composable function that displays a guide for safe dosing of psychoactive substances.
- **Parameters**:
  - `onNavigateUp`: A lambda function to navigate up in the navigation hierarchy.
  - `viewModel`: An instance of a ViewModel class responsible for managing state and logic related to dose guidance.

## Methods/Functions

### Composable Function: DoseGuideScreen

#### Parameters:

1. **onNavigateUp**: A lambda function that takes no parameters and returns Unit. This is used to navigate up in the navigation hierarchy, typically returning to a previous screen.
   
2. **viewModel**: An instance of a ViewModel class responsible for managing state and logic related to dose guidance.

#### Returns:

- **Unit**: The function does not return any value directly but composes UI elements using the Material3 library.

#### Composable Structure:

1. **TopAppBar**:
   - Displays the title "Dose Guide" and an action button that navigates up when clicked.

2. **Column**:
   - Contains multiple `Text` components displaying various sections of the dose guide.
   - Uses `Spacer` to add vertical spacing between sections.

3. **TextButton**:
   - Provides a link to an external article on responsible drug use, accessible through the "Article" button.

### ViewModel: DoseGuideViewModel

- **Description**: This ViewModel class is not explicitly detailed in the provided code snippet. It is assumed to manage state and provide data for the `DoseGuideScreen`.
- **Methods/Functions**:
  - Likely includes methods for retrieving dose guidance data, handling navigation events, and other related logic.

## Usage Example

The `DoseGuideScreen` can be invoked from another Composable function by calling it and passing the necessary parameters:

```kotlin
@Composable
fun MainScreen() {
    val viewModel: DoseGuideViewModel = remember { DoseGuideViewModel() }
    
    Scaffold(topBar = {
        TopAppBar(title = { Text("Main Screen") })
    }) { padding ->
        DoseGuideScreen(onNavigateUp = { /* Handle navigation up */ }, viewModel)
    }
}
```

In this example, `DoseGuideViewModel` is created and passed to the `DoseGuideScreen`, allowing it to access dose guidance data and handle any necessary UI logic.

