## Overview

The `AcceptConditionsScreen` is a composable function designed to handle user acceptance of application terms and conditions before granting access to the main application functionality. This screen includes checkboxes for user acknowledgment of responsibilities, risks, data accuracy, and seeking professional help related to drug use. It also provides a button to proceed if all conditions are accepted.

## Classes/Types

### AcceptConditionsScreen

- **Type:** Composable
- **Purpose:** Displays a screen where users must accept terms and conditions before proceeding.
- **State Management:** Utilizes `remember` and `mutableStateOf` for managing UI state, specifically the checked status of checkboxes.

## Methods/Functions

### accept

- **Type:** Function within MainScreenViewModel
- **Purpose:** Updates the data store to reflect that the user has accepted the terms and conditions.
- **Parameters:**
  - None
- **Returns:**
  - None
- **Side Effects:** Writes to `DataStore` preferences to set `are_conditions_accepted` to `true`.

### onTapAccept

- **Type:** Lambda function passed as a parameter to `AcceptConditionsScreen`
- **Purpose:** A callback function that should handle the logic after the user has accepted all terms and conditions.
- **Parameters:**
  - None
- **Returns:**
  - None
- **Side Effects:** Calls the provided lambda function, indicating acceptance.

### AcceptConditionsScreen Composable

- **Parameters:**
  - `onTapAccept`: A lambda function to handle acceptance of terms and conditions after user input.
- **Body:**
  - Contains a `Scaffold` with a `Column` layout for the main content.
  - Displays an image that toggles its checked state when clicked, along with text descriptions.
  - Includes a `Text` element stating "Your data always stays on this device".
  - Contains a `Button` enabled only if all checkboxes are selected, which triggers `onTapAccept`.

## Additional Information

- The screen uses UI components from the Material 3 library for Android.
- The checkbox states and their associated text descriptions provide clarity to users about what they are agreeing to.
- The button's enablement condition ensures that the user cannot proceed without confirming all terms.

