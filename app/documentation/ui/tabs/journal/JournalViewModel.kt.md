# JournalViewModel.kt

## Overview

The `JournalViewModel` class is a ViewModel for managing the logic of the journal tab in the PsychonautWiki Journal application. It handles fetching, filtering, and displaying experiences based on user preferences and search criteria.

### Dependencies

- `ExperienceRepository`: Manages data related to experiences.
- `SearchRepository`: Provides functionality for searching substances.
- `DataStore`: For persistent storage of application settings.
- `UserPreferences`: Encapsulates user preference logic.

## Classes/Types

### JournalViewModel

#### Description

The primary class in the file. It extends `ViewModel` and is annotated with `@HiltViewModel`, indicating that it is a Hilt-managed ViewModel, which facilitates dependency injection.

#### Properties

- **isTimeRelativeToNow**: A mutable state property indicating whether time-related data should be displayed relative to the current time.
- **isSearchEnabled**: A mutable state property indicating whether search functionality is enabled.
- **searchTextFlow**: A mutable state flow for tracking the current search text.
- **experiences**: A state flow containing a list of experiences that match the current search criteria and user preferences.

#### Methods/Functions

1. **onChangeRelative(isRelative: Boolean)**

   - Description: Updates whether time-related data should be displayed relative to the current time.
   - Parameters:
     - `isRelative`: The new value indicating whether time-related data should be displayed relatively.

2. **resetAddIngestionTimes()**

   - Description: Resets the last ingestion times for experiences and any cloned ingestion times stored in user preferences.

3. **maybeMigrate()**

   - Description: Checks if migrations have been performed for certain data structures and performs them if necessary.
   - Notes: This method uses DataStore to track whether migrations have already been applied.

4. **onChangeOfIsSearchEnabled(newValue: Boolean)**

   - Description: Updates the search enable state based on user input.
   - Parameters:
     - `newValue`: The new value indicating whether search functionality should be enabled.
   - Notes: If search is disabled, it also clears any current search text stored in `searchTextFlow`.

5. **onChangeFavorite(isFavorite: Boolean)**

   - Description: Updates the favorite enable state based on user input.

6. **search(newSearchText: String)**

   - Description: Sets a new search text and updates the experiences flow accordingly.
   - Parameters:
     - `newSearchText`: The new search text to be applied.

## Methods/Functions in Detail

### onChangeRelative(isRelative: Boolean)

- This method is used to change whether time-related data should be displayed relative to the current time. It updates the `isTimeRelativeToNow` state property.

```kotlin
fun onChangeRelative(isRelative: Boolean) {
    isTimeRelativeToNow.value = isRelative
}
```

### resetAddIngestionTimes()

- This method resets any stored last ingestion times for experiences and any cloned ingestion times in user preferences.

```kotlin
fun resetAddIngestionTimes() = viewModelScope.launch {
    userPreferences.saveLastIngestionTimeOfExperience(null)
    userPreferences.saveClonedIngestionTime(null)
}
```

### maybeMigrate()

- This method checks if certain migrations have been performed for data structures. If not, it performs the necessary migrations.

```kotlin
fun maybeMigrate() {
    viewModelScope.launch {
        dataStore.edit { settings ->
            if (settings[IS_MIGRATED_0] == null) {
                experienceRepo.migrateBenzydamine()
                settings[IS_MIGRATED_0] = true
            }
            if (settings[IS_MIGRATED_1] == null) {
                experienceRepo.migrateCannabisAndMushroomUnits()
                settings[IS_MIGRATED_1] = true
            }
        }
    }
}
```

### onChangeOfIsSearchEnabled(newValue: Boolean)

- This method updates whether search functionality is enabled based on user input. If search is disabled, it also clears any current search text.

```kotlin
fun onChangeOfIsSearchEnabled(newValue: Boolean) {
    if (newValue) {
        isSearchEnabled.value = true
    } else {
        isSearchEnabled.value = false
        viewModelScope.launch {
            searchTextFlow.emit("")
        }
    }
}
```

### onChangeFavorite(isFavorite: Boolean)

- This method updates whether the favorite enable state based on user input.

```kotlin
fun onChangeFavorite(isFavorite: Boolean) {
    viewModelScope.launch {
        isFavoriteEnabledFlow.emit(isFavorite)
    }
}
```

### search(newSearchText: String)

- This method sets a new search text and updates the experiences flow accordingly.

```kotlin
fun search(newSearchText: String) {
    viewModelScope.launch {
        searchTextFlow.emit(newSearchText)
    }
}
```

## Dependencies

The `JournalViewModel` class relies on several dependencies to function properly. These include:

- **ExperienceRepository**: Manages data related to experiences.
- **SearchRepository**: Provides functionality for searching substances.
- **DataStore**: For persistent storage of application settings.
- **UserPreferences**: Encapsulates user preference logic.

These dependencies are injected into the `JournalViewModel` class using Hilt, a dependency injection framework for Android and Kotlin.

