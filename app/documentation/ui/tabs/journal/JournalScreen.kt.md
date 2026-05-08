# JournalScreen.kt

## Overview
`JournalScreen.kt` contains the UI component for displaying a journal of experiences. It manages the state of the experience list, filters based on user input, and handles navigation to detail screens.

## Classes/Types

### JournalScreen (Composable Function)
- **Purpose**: The main composable function that renders the journal screen.
- **Parameters**:
  - `navController`: A NavController used for navigation between screens.
  - `viewModel`: An instance of `JournalViewModel` which provides data and UI state.
  - `onNavigationEvent`: A lambda that handles different navigation events (e.g., add experience).

### JournalScreenState
- **Purpose**: Holds the state of the journal screen, including the list of experiences, search text, favorite status, and relative time setting.

## Methods/Functions

### LaunchedEffect
- **Description**: Sets up an effect that listens for changes to `isSearchEnabled` in the viewModel. When it becomes false, it clears the search text.
- **Parameters**:
  - `viewModel.isSearchEnabled`: StateFlow indicating whether searching is enabled.
  - `viewModel.searchTextFlow`: MutableStateFlow for managing the current search text.

### LaunchedEffect
- **Description**: Sets up an effect that listens for changes to `isFavoriteEnabledFlow` in the viewModel. When it changes, it triggers a re-filtering of experiences based on favorites status.
- **Parameters**:
  - `viewModel.isFavoriteEnabledFlow`: MutableStateFlow indicating whether favorite experiences are enabled.

### ExperienceList
- **Purpose**: A composable function that displays the list of experiences.
- **Parameters**:
  - `experiences`: List of ExperienceWithIngestionsCompanionsAndRatings to be displayed.
  - `onNavigationEvent`: Lambda for handling navigation events like viewing an experience details.

### SearchBar
- **Purpose**: A composable function that renders a search bar at the top of the screen.
- **Parameters**:
  - `viewModel.searchTextFlow`: MutableStateFlow for managing the current search text.

### FavoriteSwitch
- **Purpose**: A composable function that renders a switch to enable/disable favorite experiences filtering.
- **Parameters**:
  - `viewModel.isFavoriteEnabledFlow`: MutableStateFlow indicating whether favorite experiences are enabled.

### RelativeTimeToggle
- **Purpose**: A composable function that renders a toggle for setting time relative to now.
- **Parameters**:
  - `viewModel.isTimeRelativeToNow`: MutableState indicating whether time is shown relative to now.

## Usage Example
```kotlin
@Composable
fun JournalScreen(
    navController: NavController,
    viewModel: JournalViewModel = hiltNavGraphViewModel(),
) {
    val journalScreenState = remember { mutableStateOf(JournalScreenState()) }

    LaunchedEffect(viewModel.isSearchEnabled) {
        if (!viewModel.isSearchEnabled.value) {
            viewModel.searchTextFlow.value = ""
        }
    }

    LaunchedEffect(viewModel.isFavoriteEnabledFlow) {
        // Re-filter experiences based on favorites
    }

    Column(modifier = Modifier.padding(16.dp)) {
        SearchBar(viewModel.searchTextFlow)
        FavoriteSwitch(viewModel.isFavoriteEnabledFlow)
        RelativeTimeToggle(viewModel.isTimeRelativeToNow)

        ExperienceList(
            experiences = viewModel.experiences.value,
            onNavigationEvent = { navController.navigate("experience/${it.id}") }
        )
    }
}
```

## Notes
- **Dependencies**: The file depends on `JournalViewModel` for data and state management.
- **Composability**: This screen is built using Jetpack Compose, a declarative UI toolkit for Android.

