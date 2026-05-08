# SaferUseScreen.kt

## Overview

`SaferUseScreen.kt` contains a Composable function that serves as a user interface for educating users about responsible drug use practices. The screen is part of an app designed to help individuals navigate the complexities of substance use safely and responsibly.

The `SaferUseScreen` provides guidance on various aspects of safe drug usage, including set and setting, administration routes, combinations, reflection, safety of others, and recovery position. It includes links to external resources for further reading and practical advice.

## Classes/Types

### SaferUseScreen

- **Type:** Composable function
- **Description:** This Composable function is the main component of `SaferUseScreen.kt`. It displays a user interface with various sections of safety guidelines and provides buttons to navigate to additional resources.
- **Parameters:**
  - `modifier: Modifier` (optional): Allows for additional styling or layout customization.

### SaferText

- **Type:** Composable function
- **Description:** This helper function is used to display text content within the `SaferUseScreen`. It ensures that all text has consistent padding and alignment.
- **Parameters:**
  - `text: String`: The text content to be displayed.
  
## Methods/Functions

### SaferUseScreen(modifier: Modifier = Modifier)

- **Description:** Composable function that serves as the main UI for teaching users about responsible drug use. It consists of several sections, each providing information and practical advice on different aspects of safe substance use.
- **Parameters:**
  - `modifier: Modifier` (optional): Allows for additional styling or layout customization.

### SaferText(text: String)

- **Description:** Helper function to display text content within the `SaferUseScreen`. Ensures consistent padding and alignment.
- **Parameters:**
  - `text: String`: The text content to be displayed.

## Usage

To use the `SaferUseScreen`, call it in your Composable hierarchy. Optionally, pass a `Modifier` to customize its appearance or layout.

```kotlin
@Composable
fun App() {
    SaferUseScreen()
}
```

This will render the main screen with various sections of safety guidelines and buttons to access additional resources.

## Navigation

- **Combination Checkers:** Links to external combination checkers (Swiss, Tripsit) for safe drug combinations.
- **Recovery Position Video:** Provides a video link explaining how to place someone in the recovery position if they are unconscious after a drug overdose.
- **Responsible Drug Use Article:** Link to an article on responsible drug use.

These links direct users to external resources that provide comprehensive information and practical advice on safe substance use practices.

## Additional Notes

This screen is crucial for educating users about the potential risks and dangers associated with drug use, emphasizing the importance of responsible consumption. The inclusion of various sections ensures a holistic approach to safe drug use, covering everything from preparation (set and setting) to recovery (recovery position).

