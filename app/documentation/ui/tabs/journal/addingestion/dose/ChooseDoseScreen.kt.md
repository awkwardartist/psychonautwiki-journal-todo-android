# ChooseDoseScreen.kt

## Overview

The `ChooseDoseScreen` composable component represents a screen for selecting or estimating the dose of a substance when adding an ingestion entry to a journal. This screen is designed to interact with user inputs such as purity, dose, and standard deviation, and provide guidance based on the selected substance. The component communicates with other parts of the application through provided callbacks.

## Classes/Types

### ChooseDoseScreen

- **Purpose**: Manages the UI for selecting or estimating the dose of a substance.
- **Parameters**:
  - `substanceName`: The name of the substance being ingested.
  - `administrationRoute`: A route to the administration method selection screen.
  - `navigateToAdministrationRoute`: Callback to navigate to the administration route.
  - `onDoseSelected`: Callback invoked when a dose is selected or estimated.
- **Methods/Functions**:
  - `Rememberable`: Ensures that the state and side effects of the composable are retained across recompositions.
  - `LaunchedEffect`: Launches an effect that updates the purity text based on the substance name.

## Methods/Functions

### rememberPurityText(substanceName: String): MutableState<String>

- **Purpose**: Provides a mutable state for the purity text, which is initialized based on the substance name.
- **Parameters**:
  - `substanceName`: The name of the substance being ingested.
- **Return Type**: A `MutableState` holding the current purity text.

### ChooseDoseScreen

- **Purpose**: Renders the main UI for selecting or estimating the dose of a substance.
- **Parameters**:
  - `substanceName`: The name of the substance being ingested.
  - `administrationRoute`: A route to the administration method selection screen.
  - `navigateToAdministrationRoute`: Callback to navigate to the administration route.
  - `onDoseSelected`: Callback invoked when a dose is selected or estimated.

### PurityCalculation

- **Purpose**: Renders a UI component for entering the purity of a substance and displaying the converted impure dose if applicable.
- **Parameters**:
  - `purityText`: The current text in the purity field.
  - `onPurityChange`: Callback to update the purity text when it changes.
  - `isValidPurity`: Boolean indicating whether the entered purity is valid (between 1 and 100%).
  - `convertedDoseAndUnitText`: Text representing the converted impure dose and its unit.

### CurrentMeanAndStandardDeviation

- **Purpose**: Renders a UI component for displaying the current mean and standard deviation of the dose.
- **Parameters**:
  - `mean`: The current mean dose.
  - `standardDeviation`: The current standard deviation of the dose.
  - `unit`: The unit in which the dose is measured.

### CurrentMeanAndStandardDeviationExplanation

- **Purpose**: Renders a UI component for explaining the meaning of the current mean and standard deviation.
- **Parameters**:
  - `mean`: The current mean dose.
  - `standardDeviation`: The current standard deviation of the dose.
  - `unit`: The unit in which the dose is measured.

### CurrentMeanAndStandardDeviationExplanationPreview

- **Purpose**: Preview for the `CurrentMeanAndStandardDeviationExplanation` component to demonstrate its appearance and functionality.

### UnknownDoseDialog

- **Purpose**: Renders a dialog asking if the user knows the dose or wants to log an unknown dose.
- **Parameters**:
  - `useUnknownDoseAndNavigate`: Callback invoked when the user chooses to log an unknown dose.
  - `dismiss`: Callback invoked when the dialog is dismissed.

### UnknownDoseDialogPreview

- **Purpose**: Preview for the `UnknownDoseDialog` component to demonstrate its appearance and functionality.

