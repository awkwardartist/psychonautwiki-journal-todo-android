# MainActivity.kt Documentation

## Overview

`MainActivity.kt` serves as the primary entry point for the PsychonautWiki Journal application. It initializes the app's splash screen and main content using Compose UI components.

## Classes/Types

### MainActivity (Class)

#### Description

- **Role**: The main activity that controls the lifecycle of the app.
- **Annotations**:
  - `@AndroidEntryPoint`: Indicates that this class is an entry point for dependency injection provided by Hilt.

#### Properties

- None.

#### Methods/Functions

##### onCreate(Bundle? savedInstanceState) (Method)

###### Description

- **Role**: Initializes the activity and its view.
- **Parameters**:
  - `savedInstanceState` (Bundle?): The previous state of the activity, if it is being re-initialized after previously being shut down. Otherwise null.

###### Implementation Steps:

1. **Splash Screen Installation**: Installs the splash screen using `installSplashScreen()`.
2. **Enable Edge-to-Edge**: Enables edge-to-edge system bars using `enableEdgeToEdge()`.
3. **Set Content**: Sets the content of the activity using `setContent()` and provides a `JournalTheme` context.
4. **Compose Main Screen**: Inside `setContent`, creates a `Surface` that fills the entire screen with a background color from the theme. Inside this surface, it instantiates the `MainScreen`.

## Methods/Functions

### onCreate(Bundle? savedInstanceState) (Method)

#### Description

- **Role**: Initializes the activity and its view.
- **Parameters**:
  - `savedInstanceState` (Bundle?): The previous state of the activity, if it is being re-initialized after previously being shut down. Otherwise null.

#### Implementation Steps:

1. **Splash Screen Installation**:
   ```kotlin
   installSplashScreen()
   ```
   This step initializes the splash screen that appears while the app is loading.

2. **Enable Edge-to-Edge**:
   ```kotlin
   enableEdgeToEdge()
   ```
   This step enables edge-to-edge system bars, allowing content to extend to the edges of the display.

3. **Set Content**:
   ```kotlin
   setContent {
       JournalTheme {
           Surface(
               modifier = Modifier.fillMaxSize(),
               color = MaterialTheme.colorScheme.background
           ) {
               MainScreen()
           }
       }
   }
   ```
   This step sets the content of the activity using Compose UI. It provides a `JournalTheme` context, which is responsible for theming the app. Inside this theme, it creates a `Surface` that fills the entire screen with a background color from the theme. Finally, it instantiates the `MainScreen`.

## Context

For a deeper understanding of the codebase, refer to other related files such as `JournalTheme.kt`, `MainScreen.kt`, and others.

