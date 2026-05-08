# Overview

The `ExperienceScreen.kt` file is a crucial component of an Android application designed for tracking drug experiences. This screen displays detailed information about a user's experience, including substances ingested, interactions with other substances, ratings, notes, and ROA (Rapid Onset and Assimilation) data.

The primary responsibilities of this file are:
1. Displaying the timeline of substance ingestion.
2. Showing ROA graphs for each substance.
3. Providing detailed information about interactions between substances.
4. Allowing users to rate their experiences.
5. Enabling users to add timed notes throughout the experience.

# Classes/Types

## ExperienceScreen

**Type:** `Composable` function  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `ExperienceScreen` is a Jetpack Compose composable that serves as the main UI component for displaying an experience screen. It accepts several parameters to customize its behavior and appearance.

### Parameters

- `viewModel`: The `ExperienceViewModel`, which provides data and business logic for the screen.
- `contextualMenuState`: A `State` object representing the state of a contextual menu, used for actions like deleting experiences.
- `onNavigateBack`: A function that is called when the user wants to navigate back from this screen.

### State

- `uiState`: A `State` object containing data that needs to be displayed on the UI, such as the current experience and related interactions, ratings, notes, and ROA data.

## ExperienceViewModel

**Type:** `ViewModel`  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `ExperienceViewModel` is a ViewModel that provides the necessary data for the `ExperienceScreen`. It encapsulates the business logic and data access layer, ensuring that UI-related operations are decoupled from other parts of the application.

### Properties

- `experience`: A LiveData object representing the current experience to be displayed.
- `interactions`: A LiveData object containing a list of interactions related to the current experience.
- `ratings`: A LiveData object containing a list of ratings given during the experience.
- `notes`: A LiveData object containing a list of timed notes taken during the experience.

### Methods

- `init()`: Initializes the ViewModel, retrieving the necessary data from the repository and updating the UI state accordingly.
- `deleteExperience()`: Deletes the current experience and any related data.
- `onNoteAdded(note: TimedNote)`: Adds a new note to the list of timed notes for the current experience.

## IngestionElement

**Type:** Data class  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `IngestionElement` data class represents an individual substance ingestion event within an experience. It contains information about the substance, its ingestion time, route of administration, dose, and related ROA data.

### Properties

- `ingestionWithCompanionAndCustomUnit`: An object containing the core details of the ingestion, including the substance name, time, route, dose, etc.
- `roaDuration`: The Rapid Onset and Assimilation (ROA) duration for the substance, which includes onset, comeup, peak, offset, total, and afterglow times.
- `numDots`: An integer representing the number of dots associated with the ROA graph, indicating the intensity or quality of the experience.

## RoaData

**Type:** Data class  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `RoaData` data class represents the Rapid Onset and Assimilation (ROA) data for a substance. It contains time ranges for onset, comeup, peak, offset, total duration, and afterglow, along with their respective units of measurement.

### Properties

- `onset`: A `DurationRange` representing the onset period.
- `comeup`: A `DurationRange` representing the comeup period.
- `peak`: A `DurationRange` representing the peak period.
- `offset`: A `DurationRange` representing the offset period.
- `total`: A `DurationRange` representing the total duration of the experience.
- `afterglow`: An optional `DurationRange` representing the afterglow period.

## DurationRange

**Type:** Data class  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `DurationRange` data class represents a range of time with minimum and maximum values, along with the units of measurement.

### Properties

- `min`: A float representing the minimum value of the duration.
- `max`: A float representing the maximum value of the duration.
- `units`: An enumeration representing the units of measurement for the duration (e.g., minutes, hours).

# Methods/Functions

## ExperienceScreen()

**Type:** Composable function  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `ExperienceScreen` composable function is the entry point for displaying the experience screen. It takes a `viewModel`, `contextualMenuState`, and `onNavigateBack` as parameters.

### Parameters

- `viewModel`: The `ExperienceViewModel` providing data and business logic.
- `contextualMenuState`: A `MutableState<Boolean>` representing the state of a contextual menu.
- `onNavigateBack`: A lambda function to be called when the user wants to navigate back from this screen.

### Composable Body

The composable body consists of several components:
1. A `Scaffold` providing a structured layout for the screen.
2. An `AppBar` at the top, displaying the title and any actions (e.g., delete).
3. A `Column` containing a list of substance ingestion events (`IngestionItem`) using the `dataForEffectLines` state from the `uiState`.
4. A `LazyVerticalGrid` for displaying ROA graphs using the `roaDataList` state from the `uiState`.

### State and Side Effects

- The composable is wrapped in a `LaunchedEffect` to observe changes in `viewModel.uiState`, updating the UI accordingly.
- A `DisposableEffect` is used to set up and clean up the contextual menu state.

## IngestionItem()

**Type:** Composable function  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `IngestionItem` composable function displays individual substance ingestion events. It takes an `ingestionElement`, a boolean indicating whether the item is expanded, and a lambda function to handle note addition.

### Parameters

- `ingestionElement`: An instance of `IngestionElement` representing the current substance ingestion.
- `isExpanded`: A boolean indicating whether the item should be displayed in its expanded form.
- `onNoteAdded`: A lambda function to add new notes to the list of timed notes for the current experience.

### Composable Body

The composable body consists of a `Card` with a `Column` inside, displaying:
1. The substance name and route of administration.
2. The time of ingestion.
3. The ROA graph using the `roaDataList`.

### State Management

- A `rememberExpandableState` is used to manage the expanded state of each item.

## RoaDataItem()

**Type:** Composable function  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `RoaDataItem` composable function displays ROA graphs for a substance. It takes an `roaData`, a boolean indicating whether the item is expanded, and a lambda function to handle note addition.

### Parameters

- `roaData`: An instance of `RoaData` representing the ROA data for the current substance.
- `isExpanded`: A boolean indicating whether the item should be displayed in its expanded form.
- `onNoteAdded`: A lambda function to add new notes to the list of timed notes for the current experience.

### Composable Body

The composable body consists of a `Card` with a `Column` inside, displaying:
1. The substance name and route of administration.
2. The time of ingestion.
3. The ROA graph using the `roaData`.

### State Management

- A `rememberExpandableState` is used to manage the expanded state of each item.

## TimedNoteItem()

**Type:** Composable function  
**Location:** `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/ExperienceScreen.kt`

The `TimedNoteItem` composable function displays a single timed note. It takes a `note`, and whether it is part of the timeline.

### Parameters

- `note`: An instance of `TimedNote` representing the current note.
- `isPartOfTimeline`: A boolean indicating whether the note is part of the experience timeline.

### Composable Body

The composable body consists of a `Card` with a `Text` element displaying the note's creation time and content. The color of the text matches the note's color if it is part of the timeline.

# Summary

The `ExperienceScreen.kt` file provides a comprehensive UI for tracking drug experiences, including substance ingestion events, ROA graphs, interactions, ratings, and notes. It leverages Jetpack Compose to create a declarative, state-driven UI that responds to data changes in real-time. The use of ViewModels ensures that the UI is decoupled from business logic and data access, making the codebase more maintainable and testable.

