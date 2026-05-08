# CategoryScreen.kt Documentation

## Overview

The `CategoryScreen` component is a Jetpack Compose-based UI screen that displays detailed information about a substance category. This includes the category's name, description, and an optional link to an external article. The screen utilizes Hilt for dependency injection and composes itself using Material 3 components.

This documentation will break down the structure of `CategoryScreen.kt` into its key sections, including the main component, preview functions, and helper function.

## Classes/Types

### CategoryScreen Composable Function

```kotlin
@Composable
fun CategoryScreen(
    viewModel: CategoryViewModel = hiltViewModel()
) {
    CategoryScreen(category = viewModel.category)
}
```

- **Description**: The main entry point for the `CategoryScreen` component. It leverages a `CategoryViewModel` to obtain category data.
- **Parameters**:
  - `viewModel`: A `CategoryViewModel` instance, which defaults to being injected via Hilt.

### CategoryPreview Composable Function

```kotlin
@Preview
@Composable
fun CategoryPreview() {
    CategoryScreen(
        category = Category(
            name = "psychedelic",
            description = "Psychedelics are drugs which alter the perception, causing a number of mental effects which manifest in many forms including altered states of consciousness, visual or tactile effects.",
            url = "https://psychonautwiki.org/wiki/Psychedelics",
            color = Color.Red
        ),
    )
}
```

- **Description**: A preview function for `CategoryScreen` to facilitate UI testing and debugging within Android Studio.
- **Parameters**:
  - `category`: A predefined `Category` object to display in the preview.

### CategoryScreen Composable Function

```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CategoryScreen(category: Category?) {
    if (category == null) {
        EmptyScreenDisclaimer(
            title = "Category not found",
            description = "An error happened, please navigate back."
        )
    } else {
        val uriHandler = LocalUriHandler.current
        Scaffold(
            topBar = {
                TopAppBar(
                    title = { Text(category.name.replaceFirstChar { it.uppercase() }) },
                    actions = {
                        if (category.url != null) {
                            TextButton(
                                onClick = { uriHandler.openUri(category.url) },
                            ) {
                                Text("Article")
                            }
                        }
                    }
                )
            },
        ) { padding ->
            Text(
                text = category.description,
                textAlign = TextAlign.Left,
                modifier = Modifier
                    .padding(padding)
                    .padding(horizontal = horizontalPadding, vertical = 10.dp)
            )
        }
    }
}
```

- **Description**: The primary UI component of the screen that displays the category information.
- **Parameters**:
  - `category`: An optional `Category` object containing the data to be displayed.

## Methods/Functions

### CategoryScreen Composable Function (Overloaded)

```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CategoryScreen(category: Category?)
```

- **Description**: Handles the display of the category information.
  - If `category` is null, it displays a disclaimer.
  - Otherwise, it sets up a scaffold with a top app bar and a text block for the category description.

### CategoryPreview Composable Function

```kotlin
@Preview
@Composable
fun CategoryPreview()
```

- **Description**: Provides a preview of `CategoryScreen` to ensure correct UI rendering in development environments.
  - It uses a predefined `Category` object for demonstration purposes.

## Usage Context

To effectively use the `CategoryScreen`, you need to have a working setup with Jetpack Compose, Hilt dependency injection, and Material 3 components. The screen is typically used within a larger navigation flow, where it displays information about substance categories fetched from a repository.

This documentation provides a comprehensive overview of the `CategoryScreen` component, detailing its structure and functionality, which should be helpful for developers integrating this component into their projects or understanding its behavior within the broader application context.

