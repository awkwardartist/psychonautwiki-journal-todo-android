# DrugTestingScreen.kt

## Overview

The `DrugTestingScreen.kt` file contains a Kotlin composable function that serves as a user interface component for performing drug testing. This screen is part of a larger application designed to assist users in making informed decisions regarding the use of psychoactive substances.

The primary purpose of this screen is to guide users through the process of safely testing new drugs, ensuring they are not allergic or experiencing unusual reactions before consuming them. It includes several key features such as setting up a safe environment, using a combination checker, and accessing responsible drug use resources.

## Classes/Types

### DrugTestingScreen (Composable Function)

The `DrugTestingScreen` is a composable function that defines the UI structure for the drug testing feature. It uses Jetpack Compose to build the user interface components.

```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Preview
@Composable
fun DrugTestingScreen()
```

## Methods/Functions

### SaferText (Composable Function)

The `SaferText` composable function is used to display text with left alignment and padding. It accepts a string parameter representing the text to be displayed.

```kotlin
@Composable
fun SaferText(text: String)
```

This function is used throughout the screen to format the instructional text, ensuring it is visually appealing and easy to read.

### Buttons for Navigation

The screen includes several buttons that navigate users to different resources or functionalities:

- **Combination Checker**: Opens a link to Swiss combination checker (https://combi-checker.ch) and Tripsit combination checker (https://combo.tripsit.me).
- **Recovery Position Video**: Opens a YouTube video demonstrating the recovery position for unconscious individuals.
- **Responsible Drug Use Article**: Opens an article on responsible drug use from PsychonautWiki.

Each button uses `LocalUriHandler.current.openUri()` to open the specified URL, allowing users to access external resources directly from within the app.

## Context

To fully understand and utilize this screen effectively, it is recommended that developers have a basic understanding of Jetpack Compose for building user interfaces in Android applications. Additionally, familiarity with Kotlin coroutines may be helpful for handling asynchronous operations if any are used within the screen.

This documentation provides an overview of the `DrugTestingScreen.kt` file, its functionality, and key components. For more detailed information on specific parts of the codebase, additional context may be required.

