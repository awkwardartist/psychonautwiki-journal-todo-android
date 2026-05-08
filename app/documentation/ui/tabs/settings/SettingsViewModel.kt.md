# SettingsViewModel.kt Documentation

## Overview

The `SettingsViewModel` class in the PsychonautWiki Journal application is a ViewModel responsible for managing settings-related data and operations. It interacts with various repositories to perform actions such as importing, exporting, and deleting experience data.

This ViewModel provides reactive flows for observing user preferences related to dosage dots, substance heights independence, and timeline visibility. It also handles file I/O operations using `FileSystemConnection` for saving and loading JSON files that represent the journal export/import data.

## Classes/Types

### SettingsViewModel

**Description:** The primary ViewModel class handling settings-related logic.

#### Properties

- **experienceRepository (ExperienceRepository):**
  - Description: The repository for managing experience data.
  
- **fileSystemConnection (FileSystemConnection):**
  - Description: An interface for interacting with the file system, used for reading and writing files.

- **userPreferences (UserPreferences):**
  - Description: A singleton instance providing access to user preferences settings.

#### State Flows

- **isTimelineHiddenFlow (StateFlow<Boolean>):**
  - Description: A flow representing whether the timeline is hidden.
  
- **areSubstanceHeightsIndependentFlow (StateFlow<Boolean>):**
  - Description: A flow representing whether substance heights are independent.
  
- **areDosageDotsHiddenFlow (StateFlow<Boolean>):**
  - Description: A flow representing whether dosage dots are hidden.

#### Methods/Functions

- **saveDosageDotsAreHidden(value: Boolean)**
  - Description: Saves the state of whether dosage dots should be hidden.
  - Parameters:
    - `value` (Boolean): The new value to save.

- **saveAreSubstanceHeightsIndependent(value: Boolean)**
  - Description: Saves the state of whether substance heights are independent.
  - Parameters:
    - `value` (Boolean): The new value to save.

- **saveIsTimelineHidden(value: Boolean)**
  - Description: Saves the state of whether the timeline is hidden.
  - Parameters:
    - `value` (Boolean): The new value to save.

- **importFile(uri: Uri)**
  - Description: Imports experience data from a JSON file URI.
  - Parameters:
    - `uri` (Uri): The URI pointing to the JSON file containing the exported experience data.

- **exportFile(uri: Uri)**
  - Description: Exports current experience data to a JSON file URI.
  - Parameters:
    - `uri` (Uri): The URI where the JSON file should be saved.

- **deleteEverything()**
  - Description: Deletes all experiences, ingestions, ratings, and timed notes from the database.

## Methods/Functions Documentation

### saveDosageDotsAreHidden(value: Boolean)

**Description:** Saves the state of whether dosage dots should be hidden.

**Parameters:**

- `value` (Boolean): The new value to save.

**Implementation:**
```kotlin
fun saveDosageDotsAreHidden(value: Boolean) = viewModelScope.launch {
    userPreferences.saveDosageDotsAreHidden(value)
}
```

### saveAreSubstanceHeightsIndependent(value: Boolean)

**Description:** Saves the state of whether substance heights are independent.

**Parameters:**

- `value` (Boolean): The new value to save.

**Implementation:**
```kotlin
fun saveAreSubstanceHeightsIndependent(value: Boolean) = viewModelScope.launch {
    userPreferences.saveAreSubstanceHeightsIndependent(value)
}
```

### saveIsTimelineHidden(value: Boolean)

**Description:** Saves the state of whether the timeline is hidden.

**Parameters:**

- `value` (Boolean): The new value to save.

**Implementation:**
```kotlin
fun saveIsTimelineHidden(value: Boolean) = viewModelScope.launch {
    userPreferences.saveIsTimelineHidden(value)
}
```

### importFile(uri: Uri)

**Description:** Imports experience data from a JSON file URI.

**Parameters:**

- `uri` (Uri): The URI pointing to the JSON file containing the exported experience data.

**Implementation:**
```kotlin
fun importFile(uri: Uri) {
    viewModelScope.launch {
        val text = fileSystemConnection.getTextFromUri(uri)
        if (text == null) {
            snackbarHostState.showSnackbar(
                message = "File not found",
                duration = SnackbarDuration.Short
            )
        } else {
            try {
                val json = Json { ignoreUnknownKeys = true }
                val journalExport = json.decodeFromString<JournalExport>(text)
                experienceRepository.deleteEverything()
                experienceRepository.insertEverything(journalExport)
                snackbarHostState.showSnackbar(
                    message = "Import successful",
                    duration = SnackbarDuration.Short
                )
            } catch (e: Exception) {
                println("Error when decoding: ${e.message}")
                snackbarHostState.showSnackbar(
                    message = "Decoding file failed",
                    duration = SnackbarDuration.Short
                )
            }
        }
    }
}
```

### exportFile(uri: Uri)

**Description:** Exports current experience data to a JSON file URI.

**Parameters:**

- `uri` (Uri): The URI where the JSON file should be saved.

**Implementation:**
```kotlin
fun exportFile(uri: Uri) {
    viewModelScope.launch {
        val experiencesWithIngestionsAndRatings =
            experienceRepository.getAllExperiencesWithIngestionsTimedNotesAndRatingsSorted()
        val experiencesSerializable = experiencesWithIngestionsAndRatings.map {
            // ...
        }
        val journalExport = JournalExport(
            // ...
        )
        try {
            val jsonList = Json.encodeToString(journalExport)
            fileSystemConnection.saveTextInUri(uri, text = jsonList)
            snackbarHostState.showSnackbar(
                message = "Export successful",
                duration = SnackbarDuration.Short
            )
        } catch (_: Exception) {
            snackbarHostState.showSnackbar(
                message = "Export failed",
                duration = SnackbarDuration.Short
            )
        }
    }
}
```

### deleteEverything()

**Description:** Deletes all experiences, ingestions, ratings, and timed notes from the database.

**Implementation:**
```kotlin
fun deleteEverything() {
    viewModelScope.launch {
        experienceRepository.deleteEverything()
    }
}
```

