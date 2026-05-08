# AdministrationRoutePicker.kt

## Overview
`AdministrationRoutePicker.kt` is a Kotlin file that provides UI components for selecting an administration route of ingestion (e.g., oral, intravenous) when adding an ingestion record to a journal app. The file includes a stateful ViewModel and a composable function to display and interact with the routes.

## Classes/Types

### AdministrationRoutePickerViewModel
- **Description**: A ViewModel that manages the logic for selecting administration routes.
- **Properties**:
  - `showOtherRoutes`: A mutable state indicating whether other administration routes are shown or not.
  - `pwRoutes`: A list of primary and recommended (PR) administration routes based on a substance's properties.
  - `otherRoutes`: A filtered list of all possible administration routes that are not in the PR list.
  - `otherRoutesChunked`: The other routes chunked into pairs for better UI presentation.
- **Methods**:
  - No custom methods defined at the moment.

### AdministrationRoutePicker
- **Description**: A composable function to display and handle interactions with administration route selection.
- **Parameters**:
  - `showOtherRoutes`: A Boolean value indicating whether other routes should be shown.
  - `onChange`: A lambda that takes an `AdministrationRoute` as a parameter, called when the user selects a route.

## Methods/Functions

### AdministrationRoutePicker
- **Function Signature**: `@Composable fun AdministrationRoutePicker(showOtherRoutes: Boolean = false, onChange: (AdministrationRoute) -> Unit)`
- **Description**: A composable function that renders the UI for selecting an administration route.
- **Implementation**:
  - Displays a linear progress indicator at the top.
  - Conditionally displays an injection dialog if `isShowingInjectionDialog` is true.
  - Calls `AdministrationRoutePicker` with the current state and user interaction logic.

### RouteBox
- **Function Signature**: `@Composable fun RouteBox(route: AdministrationRoute, titleStyle: TextStyle)`
- **Description**: A composable function to render a single route box, which includes the route text and an optional description.
- **Parameters**:
  - `route`: The route object to be displayed.
  - `titleStyle`: The style for the route text.

### SaferInjectionLink
- **Function Signature**: `@Composable fun SaferInjectionLink()`
- **Description**: A composable function that renders a link to a safer injection guide, which can be clicked to open in a browser.
- **Implementation**:
  - Uses `LocalUriHandler` to open the URL when clicked.

## Additional Information
This file is part of a larger application that involves user interactions with substance administration records. It heavily relies on Compose for UI rendering and ViewModel for state management. To fully understand this file, you might need context about other parts of the app that interact with substances and ingestion records.

