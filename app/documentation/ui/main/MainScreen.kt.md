## Overview

The `MainScreen.kt` file defines the main user interface component of the PsychonautWiki Journal application, which serves as the entry point for users to interact with various features such as journaling, statistics, search, safer use, and settings. It uses Jetpack Compose for the UI and Hilt for dependency injection.

## Classes/Types

### MainScreen

- **Type**: `@Composable` function
- **Purpose**: Represents the main screen of the application where users can access different features through a navigation suite.
- **Dependencies**:
  - `MainScreenViewModel`: Manages the state and business logic related to accepting conditions.

## Methods/Functions

### MainScreen()

- **Parameters**:
  - `viewModel: MainScreenViewModel = hiltViewModel()`: The view model responsible for managing application data and UI state. Defaults to a Hilt-injected instance.
- **Description**: This is the main composable function that renders the main screen of the application. It conditionally renders either the `AcceptConditionsScreen` if conditions have not been accepted or the navigation suite with tabs otherwise.

### MainScreen()

- **Parameters**:
  - `navController: NavController`: The navigation controller used to manage navigation within the application.
  - `startDestination: NavGraphBuilderScope.() -> Unit`: A lambda function that defines the start destination of the navigation graph.
  - `journalGraph(navController)`: Defines the journaling feature's navigation routes and components.
  - `statsGraph(navController)`: Defines the statistics feature's navigation routes and components.
  - `searchGraph(navController)`: Defines the search feature's navigation routes and components.
  - `saferGraph(navController)`: Defines the safer use feature's navigation routes and components.
  - `settingsGraph(navController)`: Defines the settings feature's navigation routes and components.

- **Description**: This is a nested composable function that sets up the navigation host for different features of the application. It uses a `NavigationSuiteScaffold` to provide a tabbed navigation interface, and it conditionally navigates based on the current selection.

### MainScreenViewModel

- **Type**: `@HiltViewModel` class
- **Purpose**: Manages the state and business logic related to accepting conditions.
- **Dependencies**:
  - `DataStore<Preferences>`: Used for persisting user preferences, specifically whether conditions have been accepted.

- **Properties**:
  - `isAcceptedFlow`: A state flow that emits a boolean indicating whether conditions have been accepted. It uses data stored in `DataStore`.

- **Functions**:
  - `accept()`: Launches a coroutine to set the condition acceptance flag to true in `DataStore`.

### Methods/Functions

- **Constructor**: Takes a `DataStore<Preferences>` as a parameter.
- **isAcceptedFlow**: A state flow that maps preferences to whether conditions have been accepted and provides initial value.
- **accept()**: Updates the data store with the condition acceptance flag set to true.

## Additional Notes

For full functionality, this screen requires navigation components like `NavController` and dependencies on other files such as `AcceptConditionsScreen`, various graph definitions (`journalGraph`, `statsGraph`, etc.), and view models. The exact implementation of these components is not provided in the given context.

