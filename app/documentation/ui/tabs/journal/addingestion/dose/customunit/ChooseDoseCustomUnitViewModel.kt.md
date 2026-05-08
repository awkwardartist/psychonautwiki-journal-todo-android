# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/addingestion/dose/customunit/ChooseDoseCustomUnitViewModel.kt

## Overview

The `ChooseDoseCustomUnitViewModel` class is a ViewModel responsible for managing the state and logic related to selecting a custom unit dose for an experience. It interacts with repositories to fetch necessary data and handles user input.

## Classes/Types

### ChooseDoseCustomUnitViewModel

This is the main class of the file, extending `ViewModel`. It manages the state and business logic for selecting a custom unit dose.

#### Properties

- **customUnit**: A nullable property holding the selected `CustomUnit`.
- **doseRemark**: A nullable string to hold any dosage remark associated with the custom unit.
- **roaDose**: An optional `RoaDose` object representing the route of administration (ROA) dose data.
- **doseText**: A mutable state variable storing the user input for the dose amount, as a string.
- **isEstimate**: A boolean indicating whether the dose is an estimate or actual value.
- **estimatedDoseDeviationText**: A mutable state variable storing the user input for the estimated standard deviation, as a string.

#### Initialization

The ViewModel's constructor takes instances of `ExperienceRepository` and `SubstanceRepository`. It retrieves a custom unit based on a custom unit ID provided through the `SavedStateHandle`.

### CustomUnitDose (Extension)

A private extension property that calculates and returns a `CustomUnitDose` object based on the current state.

## Methods/Functions

### init

This function is called during ViewModel initialization. It retrieves the selected custom unit from the repository and sets it as the `customUnit`. If the custom unit exists, it fetches the associated substance's dosage remark and ROA dose data.

### onDoseTextChange

Handles changes to the user input for the dose amount. Updates the `doseText` property with the new value.

### onEstimatedDoseDeviationChange

Handles changes to the user input for the estimated standard deviation. Updates the `estimatedDoseDeviationText` property with the new value.

### isValidDose

Calculates and returns whether the current dose is a valid numeric value (i.e., not null).

### customUnitCalculationText

Generates a human-readable string describing the calculation of the custom unit dose based on its dose, estimated standard deviation, and the custom unit itself. This involves converting doses to the new unit if necessary.

## Dependencies

- `ExperienceRepository`: Used to fetch custom units.
- `SubstanceRepository`: Used to fetch substance details, including dosage remarks and ROA doses.
- `SavedStateHandle`: Passed through constructor for accessing route parameters.

This ViewModel provides a comprehensive solution for managing the logic related to selecting a custom unit dose in the context of an experience entry within the PsychonautWiki Journal application.

