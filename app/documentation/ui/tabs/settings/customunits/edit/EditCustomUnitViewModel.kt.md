# Overview

The `EditCustomUnitViewModel` class is a ViewModel designed for managing the state of an editing screen within a custom unit in the PsychonautWiki Journal application. This ViewModel handles data related to substances, doses, and their administration routes. It interacts with repositories to fetch and update data asynchronously.

## Classes/Types

### EditCustomUnitViewModel

- **Package**: com.isaakhanimann.journal.ui.tabs.settings.customunits.edit
- **Annotations**:
  - `@HiltViewModel` (from dagger.hilt.android.lifecycle)
- **Fields**:
  - `customUnit`: The custom unit being edited.
  - `roaDose`: The route of administration dose information.
  - `name`, `numberOfIngestionsWithThisCustomUnit`, `substanceName`, `administrationRoute`: Various data points about the substance and its usage.
  - `unit`, `unitPlural`, `originalUnit`: Information about units used in dosage.
  - `doseText`, `estimatedDoseDeviationText`: Text representations of dose values.
  - `isEstimate`, `isArchived`, `note`: Flags for estimation status, archiving, and notes.

### Dependencies

- **Repositories**:
  - `ExperienceRepository`: Used to interact with experience data.
  - `SubstanceRepository`: Used to retrieve substance information.
- **Hilt**: For dependency injection.

## Methods/Functions

### Constructor

```kotlin
@HiltViewModel
class EditCustomUnitViewModel @Inject constructor(
    private val experienceRepo: ExperienceRepository,
    substanceRepository: SubstanceRepository,
    state: SavedStateHandle
) : ViewModel()
```

**Description**: Initializes the ViewModel with dependencies and retrieves custom unit data based on the provided route.

### Initialization

- **Coroutine Scope**: `viewModelScope`
- **Functionality**:
  - Parses a route to get the custom unit ID.
  - Fetches the custom unit from the repository along with its ingestions.
  - Populates the ViewModel's fields with data from the custom unit and related substance information.

### Data Update

```kotlin
fun updateAndDismissAfter(dismiss: () -> Unit)
```

**Description**: Updates the custom unit in the database with current ViewModel state and then dismisses the editing screen.

- **Coroutine Scope**: `viewModelScope`
- **Functionality**:
  - Checks if a custom unit exists.
  - Updates the custom unit's properties with values from the ViewModel.
  - Calls the `dismiss` lambda to navigate away from the edit screen.

### Data Deletion

```kotlin
fun deleteCustomUnit(dismiss: () -> Unit)
```

**Description**: Deletes the current custom unit and then dismisses the editing screen.

- **Coroutine Scope**: `viewModelScope`
- **Functionality**:
  - Checks if a custom unit exists.
  - Deletes the custom unit from the database.
  - Calls the `dismiss` lambda to navigate away from the edit screen.

### State Management

```kotlin
fun onChangeOfName(newName: String)
fun onChangeOfUnit(newUnit: String)
fun onChangeOfUnitPlural(newUnit: String)
fun onChangeOfOriginalUnit(newUnit: String)
fun onChangeOfDose(newDose: String)
fun onChangeOfEstimatedDoseDeviation(newEstimatedDoseDeviation: String)
fun onChangeOfIsEstimate(newIsEstimate: Boolean)
fun onChangeOfIsArchived(newIsArchived: Boolean)
fun onChangeOfNote(newNote: String)
```

**Description**: Update ViewModel state variables based on user input.

- **Parameters**:
  - `newName`, `newUnit`, `newUnitPlural`, `newOriginalUnit`: New values for units and their plurals.
  - `newDose`, `newEstimatedDoseDeviation`: New text representations of dose values.
  - `newIsEstimate`, `newIsArchived`: Boolean flags to update estimation status and archiving.
  - `newNote`: A new note string.

## Usage

The `EditCustomUnitViewModel` should be used in conjunction with the corresponding UI component to handle user interactions and data updates related to custom units. It interacts with repositories to retrieve initial data and persist any changes made by the user.

For context, this ViewModel requires a `SavedStateHandle` to navigate between screens and pass data effectively.

