## Overview

The `CustomSubstanceChooseDoseViewModel.kt` file contains a ViewModel for managing the state and logic of the Custom Substance Dose Screen in the PsychonautWiki Journal application. This ViewModel is part of the Hilt dependency injection framework, ensuring that it can be easily managed and injected into the UI components.

## Classes/Types

### CustomSubstanceChooseDoseViewModel

The `CustomSubstanceChooseDoseViewModel` class extends `ViewModel` and provides data and logic for the Custom Substance Dose Screen. It uses a `SavedStateHandle` to retrieve route parameters from the navigation graph and an `ExperienceRepository` to fetch custom substance details.

#### Properties

- **substanceName**: A mutable state property holding the name of the custom substance.
- **administrationRoute**: An immutable property representing the administration route for the dose (e.g., Insufflated, Rectal).
- **units**: A mutable state property holding the units for the dose (default is "mg").
- **isEstimate**: A mutable state property indicating whether the dose is an estimate.
- **doseText**: A mutable state property holding the pure dose amount as a string.
- **estimatedDoseDeviationText**: A mutable state property holding the estimated standard deviation as a string.
- **purityText**: A mutable state property holding the purity percentage as a string.
- **impureDoseWithUnit**: A calculated read-only property representing the impure dose amount and units.
- **dose**: A calculated read-only property converting `doseText` to a `Double`.
- **estimatedDoseStandardDeviation**: A calculated read-only property converting `estimatedDoseDeviationText` to a `Double`.
- **isValidDose**: A calculated read-only property indicating whether the dose is valid.

#### Methods/Functions

- **onDoseTextChange(newDoseText: String)**: Updates the `doseText` with new text, replacing commas with dots for numerical parsing.
- **onEstimatedDoseStandardDeviationTextChange(newDeviationText: String)**: Updates the `estimatedDoseDeviationText` with new text, replacing commas with dots for numerical parsing.
- **init**: Initializes the ViewModel by retrieving the route parameters and fetching custom substance details using the `ExperienceRepository`.

## Methods/Functions

### onDoseTextChange

Updates the pure dose amount with new text.

**Parameters:**

- `newDoseText`: The new dose amount as a string.

### onEstimatedDoseStandardDeviationTextChange

Updates the estimated standard deviation with new text.

**Parameters:**

- `newDeviationText`: The new deviation amount as a string.

