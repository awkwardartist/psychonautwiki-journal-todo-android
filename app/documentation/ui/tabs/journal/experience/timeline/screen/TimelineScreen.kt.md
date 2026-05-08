# TimelineScreen.kt Documentation

## Overview

`TimelineScreen.kt` contains the implementation of a timeline screen for an experience, which displays various data points such as substance doses, ratings, and timed notes on a graphical timeline.

The screen allows users to switch between different time display options (relative to now, relative to start, time between, regular) based on their preferences. The data displayed is fetched from a ViewModel (`TimelineScreenViewModel`) that aggregates data from various repositories and flows.

## Classes/Types

### TimelineDisplayOption

An enumeration representing the possible states of the timeline display:

- `Loading`: The initial state when data is being fetched.
- `NotWorthDrawing`: Indicates there is no data worth displaying on the timeline.
- `Shown(model: AllTimelinesModel)`: Indicates that the timeline should be drawn with the provided model, which contains all necessary data for rendering.

### AllTimelinesModel

A data class containing all the necessary data to render the timeline:

- `dataForLines: List<DataForOneLine>`: Data representing substance doses.
- `dataForRatings: List<DataForOneRating>`: Data representing ratings.
- `timedNotes: List<DataForOneTimedNote>`: Data representing timed notes.
- `areSubstanceHeightsIndependent: Boolean`: A flag indicating whether the heights of substance entries should be independent.

### DataForOneLine

A data class representing a single data point for the timeline:

- `time: Instant`: The timestamp of the data point.
- `roaDuration: RoaDuration?`: The duration associated with the substance dose (if applicable).
- `numDots: Int?`: The number of dots representing the dose (if applicable).

### DataForOneRating

A data class representing a single rating data point:

- `time: Instant`: The timestamp of the rating.
- `option: ShroominoRatingOption`: The rating option selected.

### DataForOneTimedNote

A data class representing a single timed note data point:

- `time: Instant`: The timestamp of the note.
- `color: ColorInt`: The color associated with the note.

## Methods/Functions

### TimelineScreen Composable

The main composable function that represents the timeline screen. It accepts several parameters such as `viewModel`, `onEvent`, and a lambda for setting time display options.

#### Parameters:

- `viewModel`: An instance of `TimelineScreenViewModel` to fetch data.
- `onEvent`: A lambda function to handle events, such as changing time display options.
- `setTimeDisplayOption`: A lambda function to set the current time display option based on the selected value.

### ViewModel Composition

The composable function that sets up a column layout for the timeline. It includes a dropdown menu to select the time display option and a button to update the UI with the selected option.

#### Parameters:

- `viewModel`: An instance of `TimelineScreenViewModel` to fetch data.
- `setTimeDisplayOption`: A lambda function to set the current time display option based on the selected value.

### DropdownMenu Composable

A composable function that creates a dropdown menu for selecting the time display option. It updates the view model with the selected option when changed.

#### Parameters:

- `options: List<TimeDisplayOption>`: The list of available time display options.
- `selectedOption`: The currently selected option.
- `onSelect`: A lambda function to update the selected option.

### Button Composable

A composable function that creates a button for updating the UI with the selected time display option. It calls the provided lambda function when clicked.

#### Parameters:

- `viewModel`: An instance of `TimelineScreenViewModel` to fetch data.
- `onUpdateUi`: A lambda function to update the UI based on the selected option.

### Text Composable

A composable function that creates a text element for displaying the current time display option. It updates the view model with the selected option when changed.

#### Parameters:

- `viewModel`: An instance of `TimelineScreenViewModel` to fetch data.
- `selectedOption: TimeDisplayOption`: The currently selected option.

## Dependencies

The code depends on various classes and types from other files, including but not limited to:

- `IngestionElement`
- `AllTimelinesModel`
- `DataForOneRating`
- `DataForOneTimedNote`
- `SavedTimeDisplayOption`

These dependencies are required for the timeline display logic and data aggregation.

