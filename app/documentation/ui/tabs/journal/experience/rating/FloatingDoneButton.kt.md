# FloatingDoneButton.kt

## Overview

The `FloatingDoneButton.kt` file contains a Composable function named `FloatingDoneButton`, which is used to create an Extended Floating Action Button (FAB) that can be displayed on the screen for user interaction.

This FAB displays a "Done" icon and text, triggering the provided `onDone` lambda function when clicked. The button is styled using Material 3 theme attributes and follows accessibility best practices.

## Classes/Types

### FloatingDoneButton

- **Type**: Composable Function
- **Parameters**:
  - `onDone`: A lambda function that gets called when the FAB is clicked.
  - `modifier`: An optional Modifier to customize the appearance or behavior of the button.
- **Description**: 
  The `FloatingDoneButton` composable function constructs an Extended FAB with a "Done" icon and text. When the button is pressed, it triggers the provided `onDone` lambda function.

## Methods/Functions

### FloatingDoneButton Composable Function

- **Parameters**:
  - `onDone`: A lambda function that gets called when the FAB is clicked.
  - `modifier`: An optional Modifier to customize the appearance or behavior of the button.
- **Returns**: 
  Nothing (Unit).

- **Implementation**:

```kotlin
@Composable
fun FloatingDoneButton(onDone: () -> Unit, modifier: Modifier = Modifier) {
    ExtendedFloatingActionButton(
        modifier = modifier,
        onClick = onDone,
        icon = {
            Icon(
                Icons.Filled.Done,
                contentDescription = "Done"
            )
        },
        text = { Text("Done") }
    )
}
```

- **Explanation**:
  The `FloatingDoneButton` function takes two parameters: `onDone`, which is a lambda that gets executed when the button is clicked, and `modifier`, an optional parameter used to provide additional styling or behavior. Inside the function, it uses Material 3's `ExtendedFloatingActionButton` composable to create the FAB with a "Done" icon and text.

## Usage Example

Here’s an example of how you might use this `FloatingDoneButton` in a larger Composable function:

```kotlin
@Composable
fun MyScreen() {
    // ...
    FloatingDoneButton(onDone = { 
        // Handle button click here
        println("Done button clicked!")
    })
    // ...
}
```

In this example, clicking the FAB will print "Done button clicked!" to the console.

## Dependencies

- **Material3**: The `FloatingDoneButton` function relies on Material 3 components for styling and accessibility. Ensure that your project includes the appropriate Material 3 dependencies in your build.gradle files.

