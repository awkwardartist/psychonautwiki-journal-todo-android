## Overview

The `VolumetricDosingScreen.kt` file contains a Composable function that serves as a user interface component for providing information about volumetric dosing of psychoactive substances. This is part of a larger application designed to help users with responsible drug use, focusing on the safe handling and administration of various drugs.

## Classes/Types

### VolumetricDosingScreen (Composable Function)

This is a Composable function that represents the user interface for volumetric dosing information. It uses Material 3 components to create a structured layout with a top app bar, content area, and an optional link to a detailed article on volumetric dosing.

## Methods/Functions

### VolumetricDosingScreen()

- **Purpose**: Displays the volumetric dosing information screen.
- **Parameters**:
  - `uriHandler`: An instance of LocalUriHandler used for opening external URLs.
- **Structure**:
  - **TopAppBar**: A Material 3 component that serves as the navigation bar, including a title and an "Article" button to open a detailed article on volumetric dosing.
  - **Column**: A vertical layout container that holds the content of the screen.
  - **Text**: A component for displaying the text content explaining what volumetric dosing is and how it's used with certain substances.

### No other methods/functions are defined in this file.

## Usage

To utilize the `VolumetricDosingScreen` component, you would typically include it within your application's navigation structure. It can be displayed when a user selects an option related to volumetric dosing from a menu or another part of the app.

This component helps educate users on how to safely measure and use substances that require precise dosing, thereby reducing the risk of accidental overdose or misuse.

