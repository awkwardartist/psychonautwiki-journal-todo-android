## Overview

The `ChooseDoseCustomUnitScreen` file contains a Jetpack Compose composable function that serves as the user interface for logging doses using a custom unit of measurement. This UI component is used within an Android application, likely in conjunction with other screens for managing experiences and substances.

This screen allows users to input a dose amount, optionally estimate its standard deviation, and log this information along with additional details such as the substance name and administration route. It also provides options to log an unknown dose or create a new custom unit.

The component interacts with view models (`ChooseDoseCustomUnitViewModel`) for data management and state handling, ensuring that user inputs are validated and stored appropriately in the application's database.

## Classes/Types

### ChooseDoseCustomUnitScreen Composable Function

**Purpose**: The primary composable function that renders the user interface for logging doses using a custom unit of measurement.

**Parameters**:
- `navigateToRoute`: A lambda function used to navigate between different routes within the application.
- `customUnitId`: An identifier for the custom unit being logged.

**State Management**:
- `doseText`: The dose amount entered by the user, as a string.
- `isEstimate`: A boolean indicating whether the dose is an estimate.
- `estimatedDoseDeviationText`: The estimated standard deviation of the dose, as a string.

### CustomUnitRoaDoseView Composable Function

**Purpose**: A composable function that displays the ROA (Receptor Occupancy Assay) classification for a custom unit dose.

**Parameters**:
- `roaDose`: An object containing ROA data.
- `customUnit`: The custom unit used to calculate and display the ROA values.

### DoseClassificationRow Composable Function

**Purpose**: A composable function that displays a row with ROA classification values for different dose ranges.

**Parameters**:
- `lightMin`, `commonMin`, `strongMin`, `heavyMin`: Double values representing the minimum doses in the respective light, common, strong, and heavy categories.
- `unit`: The unit of measurement used for displaying the ROA values.

## Methods/Functions

### ChooseDoseCustomUnitScreen Composable Function

**Method**: `onDoseTextChange(newDoseText: String)`
- **Purpose**: Updates the dose amount state with the new value entered by the user.
- **Parameters**:
  - `newDoseText`: The new dose amount as a string.

**Method**: `onEstimatedDoseDeviationChange(newEstimatedDeviationText: String)`
- **Purpose**: Updates the estimated standard deviation state with the new value entered by the user.
- **Parameters**:
  - `newEstimatedDeviationText`: The new estimated standard deviation as a string.

### CustomUnitRoaDoseView Composable Function

**Method**: `convertToNewUnit(oldDose: Double?): Double?`
- **Purpose**: Converts an old dose amount to the corresponding value in the custom unit.
- **Parameters**:
  - `oldDose`: The old dose amount as a double, or null if not specified.
- **Returns**: A new dose amount in the custom unit.

### DoseClassificationRow Composable Function

No additional methods are directly defined within this function. It relies on parameters to display ROA classification values.

## Context

This documentation assumes familiarity with Jetpack Compose for building UIs and Kotlin for programming Android applications. The code interacts with other parts of the application, such as view models (`ChooseDoseCustomUnitViewModel`), repositories (`ExperienceRepository`, `SubstanceRepository`), and navigation logic to manage different user interactions within the application.

