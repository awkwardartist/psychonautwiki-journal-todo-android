## Overview

The `FinishAddCustomUnitScreen.kt` file provides the user interface for adding a new custom unit of substance ingestion in the PsychonautWiki Journal application. This screen allows users to input details such as substance name, administration route, dose, units, estimated dose deviation, archive status, and notes. The UI is built using Jetpack Compose.

## Classes/Types

### FinishAddCustomUnitScreen

This is a composable function that represents the user interface for adding a new custom unit of substance ingestion. It takes a `FinishAddCustomUnitViewModel` as a parameter to manage the state and logic related to the screen's operations.

## Methods/Functions

### Overview

- **finishAddCustomUnitRoute**: A property within `FinishAddCustomUnitScreen` that holds information about the route, including the substance name and administration route.
- **substanceName**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing the substance name entered by the user.
- **administrationRoute**: A read-only property in the `FinishAddCustomUnitViewModel` representing the administration route of the substance.
- **substance**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing the substance object, initially set to null and updated when the substance name changes.
- **roaDose**: A computed property in the `FinishAddCustomUnitViewModel` that retrieves the ROA (Route of Administration) dose from the substance based on the administration route.
- **name**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing the custom unit's name entered by the user.
- **isUnitsFieldShown**: A mutable state variable in the `FinishAddCustomUnitViewModel` indicating whether to show the units input field, determined by whether the ROA units are blank or null.
- **currentDoseClass**: A computed property in the `FinishAddCustomUnitViewModel` that retrieves the dose class from the ROA dose based on the ingestion dose.
- **onChangeOfName**: A method in the `FinishAddCustomUnitViewModel` to update the `name` state variable with a new value.
- **unit**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing the unit of measurement entered by the user.
- **onChangeOfUnit**: A method in the `FinishAddCustomUnitViewModel` to update the `unit` and `unitPlural` state variables based on a new unit value.
- **unitPlural**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing the plural form of the unit entered by the user.
- **onChangeOfUnitPlural**: A method in the `FinishAddCustomUnitViewModel` to update the `unitPlural` state variable with a new value.
- **originalUnit**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing the original unit of measurement, initially set to "mg" and updated based on the ROA units or custom substance units.
- **onChangeOfOriginalUnit**: A method in the `FinishAddCustomUnitViewModel` to update the `originalUnit` state variable with a new value.
- **doseText**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing the dose entered by the user as a text string.
- **onChangeOfDose**: A method in the `FinishAddCustomUnitViewModel` to update the `doseText` state variable with a new value and calculate the numeric `dose`.
- **dose**: A computed property in the `FinishAddCustomUnitViewModel` that retrieves the numeric dose from the `doseText`.
- **estimatedDoseDeviationText**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing the estimated dose deviation entered by the user as a text string.
- **onChangeOfEstimatedDoseDeviation**: A method in the `FinishAddCustomUnitViewModel` to update the `estimatedDoseDeviationText` state variable with a new value and calculate the numeric `estimatedDoseDeviation`.
- **estimatedDoseDeviation**: A computed property in the `FinishAddCustomUnitViewModel` that retrieves the numeric estimated dose deviation from the `estimatedDoseDeviationText`.
- **isEstimate**: A mutable state variable in the `FinishAddCustomUnitViewModel` indicating whether the dose is an estimate.
- **onChangeOfIsEstimate**: A method in the `FinishAddCustomUnitViewModel` to update the `isEstimate` state variable with a new value.
- **isArchived**: A mutable state variable in the `FinishAddCustomUnitViewModel` indicating whether the custom unit should be archived.
- **onChangeOfIsArchived**: A method in the `FinishAddCustomUnitViewModel` to update the `isArchived` state variable with a new value.
- **note**: A mutable state variable in the `FinishAddCustomUnitViewModel` representing notes entered by the user.
- **onChangeOfNote**: A method in the `FinishAddCustomUnitViewModel` to update the `note` state variable with a new value.
- **init block**: The initialization block of `FinishAddCustomUnitViewModel`, which sets up initial values for various properties and fetches necessary data based on the route parameters.

## Additional Information

To fully understand the functionality of this code, context from other files related to substance management and navigation would be beneficial.

