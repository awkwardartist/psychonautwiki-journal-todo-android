# ChooseRouteDuringAddCustomUnitScreen.kt

## Overview

This Kotlin file contains the implementation of a screen component in a mobile application using Jetpack Compose. The `ChooseRouteDuringAddCustomUnitScreen` composable function provides a user interface for selecting an administration route during the process of adding a custom unit. This UI is typically part of a larger flow where users are creating or editing custom units related to substances they consume.

## Classes/Types

### ChooseRouteDuringAddCustomUnitScreen

This composable function represents the main component of the screen. It takes several parameters:
- `navigation`: A NavController for navigation within the app.
- `onDismissRequest`: A lambda function that is called when the user requests to dismiss the current route.
- `finishAddCustomUnitViewModel`: An instance of `FinishAddCustomUnitViewModel` which contains state and logic related to adding custom units.

### FinishAddCustomUnitViewModel

This ViewModel class contains the business logic for managing the data and state associated with adding a custom unit. It provides properties and functions that are used by the UI components in the screen.

## Methods/Functions

### ChooseRouteDuringAddCustomUnitScreen

#### Parameters
- `navigation`: NavController - The navigation controller to use for navigating within the app.
- `onDismissRequest`: () -> Unit - A lambda function that is called when the user requests to dismiss the current route.
- `finishAddCustomUnitViewModel`: FinishAddCustomUnitViewModel - The ViewModel instance containing state and logic for adding custom units.

#### Description
This composable function builds a user interface for selecting an administration route during the process of adding a custom unit. It includes a list of routes that users can choose from, and it updates the state in the `finishAddCustomUnitViewModel` when a route is selected.

### FinishAddCustomUnitViewModel

#### Properties
- `substanceName`: String - The name of the substance being added.
- `administrationRoute`: AdministrationRoute - The current administration route being selected.
- `substance`: Substance? - The substance entity for the currently selected substance.
- `roaDose`: DoseClass? - The dose class associated with the selected administration route and substance.
- `name`: String - The name of the custom unit being added.
- `isUnitsFieldShown`: Boolean - Whether the units field is shown in the UI.
- `currentDoseClass`: DoseClass? - The current dose class based on the selected dose.

#### Functions
- `onChangeOfName(newName: String)`: Updates the name of the custom unit being added.
- `onChangeOfUnit(newUnit: String)`: Updates the primary unit of measurement for the custom unit. Adjusts the plural form accordingly.
- `onChangeOfUnitPlural(newUnit: String)`: Updates the plural form of the unit of measurement.
- `onChangeOfOriginalUnit(newUnit: String)`: Updates the original unit of measurement used by default.
- `onChangeOfDose(newDose: String)`: Updates the dose value as a string.
- `dose`: Double? - The parsed dose value from the `doseText` property.
- `estimatedDoseDeviationText`: String - The estimated dose deviation value as a string.
- `onChangeOfEstimatedDoseDeviation(newEstimatedDoseDeviation: String)`: Updates the estimated dose deviation value.
- `isEstimate`: Boolean - Whether the dose is an estimate.
- `onChangeOfIsEstimate(newIsEstimate: Boolean)`: Updates whether the dose is an estimate.
- `isArchived`: Boolean - Whether the custom unit is archived.
- `onChangeOfIsArchived(newIsArchived: Boolean)`: Updates whether the custom unit is archived.
- `note`: String - Additional notes for the custom unit.
- `onChangeOfNote(newNote: String)`: Updates the additional notes for the custom unit.

#### Lifecycle Initialization
The ViewModel initializes its state based on parameters passed through the constructor. It sets the initial values of properties like `substanceName`, `administrationRoute`, and `originalUnit`. If the substance is null, it tries to fetch a custom substance from the database using the `experienceRepo`.

#### Async Operations
The `createSaveAndDismissAfter` function inserts a new `CustomUnit` into the database using the `experienceRepo.insert` method. It then calls the provided `dismiss` lambda with the ID of the newly inserted custom unit, ensuring that the UI can dismiss itself after saving.

### Context

To properly use this code, you would need to have a Jetpack Compose environment set up within an Android project. The screen assumes that it's part of a larger navigation flow where custom units are being managed and created or edited. It also requires instances of `NavController` for navigation and a ViewModel to manage the state of the screen.

This documentation provides a comprehensive overview of the functionality and structure of the `ChooseRouteDuringAddCustomUnitScreen.kt` file, including the UI components and their interactions with the business logic provided by the `FinishAddCustomUnitViewModel`.

