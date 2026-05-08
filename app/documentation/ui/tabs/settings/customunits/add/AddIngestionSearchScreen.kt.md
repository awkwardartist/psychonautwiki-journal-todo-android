# AddIngestionSearchScreen.kt

## Overview

This Kotlin file contains a Composable function named `AddIngestionSearchScreen` which is part of the UI layer for adding ingestion search functionality within an app. The purpose of this screen is to allow users to search and select substances, administration routes, and units for their ingestion records.

### Components
- `AddIngestionSearchScreen`: A Composable function that composes the user interface elements for searching and selecting substances, administration routes, and units.
- `Prompt`: A data class used to store prompt information such as name, unit, and plural form of the unit.

## Classes/Types

### AddIngestionSearchScreen

#### Properties
- `viewModel`: An instance of `AddIngestionSearchViewModel` which manages the state and logic for this screen.
- `finishRoute`: A Composable function that will be called to finish the current route once an item is selected.

#### Methods/Functions
- `onSubstanceSelected(substanceName: String)`: Handles the selection of a substance by updating the `viewModel` with the new substance name and loading the corresponding ROA (Routes of Administration).
- `onAdministrationRouteSelected(administrationRoute: AdministrationRoute)`: Handles the selection of an administration route by updating the `viewModel`.
- `onUnitSelected(unit: String, unitPlural: String)`: Handles the selection of a unit by updating the `viewModel` with the new unit and plural form.
- `onDoseChange(doseText: String)`: Updates the dose text in the `viewModel`.
- `onEstimatedDeviationChange(estimatedDeviationText: String)`: Updates the estimated deviation text in the `viewModel`.
- `onEstimateToggled(isEstimate: Boolean)`: Toggles the estimate flag in the `viewModel`.

### Prompt

#### Properties
- `name`: A string representing the name of the prompt.
- `unit`: A string representing the unit associated with the prompt.
- `unitPlural`: A string representing the plural form of the unit.

## Usage

The `AddIngestionSearchScreen` can be used in a Composable function where you want to allow users to select substances, administration routes, and units for their ingestion records. The `finishRoute` parameter is passed to handle the completion of the selection process once an item is selected.

```kotlin
@Composable
fun MyIngestionScreen() {
    val viewModel: AddIngestionSearchViewModel = remember { 
        viewModel()
    }
    
    fun finishRoute(customUnitId: Int) {
        // Handle route completion logic here
    }

    AddIngestionSearchScreen(
        viewModel = viewModel,
        finishRoute = finishRoute
    )
}
```

## Dependencies

This file depends on the following classes and types:
- `AddIngestionSearchViewModel`: Manages the state for the screen.
- `AdministrationRoute`: Represents an administration route (e.g., oral, intramuscular).
- `CustomUnit`: Represents a custom unit used in ingestion records.
- `RoaDoseClass`: Represents a Dose Class related to Routes of Administration.
- `Substance`: Represents a substance ingested by the user.

For more detailed documentation on these dependencies, please refer to their respective files.

