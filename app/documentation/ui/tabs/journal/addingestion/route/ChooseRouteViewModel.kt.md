# ChooseRouteViewModel

## Overview

The `ChooseRouteViewModel` class is a ViewModel designed to manage the state and logic for selecting an administration route during the ingestion process in a mobile application. This ViewModel uses dependency injection with Hilt and utilizes data from a substance repository to determine available routes based on a specific substance.

This ViewModel plays a crucial role in providing data-driven UI updates, handling user interactions related to route selection, and ensuring the data remains consistent across different screens or components within the application.

## Classes/Types

### ChooseRouteViewModel

- **Description**: A ViewModel class that manages the state for selecting an administration route during substance ingestion.
- **Annotations**: 
  - `@HiltViewModel`: This annotation indicates that this class is a ViewModel and will be automatically injected by Hilt.

### Dependencies

- **SubstanceRepository**: Provides data related to substances, including their available routes (ROAs).
- **SavedStateHandle**: Used for passing data between UI components and preserving state across activity/fragment recreations.

## Methods/Functions

### Constructor

```kotlin
@Inject constructor(substanceRepo: SubstanceRepository, state: SavedStateHandle)
```

- **Description**: Initializes the `ChooseRouteViewModel` with a `SubstanceRepository` instance and a `SavedStateHandle`.
- **Parameters**:
  - `substanceRepo`: An instance of `SubstanceRepository` used to fetch substance-related data.
  - `state`: A `SavedStateHandle` that provides access to arguments passed to the ViewModel.

### Properties

#### route

```kotlin
val route: String?
```

- **Description**: Holds the current route associated with the ViewModel. This is derived from the `SavedStateHandle`.

#### substanceName

```kotlin
val substanceName: String
```

- **Description**: Retrieves the name of the substance for which routes are being selected.

#### substance

```kotlin
val substance: Substance?
```

- **Description**: Fetches the substance data from the repository using the `substanceName`.

### State Variables

#### showOtherRoutes

```kotlin
var showOtherRoutes by mutableStateOf(false)
```

- **Description**: A state variable that controls whether less common routes should be displayed in addition to the default ones.

#### pwRoutes

```kotlin
val pwRoutes: List<AdministrationRoute>
```

- **Description**: Lists the preferred or standard administration routes for the substance. These are extracted from the substance's ROAs.

#### otherRoutes

```kotlin
private val otherRoutes: List<AdministrationRoute>
```

- **Description**: A private list containing all possible administration routes that are not considered preferred.

#### otherRoutesChunked

```kotlin
val otherRoutesChunked: List<List<AdministrationRoute>>
```

- **Description**: Groups the non-preferred routes into chunks of two for display purposes.

#### isShowingInjectionDialog

```kotlin
var isShowingInjectionDialog by mutableStateOf(false)
```

- **Description**: A state variable that controls whether a dialog about safer injection practices should be displayed.

#### currentRoute

```kotlin
var currentRoute by mutableStateOf(AdministrationRoute.INTRAVENOUS)
```

- **Description**: Holds the currently selected administration route. Default is `INTRAVENOUS`.

## Example Usage

To use this ViewModel in an Android component (e.g., a Fragment or Composable), you would typically inject it using Hilt and then access its properties and methods to manage state and handle user interactions.

```kotlin
@Composable
fun RouteSelectionScreen() {
    val viewModel: ChooseRouteViewModel = hiltViewModel()

    // Observe changes in the current route and display logic here
}
```

This documentation provides a comprehensive overview of the `ChooseRouteViewModel`, detailing its purpose, dependencies, properties, and methods.

