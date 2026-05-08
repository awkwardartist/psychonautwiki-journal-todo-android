# `EditIngestionViewModel`

## Overview

The `EditIngestionViewModel` class is a ViewModel for handling the state and business logic of editing an ingestion experience within an application. It manages data related to the ingestion, such as dose, time, notes, and custom units, providing reactive flows and methods to update these states. This ViewModel works closely with the `ExperienceRepository` to interact with persistent storage.

## Classes/Types

### `EditIngestionViewModel`

This is the primary class responsible for managing state and logic related to editing an ingestion experience. It extends `ViewModel`.

#### Properties

- **ingestion**: A nullable property holding the current `Ingestion` object being edited.
- **note**: A mutable state variable storing notes associated with the ingestion.
- **isEstimate**: A mutable state variable indicating whether the dose is an estimate.
- **isKnown**: A mutable state variable indicating whether the dose value is known.
- **dose**: A mutable state variable storing the dose amount as a string.
- **estimatedDoseStandardDeviation**: A mutable state variable storing the estimated dose standard deviation as a string.
- **units**: A mutable state variable storing the units of measurement for the dose.
- **experienceId**: A mutable state variable holding the ID of the experience associated with the ingestion.
- **ingestionTimePickerOptionFlow**: A state flow representing the current option selected in the time picker (point in time or time range).
- **localDateTimeStartFlow**: A state flow storing the start date and time of the ingestion.
- **localDateTimeEndFlow**: A state flow storing the end date and time of the ingestion.
- **consumerName**: A mutable state variable storing the name of the consumer associated with the ingestion.
- **customUnit**: A mutable state variable holding the current `CustomUnit` selected for the ingestion.

#### Computed Properties

- **otherCustomUnits**: A state flow that filters custom units based on the selected substance and administration route, excluding the unit currently being edited.

### `ExperienceOption`

A data class representing an option for an experience in a dropdown menu. It has two properties:

- **id**: An integer representing the ID of the experience.
- **title**: A string representing the title or name of the experience.

## Methods/Functions

### `onDoseChange(newDoseText: String)`

Updates the `dose` property with new text.

### `onChangeEstimatedDoseStandardDeviation(newEstimatedDoseStandardDeviation: String)`

Updates the `estimatedDoseStandardDeviation` property with new text.

### `init`

Initializes the ViewModel by retrieving the ingestion and custom unit data from the repository based on the ID passed via the `SavedStateHandle`.

### `onChangeCustomUnit(newCustomUnit: CustomUnit?)`

Updates the `customUnit` and `units` properties with a new custom unit, if provided.

### `onChangeTimePickerOption(ingestionTimePickerOption: IngestionTimePickerOption)`

Updates the `ingestionTimePickerOptionFlow` state flow with a new option.

### `onChangeStartTime(newLocalDateTime: LocalDateTime)`

Updates the `localDateTimeStartFlow` and adjusts the end time if necessary to ensure it's not before the start time.

### `onChangeEndTime(newLocalDateTime: LocalDateTime)`

Updates the `localDateTimeEndFlow` and adjusts the start time if necessary to ensure it's not after the end time.

### `onChangeConsumerName(newName: String)`

Updates the `consumerName` property with new text, removing any empty strings.

### `toggleIsKnown()`

Toggles the `isKnown` state between true and false.

### `onChangeIsEstimate(newIsEstimate: Boolean)`

Updates the `isEstimate` property with a new boolean value.

### `saveClonedIngestionTime()`

Saves the current ingestion time in preferences using the `UserPreferences`.

### `relevantExperiences`: StateFlow<List<ExperienceOption>>

A state flow representing the list of experience options relevant to the selected date range, which is used for navigation or selection purposes.

### `onDoneTap()`

Updates the current `ingestion` object with the new values from the state variables and saves it using the repository. Deletes the ingestion if it's not valid.

### `deleteIngestion()`

Deletes the current `ingestion` object using the repository.

## Dependencies

- **ExperienceRepository**: Used for data persistence operations.
- **UserPreferences**: Used to save user preferences such as cloned ingestion times.

## Usage Context

This ViewModel is intended to be used in conjunction with a UI component (likely a Jetpack Compose screen) that allows users to edit an existing ingestion experience. It provides reactive bindings and functions necessary for updating the ingestion data, handling custom units, and managing time picker options.

