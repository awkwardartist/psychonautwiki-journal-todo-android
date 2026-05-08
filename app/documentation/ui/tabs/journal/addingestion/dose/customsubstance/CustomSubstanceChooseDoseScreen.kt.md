## Overview

The `CustomSubstanceChooseDoseScreen.kt` file contains a Composable function that represents a user interface screen for selecting the dosage of a custom substance in an application. The screen allows users to enter a pure dose, specify if the dose is an estimate, and provide additional information such as the purity of the substance.

The screen also includes navigation buttons and provides feedback through UI elements like `LinearProgressIndicator` and `ElevatedCard`. Additionally, it handles the display of explanations related to standard deviation when estimates are used.

## Classes/Types

### CustomSubstanceChooseDoseScreen (Composable Function)

This is a Composable function that represents the user interface screen for selecting the dosage of a custom substance. It includes the following parameters and properties:

- **Parameters:**
  - `padding`: The padding to be applied around the content.

- **Properties:**
  - `focusManager`: The current focus manager instance.
  - `textStyle`: The text style used for various UI components.
  - `mean`: A nullable Double representing the parsed dose value.
  - `standardDeviation`: A nullable Double representing the parsed estimated standard deviation value.
  - `isExplanationShown`: A Boolean indicating whether the standard deviation explanation should be shown.

### LinearProgressIndicator

This UI component is used to display a linear progress indicator, providing visual feedback on the progress of an operation. It takes the following parameter:

- **Parameters:**
  - `progress`: A lambda function that returns the current progress as a Float value between 0 and 1.

### ElevatedCard

This UI component represents a card with elevated styling, used to group related content together. It takes the following parameters:

- **Parameters:**
  - `modifier`: The modifier to be applied to the card.

### OutlinedTextField

This UI component provides an outlined text field for user input. It includes various properties such as:

- **Properties:**
  - `value`: The current value of the text field.
  - `onValueChange`: A lambda function that is called when the value changes.
  - `textStyle`: The style to be applied to the text inside the field.
  - `label`: A composable that provides a label for the text field.
  - `isError`: A Boolean indicating whether the field contains an error.
  - `trailingIcon`: A composable representing the trailing icon of the field.
  - `keyboardActions`: An object defining actions to be taken when certain keys are pressed on the keyboard.
  - `keyboardOptions`: An object defining options for the keyboard such as its type.

### Row

This UI component arranges its children horizontally. It includes various properties such as:

- **Properties:**
  - `verticalAlignment`: The vertical alignment of the children.
  - `horizontalArrangement`: The horizontal arrangement of the children.

### Switch

This UI component provides a toggle switch for boolean values. It takes the following parameters:

- **Parameters:**
  - `checked`: A Boolean indicating whether the switch is checked.
  - `onCheckedChange`: A lambda function that is called when the switch's state changes.

### TextButton

This UI component represents a button with text. It includes various properties such as:

- **Properties:**
  - `onClick`: A lambda function that is called when the button is clicked.
  - `textStyle`: The style to be applied to the text inside the button.

## Methods/Functions

### CustomSubstanceChooseDoseScreen (Composable Function)

This function is a Composable function that represents the user interface screen for selecting the dosage of a custom substance. It includes various UI components and logic to handle user input, navigation, and display feedback.

- **Logic:**
  - Retrieves the current focus manager instance.
  - Defines text styles for UI elements.
  - Parses the dose and estimated standard deviation values from user input.
  - Determines whether the standard deviation explanation should be shown based on the parsed values.
  - Renders a linear progress indicator, elevated cards, outlined text fields, switch, and buttons as part of the UI.

- **UI Elements:**
  - `LinearProgressIndicator`: Displays visual feedback on the progress of an operation.
  - `ElevatedCard`: Groups related content together with elevated styling.
  - `OutlinedTextField`: Allows user input for dose, estimated standard deviation, and purity.
  - `Row`: Arranges UI elements horizontally.
  - `Switch`: Provides a toggle switch for boolean values.
  - `TextButton`: Represents buttons with text for navigation.

### onDoseTextChange (Function)

This function is called when the value of the dose text field changes. It updates the `doseText` property with the new value, replacing commas with periods if necessary.

- **Parameters:**
  - `newDoseText`: The new value of the dose text field.

### onEstimatedDoseStandardDeviationTextChange (Function)

This function is called when the value of the estimated standard deviation text field changes. It updates the `estimatedDoseDeviationText` property with the new value, replacing commas with periods if necessary.

- **Parameters:**
  - `newDeviationText`: The new value of the estimated standard deviation text field.

