# NextFAB.kt

## Overview

`NextFAB.kt` contains a Composable function that represents a floating action button (FAB) designed for navigation purposes. The FAB is used to navigate to the next screen or perform an action within the current context. It utilizes Material 3 components for its design, ensuring a consistent and modern look across the application.

## Classes/Types

### NextFAB

- **Composable**: This function can be composed into a UI element that represents a floating action button specifically designed for navigation purposes.
- **Parameters**:
  - `navigateToNext`: A lambda function with no parameters that defines the action to be performed when the FAB is clicked. This could involve navigating to another screen or performing an in-app action.

## Methods/Functions

### ExtendedFloatingActionButton

- **Description**: A Composable function from Material 3's Button component library that represents a floating action button (FAB) with extended features.
- **Parameters**:
  - `onClick`: A lambda function that defines the action to be performed when the FAB is clicked. This function takes no parameters and returns nothing.
  - `icon`: A composable lambda function that defines the icon displayed on the FAB. In this case, it displays an icon from the Material Icons set indicating navigation direction.
    - The icon uses `Icons.AutoMirrored.Filled.NavigateNext` which automatically mirrors itself based on the layout direction of the application.
  - `text`: A composable lambda function that defines the text displayed on the FAB. In this case, it simply displays the word "Next".

## Usage

To use the `NextFAB`, you would typically include it in your Jetpack Compose UI hierarchy where you need a navigation-focused FAB. Here is an example of how to call it:

```kotlin
NextFAB(navigateToNext = {
    // Define action to perform on click
    navigateToNextScreen()
})
```

In this example, `navigateToNext` is a lambda function that handles the logic for what happens when the FAB is clicked. This could involve calling another function like `navigateToNextScreen()` to navigate to the next screen in your application.

## Dependencies

This file leverages Material 3 components for its UI construction. To use these components, ensure you have Material 3 dependencies included in your project's build.gradle files:

```groovy
dependencies {
    implementation 'com.google.android.material:material:1.5.0'
}
```

Ensure that the version is compatible with the rest of your project dependencies.

