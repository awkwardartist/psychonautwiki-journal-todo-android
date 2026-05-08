# EditCustomUnitScreen.kt Documentation

## Overview

`EditCustomUnitScreen.kt` is a Kotlin file that contains the UI component for editing custom units within the PsychonautWiki Journal application. This screen allows users to modify details of an existing custom unit, such as name, dose, and notes, before saving or deleting them.

The component is built using Jetpack Compose, a modern framework for building user interfaces in Android applications. It includes several composables, including `EditCustomUnitScreen`, `EditCustomUnitScreenContent`, and various previews.

## Classes/Types

### EditCustomUnitScreen

**Composable Function:**

```kotlin
@Composable
fun EditCustomUnitScreen(
    navigateBack: () -> Unit,
    viewModel: EditCustomUnitViewModel = hiltViewModel()
)
```

- **Parameters:**
  - `navigateBack`: A lambda function that is called when the user wants to exit the screen, typically used for navigation.
  - `viewModel`: An instance of `EditCustomUnitViewModel` which provides data and logic related to editing custom units.

### EditCustomUnitScreenContent

**Composable Function:**

```kotlin
@Composable
fun EditCustomUnitScreenContent(
    substanceName: String,
    administrationRoute: AdministrationRoute,
    numberOfIngestionsWithThisCustomUnit: Int?,
    padding: PaddingValues = rememberInsetsPaddingValues(),
    roaDose: RoaDose? = null,
    name: String,
    onChangeOfName: (String) -> Unit,
    doseText: String,
    onChangeOfDose: (String) -> Unit,
    estimatedDoseStandardDeviationText: String,
    onChangeOfEstimatedDoseDeviation: (String) -> Unit,
    isEstimate: Boolean,
    onChangeIsEstimate: (Boolean) -> Unit,
    currentDoseClass: DoseClass? = null,
    isShowingUnitsField: Boolean,
    unit: String,
    onChangeOfUnits: (String) -> Unit,
    unitPlural: String,
    onChangeOfUnitPlural: (String) -> Unit,
    originalUnit: String,
    onChangeOfOriginalUnit: (String) -> Unit,
    note: String,
    onChangeOfNote: (String) -> Unit,
    isArchived: Boolean,
    onChangeOfIsArchived: (Boolean) -> Unit
)
```

- **Parameters:** This function takes numerous parameters representing the data and behavior of the custom unit being edited.

## Methods/Functions

### `updateAndDismissAfter`

**ViewModel Method:**

```kotlin
fun updateAndDismissAfter(dismiss: () -> Unit)
```

- **Description:** Updates the current custom unit with the new values provided and then calls the `dismiss` function to navigate away from the screen.
  
### `deleteCustomUnit`

**ViewModel Method:**

```kotlin
fun deleteCustomUnit(dismiss: () -> Unit)
```

- **Description:** Deletes the current custom unit and then calls the `dismiss` function to navigate away from the screen.

## Dependencies

The code depends on several classes and interfaces:
- `ExperienceRepository`
- `SubstanceRepository`
- `SavedStateHandle`
- `EditCustomUnitRoute`
- Various data models such as `CustomUnit`, `AdministrationRoute`, `RoaDose`, etc.
- Jetpack Compose composables like `PaddingValues` and `rememberInsetsPaddingValues()`.
  
To fully understand the functionality, context regarding how these dependencies are integrated into the project would be necessary.

