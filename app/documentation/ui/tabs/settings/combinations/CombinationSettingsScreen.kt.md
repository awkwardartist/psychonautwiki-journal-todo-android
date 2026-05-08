```markdown
# CombinationSettingsScreen.kt

## Overview

The `CombinationSettingsScreen.kt` file contains a Compose component responsible for displaying and allowing users to toggle substance interaction alerts within the PsychonautWiki Journal app. This screen provides a user interface to manage which substances should trigger interaction warnings, even if not logged in the journal.

## Classes/Types

### SubstanceInteraction

- **Purpose**: Represents an individual substance interaction with its name, current state, and a toggle function.
- **Properties**:
  - `name` (String): The name of the substance.
  - `isOn` (Boolean): Whether the interaction is currently enabled or not.
  - `toggle` (() -> Unit): A lambda function to toggle the state of the interaction.

### CombinationSettingsScreen

- **Purpose**: A Composable function that displays a settings screen for managing substance interactions.
- **Parameters**:
  - `substanceInteractions` (List<SubstanceInteraction>): The list of interactions to be displayed and managed.
- **Composition**:
  - Uses a Scaffold with a TopAppBar titled "Combinations".
  - Contains an ElevatedCard containing interaction options, each represented by a Row with the substance name and a Switch control.

### CombinationSettingsPreview

- **Purpose**: A preview function for `CombinationSettingsScreen` to visualize the UI components in isolation.
- **Parameters**:
  - `substanceInteractions` (List<SubstanceInteraction>): A predefined list of SubstanceInteraction objects for preview purposes.

## Methods/Functions

### CombinationSettingsScreen Composable Function

- **Purpose**: The main Composable function for displaying and managing substance interaction alerts.
- **Parameters**:
  - `substanceInteractions` (List<SubstanceInteraction>): The list of interactions to be displayed and managed.
- **Composition**:
  - Uses a Scaffold with a TopAppBar titled "Combinations".
  - Contains an ElevatedCard containing interaction options, each represented by a Row with the substance name and a Switch control.
  - Utilizes `LazyColumn` for efficient scrolling through long lists of interactions.

### CombinationSettingsViewModel

- **Purpose**: A ViewModel class responsible for managing the state and logic related to substance interaction settings.
- **Properties**:
  - `optionsFlow`: A flow of options (SubstanceInteraction) that are currently enabled, backed by a shared data store.

- **Functions**:
  - `toggleOption(optionName: String)`: Toggles the state of a specific substance interaction option.

### UserPreferences

- **Purpose**: Manages user preferences related to various settings within the app.
- **Properties**:
  - Various properties representing different user preferences, each backed by a data store key (e.g., `KEY_TIME_DISPLAY_OPTION`, `KEY_LAST_INGESTION_OF_EXPERIENCE`).

- **Functions**:
  - Various suspend functions to save and retrieve user preferences (e.g., `saveTimeDisplayOption(value: SavedTimeDisplayOption)`, `lastIngestionTimeOfExperienceFlow`).
```

