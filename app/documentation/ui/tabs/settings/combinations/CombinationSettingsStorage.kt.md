# Overview

The `CombinationSettingsStorage.kt` file is part of the PsychonautWiki Journal application's settings module specifically for managing substance interaction warnings. This file contains a class responsible for storing and retrieving user preferences regarding which substances should trigger interaction alerts.

## Classes/Types

### CombinationSettingsStorage

This is a singleton class designed to handle storage and retrieval of substance interaction options in the app using DataStore Preferences.

#### Properties

- `substanceInteractionKey`: A `stringSetPreferencesKey` used as the key for storing the set of enabled substance interactions.
- `optionFlow`: A `Flow<List<Option>>` that maps over the `enabledInteractionsFlow`, transforming it into a list of `Option` objects indicating whether each substance is enabled or not.

#### Methods/Functions

- `toggleSubstanceInteraction(substanceInteraction: String)`: A suspend function to toggle the enabled state of a specific substance interaction in DataStore.
- `enabledInteractionsFlow`: A `Flow<Set<String>>` that emits the set of currently enabled substance interactions as stored in DataStore.

## Usage Context

This class is used by the `CombinationSettingsViewModel` and `CombinationSettingsScreen.kt` to manage and display the substance interaction settings for users. It provides a reactive flow of options, which allows the UI components to automatically update when the user toggles the state of any interaction.

