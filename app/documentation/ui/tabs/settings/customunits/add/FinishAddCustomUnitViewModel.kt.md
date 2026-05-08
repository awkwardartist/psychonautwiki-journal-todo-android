# FinishAddCustomUnitViewModel

## Overview

The `FinishAddCustomUnitViewModel` class serves as a ViewModel for handling the logic related to finishing the process of adding a custom unit in the PsychonautWiki Journal application. It is responsible for managing state, interacting with repositories, and performing operations such as creating and saving custom units.

## Classes/Types

### FinishAddCustomUnitViewModel

This is the main class of the ViewModel which extends `ViewModel`. It contains various properties to manage state and perform actions related to adding a custom unit.

#### Properties

- **substanceName** (`var`): A mutable property representing the name of the substance.
- **administrationRoute** (`val`): An immutable property representing the administration route (e.g., oral, intravenous).
- **substance** (`var`): A mutable property representing the substance object associated with the custom unit.
- **roaDose** (`get`): A getter that returns the ROA (Receptor Occupancy and Activity) dose based on the substance and administration route.
- **name** (`var`): A mutable property representing the name of the custom unit.
- **isUnitsFieldShown** (`var`): A mutable property indicating whether the units field should be shown or not.
- **currentDoseClass** (`get`): A getter that returns the dose class based on the ROA dose and ingestion dose.
- **unit** (`var`): A mutable property representing the unit of measurement for the custom unit.
- **unitPlural** (`var`): A mutable property representing the plural form of the unit.
- **originalUnit** (`var`): A mutable property representing the original unit of measurement.
- **doseText** (`var`): A mutable property representing the dose value as a string.
- **estimatedDoseDeviationText** (`var`): A mutable property representing the estimated dose deviation value as a string.
- **isEstimate** (`var`): A mutable property indicating whether the dose is an estimate or not.
- **isArchived** (`var`): A mutable property indicating whether the custom unit should be archived.
- **note** (`var`): A mutable property representing any additional notes for the custom unit.

## Methods/Functions

### onChangeOfName(newName: String)

This method updates the `name` property with the new name provided as an argument.

### onChangeOfUnit(newUnit: String)

This method updates the `unit`, `unitPlural`, and `originalUnit` properties based on the new unit provided as an argument. It also handles pluralization for units that don't end with 's'.

### onChangeOfUnitPlural(newUnit: String)

This method updates the `unitPlural` property with the new plural form of the unit.

### onChangeOfOriginalUnit(newUnit: String)

This method updates the `originalUnit` property with the new original unit provided as an argument.

### onChangeOfDose(newDose: String)

This method updates the `doseText` property with the new dose value provided as an argument.

### onChangeOfEstimatedDoseDeviation(newEstimatedDoseDeviation: String)

This method updates the `estimatedDoseDeviationText` property with the new estimated dose deviation value provided as an argument.

### onChangeOfIsEstimate(newIsEstimate: Boolean)

This method updates the `isEstimate` property with the new boolean value indicating whether the dose is an estimate or not.

### onChangeOfIsArchived(newIsArchived: Boolean)

This method updates the `isArchived` property with the new boolean value indicating whether the custom unit should be archived.

### onChangeOfNote(newNote: String)

This method updates the `note` property with the new note provided as an argument.

### createSaveAndDismissAfter(dismiss: (customUnitId: Int) -> Unit)

This function is used to save and dismiss the ViewModel after creating a new custom unit. It takes a lambda function `dismiss` as a parameter which will be called with the ID of the newly created custom unit once it has been saved.

## Dependencies

- **ExperienceRepository**: Used for inserting custom units into the database.
- **SubstanceRepository**: Used to retrieve substance objects based on their name.
- **SavedStateHandle**: Provides access to the arguments passed to the ViewModel.

This documentation provides a comprehensive overview of the `FinishAddCustomUnitViewModel` class, detailing its properties, methods, and dependencies.

