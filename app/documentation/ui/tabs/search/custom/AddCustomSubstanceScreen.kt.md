# Overview

The `AddCustomSubstanceScreen.kt` file in the PsychonautWiki Journal application is part of a feature that allows users to add new custom substances to their substance list. This file contains a composable function `AddCustomSubstanceScreen` which serves as the user interface for adding a new custom substance. The screen includes an interface for entering the name, units, and description of the custom substance, along with a floating action button (FAB) that saves the new substance when clicked.

# Classes/Types

## AddCustomSubstanceScreen

- **Type**: Composable Function
- **Description**: A composable function that represents the user interface for adding a new custom substance. It includes fields for entering the substance's name, units, and description, and a FAB for saving the new substance.

# Methods/Functions

## AddCustomSubstanceScreen()

- **Type**: Composable Function
- **Description**: This is the main function that composes the user interface for adding a new custom substance. It utilizes several composables from the `AddOrEditCustomSubstanceContent` to display input fields and buttons.
  
  - **Parameters**:
    - `padding: PaddingValues`: The padding values to apply around the content.
    - `name: String`: The current name of the custom substance being entered.
    - `onNameChange: (String) -> Unit`: A lambda function that updates the `name` state with new input values.
    - `units: String`: The current units of measurement for the custom substance being entered.
    - `onUnitsChange: (String) -> Unit`: A lambda function that updates the `units` state with new input values.
    - `description: String`: The current description of the custom substance being entered.
    - `onDescriptionChange: (String) -> Unit`: A lambda function that updates the `description` state with new input values.

## AddOrEditCustomSubstanceContent

- **Type**: Composable Function
- **Description**: This composable function provides a reusable UI component for entering the name, units, and description of substances. It includes two text fields for the name and units, and an additional row of buttons for selecting common unit measurements. There is also a single text field for entering a description.

  - **Parameters**:
    - `padding: PaddingValues`: The padding values to apply around the content.
    - `name: String`: The current name of the substance being entered.
    - `onNameChange: (String) -> Unit`: A lambda function that updates the `name` state with new input values.
    - `units: String`: The current units of measurement for the substance being entered.
    - `onUnitsChange: (String) -> Unit`: A lambda function that updates the `units` state with new input values.
    - `description: String`: The current description of the substance being entered.
    - `onDescriptionChange: (String) -> Unit`: A lambda function that updates the `description` state with new input values.

# Notes

- This screen utilizes several composable functions and components from other parts of the application, such as `AddOrEditCustomSubstanceContent`. These are not fully documented here but are referenced in the description.
  
- The `padding: PaddingValues` parameter allows for customization of the padding around the content, making the UI more adaptable to different screen sizes and layouts.

- The floating action button (FAB) is used to save the new custom substance. Its functionality is not described within this file but is likely implemented in the view model or another part of the application's logic flow.

