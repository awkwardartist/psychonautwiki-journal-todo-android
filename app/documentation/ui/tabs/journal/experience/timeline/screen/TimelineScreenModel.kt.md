# TimelineScreenModel.kt

## Overview
The `TimelineScreenModel.kt` file contains a data model class named `TimelineScreenModel` which is used for representing the state of the timeline screen within the application.

## Classes/Types
### TimelineDisplayOption
- **Enum**: Represents different display options for the timeline screen.
  - **NotWorthDrawing**: Indicates that there's no data to draw on the timeline.
  - **Loading**: Indicates that data is being loaded and the exact display option isn't known yet.
  - **Shown(AllTimelinesModel)**: Indicates that the timeline should be shown with the provided model.
  - **Hidden**: Indicates that the timeline should not be displayed.

### AllTimelinesModel
- **Data Class**: Represents the model for displaying timelines.
  - **dataForLines**: A list of `DataForOneLine` objects representing the lines to be drawn on the timeline.
  - **dataForRatings**: A list of `DataForOneRating` objects representing the ratings data for the timeline.
  - **timedNotes**: A list of `DataForOneTimedNote` objects representing the timed notes data for the timeline.
  - **areSubstanceHeightsIndependent**: A boolean indicating whether the heights of substances on the timeline should be independent or not.

## Methods/Functions
### `TimelineDisplayOption`
- **NotWorthDrawing**
  - Returns: Indicates that there's no data to draw on the timeline.

- **Loading**
  - Returns: Indicates that data is being loaded and the exact display option isn't known yet.

- **Shown(AllTimelinesModel)**
  - Parameter: `model` (AllTimelinesModel): The model containing data for the timeline.
  - Returns: Indicates that the timeline should be shown with the provided model.

- **Hidden**
  - Returns: Indicates that the timeline should not be displayed.

### `AllTimelinesModel`
- **Data Class**: Represents the model for displaying timelines.

## Usage Context
To use these classes and methods, you would typically instantiate them within a ViewModel or similar state management class, and update their properties as data changes. The `TimelineDisplayOption` enum and `AllTimelinesModel` data class are used to pass display logic and data between different parts of the application, particularly in response to user interactions or data updates on the timeline screen.

