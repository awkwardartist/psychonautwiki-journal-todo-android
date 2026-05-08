# MainScreen.kt

## Overview

`MainScreen.kt` contains the implementation of the main user interface screen for the PsychonautWiki Journal app. It serves as the entry point for navigating between different tabs (journal, stats, search, safer use, settings) and conditionally displays an acceptance agreement screen if it hasn't been accepted yet.

## Classes/Types

### MainScreen

- **Description**: The main screen of the app that handles navigation between tabs and displays either the tabbed interface or an acceptance agreement.
  
  - **Properties**:
    - `viewModel`: An instance of `MainScreenViewModel` used to manage state, specifically whether conditions have been accepted.

## Methods/Functions

### MainScreen

- **Description**: The primary composable function that renders the UI based on the current state. It checks if conditions have been accepted and either displays the tabbed interface or the acceptance agreement screen.
  
  - **Parameters**:
    - `viewModel`: An instance of `MainScreenViewModel` injected via Hilt.

### Parameters

- **navController**: A `NavHostController` used to manage navigation between different tabs in the app.

## Usage Context

This file is part of the UI layer of the PsychonautWiki Journal application. It's responsible for setting up the tabbed navigation system and conditionally displaying an acceptance agreement screen, ensuring that users agree to certain terms before using the app.

