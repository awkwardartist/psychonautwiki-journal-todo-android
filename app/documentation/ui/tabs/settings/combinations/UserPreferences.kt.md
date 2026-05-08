# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/settings/combinations/UserPreferences.kt

## Overview
The `UserPreferences` file is a Kotlin class designed to manage user preferences for the PsychonautWiki Journal application. It uses DataStore Preferences for persistent storage and provides flows to observe changes in various settings such as time display options, ingestion times, and more. This allows other parts of the application to reactively update based on user preferences.

## Classes/Types

### UserPreferences
This is a singleton class responsible for managing user preferences using DataStore Preferences.

#### Properties
- `dataStore`: The instance of DataStore used for storing preferences.
- `PreferencesKeys`: An object containing keys for various preferences stored in the DataStore.

#### Methods/Functions
- **Constructor**: Takes a single parameter, `dataStore`, which is an instance of DataStore<Preferences>.
- **saveTimeDisplayOption(value: SavedTimeDisplayOption)**: Saves the time display option to the DataStore.
  - Parameters:
    - `value`: The `SavedTimeDisplayOption` to be saved.
- **savedTimeDisplayOptionFlow**: A flow that emits the current time display option from the DataStore.
  - Returns a flow of `SavedTimeDisplayOption`.
- **saveLastIngestionTimeOfExperience(value: Instant?)**: Saves the last ingestion time of an experience to the DataStore.
  - Parameters:
    - `value`: The `Instant` representing the last ingestion time, or null if not applicable.
- **lastIngestionTimeOfExperienceFlow**: A flow that emits the current last ingestion time of an experience from the DataStore.
  - Returns a flow of `Instant?`.
- **saveClonedIngestionTime(value: Instant?)**: Saves the cloned ingestion time to the DataStore.
  - Parameters:
    - `value`: The `Instant` representing the cloned ingestion time, or null if not applicable.
- **clonedIngestionTimeFlow**: A flow that emits the current cloned ingestion time from the DataStore.
  - Returns a flow of `Instant?`.
- **saveOralDisclaimerIsHidden(value: Boolean)**: Saves whether the oral disclaimer is hidden to the DataStore.
  - Parameters:
    - `value`: A boolean indicating whether the oral disclaimer should be hidden.
- **isOralDisclaimerHiddenFlow**: A flow that emits the current state of whether the oral disclaimer is hidden from the DataStore.
  - Returns a flow of `Boolean`.
- **saveDosageDotsAreHidden(value: Boolean)**: Saves whether dosage dots are hidden to the DataStore.
  - Parameters:
    - `value`: A boolean indicating whether dosage dots should be hidden.
- **areDosageDotsHiddenFlow**: A flow that emits the current state of whether dosage dots are hidden from the DataStore.
  - Returns a flow of `Boolean`.
- **saveAreSubstanceHeightsIndependent(value: Boolean)**: Saves whether substance heights are independent to the DataStore.
  - Parameters:
    - `value`: A boolean indicating whether substance heights should be independent.
- **areSubstanceHeightsIndependentFlow**: A flow that emits the current state of whether substance heights are independent from the DataStore.
  - Returns a flow of `Boolean`.
- **saveIsTimelineHidden(value: Boolean)**: Saves whether the timeline is hidden to the DataStore.
  - Parameters:
    - `value`: A boolean indicating whether the timeline should be hidden.
- **isTimelineHiddenFlow**: A flow that emits the current state of whether the timeline is hidden from the DataStore.
  - Returns a flow of `Boolean`.

## Usage Context
This class should be used throughout the application to access and update user preferences. By using flows, other parts of the application can reactively update their UI or behavior based on changes in user settings without needing to manually query the DataStore.

