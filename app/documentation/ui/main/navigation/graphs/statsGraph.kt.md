# ./app/src/main/java/com/isaakhanimann/journal/ui/main/navigation/graphs/statsGraph.kt

## Overview

The `statsGraph.kt` file contains Kotlin code that defines navigation graphs for the stats-related screens of an application, specifically targeting the StatsTopLevelRoute. The primary focus is on managing navigation between different stats-based screens, such as the main StatsScreen and the SubstanceCompanionScreen.

## Classes/Types

### NavGraphBuilder.statsGraph(navController: NavHostController)

- **Description**: This function extends `NavGraphBuilder` to add routes for various stats-related screens. It takes a `navController` of type `NavHostController` as an argument, which is used to handle navigation within the app.
- **Parameters**:
  - `navController`: The instance of `NavHostController` that manages the navigation between destinations.

## Methods/Functions

### StatsScreenRoute

- **Description**: A serializable object representing the route for the main Stats screen. This serves as a reference point in the navigation graph to navigate to the main stats interface.

### SubstanceCompanionRoute(substanceName: String, consumerName: String?)

- **Description**: A serializable data class representing the route for the substance companion screen. It includes parameters for `substanceName` and an optional `consumerName`. This allows specifying which substance and optionally a consumer to display on the substance companion screen.

## Usage Example

To use this navigation graph, you would typically call `statsGraph(navController)` within your top-level navigation graph definition in your application. Once added, you can navigate to these screens using the provided route objects, such as:

```kotlin
navController.navigate(StatsScreenRoute)
```

or

```kotlin
navController.navigate(SubstanceCompanionRoute("Methamphetamine", "John Doe"))
```

## Notes

- The `statsGraph.kt` file is designed to be modular and reusable, making it easier to manage complex navigation scenarios within the application's stats section.
- Ensure that the route objects are correctly referenced when implementing navigation actions in your UI components.

