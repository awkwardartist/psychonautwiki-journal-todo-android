## saferGraph.kt

### Overview

The `saferGraph.kt` file defines a navigation graph for handling routes related to safety and well-being within an application, specifically focusing on features like safer consumption of substances.

### Classes/Types

#### Navigation Routes

1. **DrugsTopLevelRoute**: Represents the top-level route for drugs-related features.
2. **SaferScreenRoute**: Represents the main screen for safer substance use.

### Methods/Functions

#### `navigation`

- **Parameters**:
  - `startDestination`: The starting route in the graph, defaulting to `SaferScreenRoute`.

- **Description**:
  This function sets up a navigation graph with the specified start destination and includes routes related to substance safety. It calls `addSubstanceSafetyGraph` to add further sub-routes.

#### `addSubstanceSafetyGraph`

- **Parameters**:
  - `navController`: The NavController used for navigating between routes.

- **Description**:
  This function adds routes specific to substance safety features, including screens for safer consumption guidance and other related content.

### Detailed Documentation

The `saferGraph.kt` file is dedicated to managing navigation routes specifically for substance safety. It defines a top-level route (`DrugsTopLevelRoute`) that leads to the main screen for safer substance use (`SaferScreenRoute`). The `navigation` function sets up this initial route and calls `addSubstanceSafetyGraph` to add additional routes related to substance safety features.

#### `navigation`

The `navigation` function is a top-level function that initializes the navigation graph. It takes an optional parameter `startDestination`, which defaults to `SaferScreenRoute`. This function sets up the navigation configuration for the safer-related content and calls `addSubstanceSafetyGraph` to populate it with more specific routes.

#### `addSubstanceSafetyGraph`

The `addSubstanceSafetyGraph` function is a nested function within `navigation` that adds detailed routes related to substance safety. It takes a single parameter, `navController`, which is used to manage navigation between these routes. This function could include additional methods or functions for adding specific sub-routes such as guidance screens, FAQs, or educational resources related to safer substance use.

### Example Usage

To utilize the routes defined in this file, you would typically call the `navigation` function with an instance of `NavController`. Here is a basic example:

```kotlin
val navController = rememberNavController()
NavHost(navController = navController, startDestination = SaferScreenRoute) {
    saferGraph(navController)
}
```

This setup initializes the navigation host and starts at the main safer screen, navigating to sub-routes as needed based on user interactions or application logic.

