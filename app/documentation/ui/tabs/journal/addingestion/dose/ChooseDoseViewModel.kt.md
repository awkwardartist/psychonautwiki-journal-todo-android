# ChooseDoseViewModel.kt

## Overview

The `ChooseDoseViewModel` class is a component of the ViewModel architecture designed for managing the state and behavior related to choosing and logging doses in an application, presumably a journaling or logging app focused on substance use.

This ViewModel is specifically responsible for handling user interactions, such as entering a dose amount and purity percentage, and determining the appropriate dosage classification based on predefined criteria. It also handles the decision-making process when a user doesn't know the exact dose, prompting them to log an unknown dose with a warning about potential risks.

## Classes/Types

### ChooseDoseViewModel

- **Description**: The main ViewModel class for handling logic related to choosing and logging doses.
- **Properties**:
  - `substanceName`: A string representing the name of the substance being logged.
  - `doseAmount`: A float representing the amount of the substance dosed.
  - `purityPercentage`: A string representing the purity percentage of the substance. It is formatted as a decimal (e.g., "0.95" for 95%).
  - `isValidDoseAndPurity`: A boolean indicating whether the entered dose and purity are valid based on predefined rules.
  - `doseClassification`: A string representing the classification of the dose, such as "unknown", "low", "medium", or "high".
- **Methods/Functions**:
  - `onDoseEntered(dose: String)`: Updates the `doseAmount` and checks if it's valid.
  - `onPurityEntered(purity: String)`: Updates the `purityPercentage` and checks if it's valid.
  - `getClassification()`: Determines the dosage classification based on the current dose amount and purity percentage.
  - `isUnknownDose(): Boolean`: Checks if the substance name is "Unknown".
  - `shouldShowWarning(): Boolean`: Determines whether a warning about potential risks should be shown to the user.

### DoseClassification

- **Description**: An enum class representing different dosage classifications based on predefined criteria.
- **Values**:
  - `UNKNOWN`
  - `LOW`
  - `MEDIUM`
  - `HIGH`

## Methods/Functions

### onDoseEntered(dose: String)

- **Description**: Updates the dose amount and checks its validity.
- **Parameters**:
  - `dose`: A string representing the entered dose amount.
- **Returns**: Unit

### onPurityEntered(purity: String)

- **Description**: Updates the purity percentage and checks its validity.
- **Parameters**:
  - `purity`: A string representing the entered purity percentage.
- **Returns**: Unit

### getClassification()

- **Description**: Determines the dosage classification based on the current dose amount and purity percentage.
- **Returns**: A DoseClassification value indicating the classification of the dose.

### isUnknownDose(): Boolean

- **Description**: Checks if the substance name is "Unknown".
- **Returns**: Boolean

### shouldShowWarning(): Boolean

- **Description**: Determines whether a warning about potential risks should be shown to the user.
- **Returns**: Boolean

## Dependencies

The `ChooseDoseViewModel` class relies on several dependencies, including:

- `SubstanceRepository`: A repository for accessing substance-related data.
- `DoseClassification`: An enum class representing different dosage classifications.

These dependencies are injected into the ViewModel through constructor injection. The ViewModel also utilizes other components such as `LocalFocusManager` for managing focus in text inputs and `ViewModelProvider.Factory` for creating instances of the ViewModel.

## Usage

The `ChooseDoseViewModel` is typically used within a View that displays UI elements for entering a dose amount, purity percentage, and a button to log the dose. The ViewModel provides data and logic to determine the appropriate dosage classification and handle potential risks associated with logging an unknown dose.

When a user enters a dose and purity, the `onDoseEntered` and `onPurityEntered` methods are called to update the ViewModel's state. The `getClassification` method is then used to determine the dosage classification based on the current state. If the substance name is "Unknown", the `isUnknownDose` method returns true, and a dialog prompting the user to log an unknown dose is displayed.

Overall, the `ChooseDoseViewModel` provides the core logic and data management required for logging doses in an application focused on substance use.

