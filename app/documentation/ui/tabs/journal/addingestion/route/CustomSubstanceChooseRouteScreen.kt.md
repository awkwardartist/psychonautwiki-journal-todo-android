## Overview

The `CustomSubstanceChooseRouteScreen` is a Jetpack Compose UI component designed for selecting an administration route of substance ingestion when dealing with custom substances that do not have predefined routes defined in the application. This screen provides a user-friendly interface to choose from a list of available administration routes.

## Classes/Types

### CustomSubstanceChooseRouteScreen

This is a stateless composable function representing the main UI component of the route selection screen.

#### Parameters
- `onRouteTap: (AdministrationRoute) -> Unit`: A lambda function that gets called when a user selects an administration route. The selected route is passed as a parameter to this function.

## Methods/Functions

### CustomSubstanceChooseRouteScreen

This composable function defines the UI structure and logic for selecting an administration route.

#### Steps
1. **Top App Bar**: Displays a simple title "Route".
2. **Linear Progress Indicator**: Shows a loading indicator indicating that data is being loaded (or a similar state).
3. **Column Layout**: Arranges its children in a vertical column with spacing.
4. **Progress Indication**: A `LinearProgressIndicator` is displayed to indicate progress or loading status.
5. **Route Selection Grid**:
    - Routes are grouped into chunks of two (`chunked(2)`), forming a grid layout.
    - Each route is represented by an `ElevatedCard`.
    - Cards are clickable and trigger the `onRouteTap` lambda with the selected route.

### RouteBox

This composable function renders each administration route in a card format.

#### Parameters
- `route: AdministrationRoute`: The administration route to be displayed.
- `titleStyle: TextStyle`: Styling for the route text title.

#### Behavior
- Displays the route's display text and optionally its description if the screen height is greater than 500 pixels.

### SaferInjectionLink

This composable function provides a clickable link that opens an external URL to safer injection information.

## Usage Context

To use this component, you need to provide a lambda function for `onRouteTap` that will handle the logic after a user selects an administration route. This could include updating the state of your application or navigating to another screen based on the selected route.

This code is part of a larger system designed for managing substance ingestion and requires context from other files, such as navigation, data handling, and UI components to function properly.

