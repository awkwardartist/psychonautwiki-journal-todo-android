# searchGraph.kt

## Overview

The `searchGraph.kt` file contains Kotlin code that defines a navigation graph for searching substances within an application. This file is part of a larger system designed to manage drug-related information, providing users with a structured way to navigate through different screens and actions related to substance data.

The primary focus of this file is on the `searchGraph` function, which sets up the navigation structure for the Drugs top-level route, including various screens such as searching substances, viewing specific substances, editing custom substances, and adding new custom substances. The navigation paths are defined using a serializable class system to ensure type safety during navigation.

## Classes/Types

### DrugsTopLevelRoute (Serializable)

Represents the top-level route for the drugs section of the application. This is used as the starting point for the navigation graph defined within this file.

### DrugsScreenRoute (Serializable)

Represents the route for the main search screen where users can enter substance names or access custom substances.

### SubstanceRoute (Serializable)

Represents a specific substance screen, identified by its name. Users navigate to this screen to view details about a particular drug.

### CategoryRoute (Serializable)

Represents a category screen, allowing users to browse substances within a specific category.

### EditCustomSubstanceRoute (Serializable)

Represents the route for editing a custom substance, identified by its ID.

### AddCustomSubstanceRouteOnSearchGraph (Serializable)

Represents the route for adding a new custom substance while navigating through the search graph.

### VolumetricDosingOnSearchTabRoute (Serializable)

Represents the route for viewing volumetric dosing information related to substances while in the search tab of the drugs section.

### ExplainTimelineOnSearchTabRoute (Serializable)

Represents the route for explaining timelines related to substances while in the search tab of the drugs section.

### DosageExplanationRouteOnSearchTab (Serializable)

Represents the route for viewing dosage explanation information related to substances while in the search tab of the drugs section.

## Methods/Functions

### searchGraph (NavGraphBuilder, NavHostController)

This is the primary function that sets up the navigation graph for the Drugs top-level route. It defines a series of composable screens and their corresponding routes, facilitating transitions between different parts of the application related to substance searching and management.

#### Parameters:

- `navGraphBuilder`: An instance of `NavGraphBuilder` used to define the navigation graph.
- `navHostController`: An instance of `NavHostController` that controls navigation within this graph.

#### Key Composable Screens Defined:

1. **SearchScreen (DrugsScreenRoute)**: The main screen where users can search for substances or access custom substances.
2. **SubstanceScreen (SubstanceRoute)**: A detailed view of a specific substance, including options to navigate further.
3. **CategoryScreen (CategoryRoute)**: A screen displaying substances grouped by categories.
4. **EditCustomSubstanceScreen (EditCustomSubstanceRoute)**: A screen for editing existing custom substances.
5. **AddCustomSubstanceScreen (AddCustomSubstanceRouteOnSearchGraph)**: A screen for adding new custom substances while navigating through the search graph.

Each composable function is responsible for rendering its respective UI and handling user interactions, such as navigation to other screens or performing actions related to substance data.

This setup ensures that users can efficiently navigate and interact with substance-related information within the application, providing a structured and intuitive experience.

