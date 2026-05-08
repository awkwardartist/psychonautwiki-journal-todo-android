# CustomUnitArchiveViewModel.kt Documentation

## Overview

The `CustomUnitArchiveViewModel` is a ViewModel class responsible for managing the state of custom units that are archived within the PsychonautWiki Journal application. It interacts with an `ExperienceRepository` to retrieve custom unit data.

## Classes/Types

### CustomUnitArchiveViewModel

#### Description

This ViewModel class manages the state and logic related to custom unit archiving in the journal. It provides a flow of custom units, which can be observed by UI components to update the display.

#### Properties

- `customUnitsFlow`: A `StateFlow` that emits a list of custom units. This list includes only those units that are archived.

#### Methods/Functions

- **Constructor**

  ```kotlin
  @Inject constructor(
      experienceRepository: ExperienceRepository,
  )
  ```

  Initializes the ViewModel with an instance of `ExperienceRepository`. The repository is used to fetch custom unit data.

- **getCustomUnitsFlow**

  ```kotlin
  val customUnitsFlow: StateFlow<List<CustomUnit>>
  ```

  Returns a `StateFlow` that emits a list of archived custom units. This flow is statefully collected and shared, with a start delay of 5000 milliseconds.

### CustomUnit

#### Description

This data class represents a custom unit used in the journal. It includes details such as substance name, name, administration route, dose, and more.

#### Properties

- `substanceName`: The name of the substance.
- `name`: The display name of the custom unit.
- `administrationRoute`: The method of administration (e.g., oral, intravenous).
- `dose`: The dose amount for the custom unit.
- `estimatedDoseStandardDeviation`: The standard deviation for the estimated dose.
- `isEstimate`: A flag indicating if the dose is an estimate.
- `isArchived`: A flag indicating if the custom unit is archived.
- `unit`: The primary unit of measurement.
- `unitPlural`: The plural form of the unit.
- `originalUnit`: The original unit used before conversion.
- `note`: Any additional notes associated with the custom unit.

## Usage Context

To use this ViewModel, an instance of it should be injected using Hilt. The ViewModel provides a flow that UI components can observe to display archived custom units. This ensures that the UI is always in sync with the state managed by the ViewModel.

