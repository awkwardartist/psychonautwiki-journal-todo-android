# composableWithTransitions.kt

## Overview
The `composableWithTransitions` function is a custom Compose navigation composable designed to provide smooth visual transitions between different screens within the app's navigation hierarchy. This function allows for both within-tab and between-tab transitions, enhancing the user experience by providing a visually appealing way to navigate through the application.

## Classes/Types
### `AnimatedContentTransitionScope`
- **Type**: Extension scope of `AnimatedContentTransitionScope<NavBackStackEntry>`
- **Description**: Provides access to transition properties for the animated content being displayed.

### `NavBackStackEntry`
- **Type**: Represents a back stack entry, which includes the current destination and its arguments.
- **Description**: Used by `AnimatedContentTransitionScope` to determine the initial and target states of the navigation transition.

## Methods/Functions
### `composableWithTransitions`
- **Signature**: `inline fun <reified T : Any> NavGraphBuilder.composableWithTransitions(noinline content: @Composable (AnimatedVisibilityScope.(NavBackStackEntry) -> Unit))`
- **Description**: Creates a composable that applies custom transition animations to the specified destination.
- **Parameters**:
  - `T`: The type of the destination being composited. Must be annotated with `@Serializable`.
  - `content`: A lambda function defining the content to be composited, which includes transitions for entering, exiting, popping in, and popping out of the destination.

### `isChangingTab`
- **Signature**: `fun AnimatedContentTransitionScope<NavBackStackEntry>.isChangingTab(): Boolean`
- **Description**: Determines if the current transition involves changing between different top-level tabs.
- **Return Value**:
  - `Boolean`: `true` if the transition involves changing tabs, otherwise `false`.

## Usage
The `composableWithTransitions` function is used within a `NavGraphBuilder` to define navigable composables with custom transition effects. This enhances the visual consistency and user experience of navigation within the app.

```kotlin
navGraph.composableWithTransitions<MyDestinationRoute> { scope, entry ->
    MyScreen(content = scope.someContent(entry))
}
```

In this example, `MyDestinationRoute` is a type that represents a serializable destination route, and `MyScreen` is a composable function that takes the content to be displayed within the destination.

## Additional Information
- **Dependencies**: This code relies on Compose's animation APIs for defining transition effects.
- **Configuration**: The transition timing (e.g., `withinTabTransitionTimeInMs`, `tabSwitchTimeInMs`) can be adjusted based on the specific requirements of the application.

