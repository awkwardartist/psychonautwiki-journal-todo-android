# Overview

The `CheckSaferUseScreen.kt` file contains a Composable function for displaying the safer use information of a substance in a journal entry screen. It utilizes Jetpack Compose for UI composition and Hilt for dependency injection.

## Classes/Types

### CheckSaferUseScreen

- **Description**: A Composable function representing the safer use screen where users can view and understand the safer use guidelines for a particular substance.
  
  - **Parameters**:
    - `navigateToNext`: A lambda function that is called when the user wants to proceed to the next step or save their entry.

## Methods/Functions

### CheckSaferUseScreen(navigateToNext: () -> Unit)

- **Description**: Composable function for displaying the safer use information of a substance in a journal entry screen.
  
  - **Parameters**:
    - `navigateToNext`: A lambda function that is called when the user wants to proceed to the next step or save their entry.

### Scaffold(topBar = { TopAppBar(title = { Text("${viewModel.substanceName} safer use") }) }, floatingActionButton = { NextFAB(navigateToNext) })

- **Description**: Composable function from Jetpack Compose that provides a structure for the app UI with a top bar and a floating action button.
  
  - **Parameters**:
    - `topBar`: A composable function that represents the top bar of the screen, displaying the substance name followed by "safer use".
    - `floatingActionButton`: A composable function that represents the floating action button on the screen, which triggers the `navigateToNext` lambda when clicked.

### Column(modifier = Modifier.verticalScroll(rememberScrollState()).padding(padding))

- **Description**: Composable function from Jetpack Compose that arranges its children in a vertical column and applies scrollable behavior.
  
  - **Parameters**:
    - `modifier`: A modifier applied to the Column, enabling vertical scrolling with scroll state management and padding based on the provided padding.

### BulletPoints(points = viewModel.substance.saferUse, modifier = Modifier.padding(horizontal = horizontalPadding))

- **Description**: Composable function from Jetpack Compose that displays a list of points (typically bullet points) in a column format.
  
  - **Parameters**:
    - `points`: A list of strings representing the safer use guidelines for the substance.
    - `modifier`: A modifier applied to the BulletPoints, adding horizontal padding based on the defined constant `horizontalPadding`.

### Spacer(modifier = Modifier.height(8.dp))

- **Description**: Composable function from Jetpack Compose that provides a blank space between other composables.
  
  - **Parameters**:
    - `modifier`: A modifier applied to the Spacer, setting its height to 8 dp.

