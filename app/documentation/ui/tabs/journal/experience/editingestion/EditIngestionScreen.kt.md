# EditIngestionScreen.kt Documentation

## Overview

This Kotlin file contains the user interface for editing an ingestion entry within a journal application. The screen allows users to modify details such as dose, time, notes, and custom units associated with an experience.

## Classes/Types

### EditIngestionScreen

The main component of this file, `EditIngestionScreen`, is a Composable function that represents the user interface for editing an ingestion entry. It consists of several sub-components, each handling specific aspects of the UI.

#### Properties:

- **navController:** NavController: A navigation controller used to navigate within the application.
- **viewModel:** EditIngestionViewModel: A view model providing data and logic related to editing an ingestion.

### Sub-components

1. **EditIngestionTime**
2. **EditDoseAndUnits**
3. **EditNotes**
4. **EditConsumerName**
5. **CustomUnitSelector**
6. **DoneButton**

## Methods/Functions

### EditIngestionScreen(navController: NavController, viewModel: EditIngestionViewModel)

This is the main entry point for the `EditIngestionScreen`. It accepts a navigation controller and an instance of `EditIngestionViewModel` to manage state and logic.

#### Parameters:

- **navController:** NavController - The navigation controller used to navigate within the application.
- **viewModel:** EditIngestionViewModel - The view model providing data and logic related to editing an ingestion.

### Sub-components

#### EditIngestionTime

This sub-component handles the time picker functionality for the ingestion. It allows users to choose a single point in time or a range of times.

##### Properties:

- **localDateTimeStart:** StateFlow<LocalDateTime> - The selected start time for the ingestion.
- **localDateTimeEnd:** StateFlow<LocalDateTime> - The selected end time for the ingestion (if applicable).
- **ingestionTimePickerOption:** StateFlow<IngestionTimePickerOption> - The current time picker option (single point in time or range).

##### Functions:

- **onChangeStartTime(newLocalDateTime: LocalDateTime):** Updates the start time.
- **onChangeEndTime(newLocalDateTime: LocalDateTime):** Updates the end time.

#### EditDoseAndUnits

This sub-component handles the dose and unit input for the ingestion. It allows users to enter a numerical dose and select a unit of measurement.

##### Properties:

- **dose:** StateFlow<String> - The current dose value.
- **estimatedDoseStandardDeviation:** StateFlow<String> - The standard deviation of the dose if it's an estimate.
- **units:** StateFlow<String> - The current unit of measurement.
- **isEstimate:** StateFlow<Boolean> - Indicates whether the dose is an estimate.

##### Functions:

- **onDoseChange(newDoseText: String):** Updates the dose value.
- **onChangeEstimatedDoseStandardDeviation(newEstimatedDoseStandardDeviation: String):** Updates the standard deviation of the dose if it's an estimate.

#### EditNotes

This sub-component handles the notes input for the ingestion. It allows users to enter additional information about the ingestion.

##### Properties:

- **note:** StateFlow<String> - The current note value.

##### Functions:

- **onNoteChange(newNoteText: String):** Updates the note value.

#### EditConsumerName

This sub-component handles the consumer name input for the ingestion. It allows users to enter the name of the person who consumed the substance.

##### Properties:

- **consumerName:** StateFlow<String> - The current consumer name value.

##### Functions:

- **onConsumerNameChange(newName: String):** Updates the consumer name value.

#### CustomUnitSelector

This sub-component handles the selection of a custom unit for the ingestion. It displays a list of available custom units and allows users to select one.

##### Properties:

- **otherCustomUnits:** StateFlow<List<CustomUnit>> - A list of custom units filtered based on the selected substance and administration route.
- **selectedCustomUnit:** StateFlow<CustomUnit?> - The currently selected custom unit.

##### Functions:

- **onCustomUnitChange(newCustomUnit: CustomUnit?):** Updates the selected custom unit.

#### DoneButton

This sub-component handles the completion button functionality. It allows users to save or delete the ingestion entry based on user input.

##### Properties:

- **ingestion:** StateFlow<Ingestion?> - The current ingestion entry being edited.

##### Functions:

- **onDoneTap():** Saves or deletes the ingestion entry based on user input.
- **deleteIngestion():** Deletes the current ingestion entry.

## Context

To fully understand and use this code, a basic understanding of Jetpack Compose for building UIs in Android applications is required. Additionally, familiarity with the architecture components such as ViewModel and LiveData is beneficial.

