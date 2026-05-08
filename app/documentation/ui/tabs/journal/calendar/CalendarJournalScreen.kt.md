## Overview

The `CalendarJournalScreen.kt` file is a central component of the PsychonautWiki Journal application, designed for displaying a calendar-based journal interface. It utilizes Jetpack Compose for UI development and incorporates logic from ViewModel classes to fetch and display experiences based on dates.

This screen includes a vertical calendar that displays days with associated experiences and provides functionality to navigate through time and view detailed experience information in a bottom sheet.

## Classes/Types

### CalendarJournalScreen

#### Purpose
The primary composable function for displaying the calendar-based journal interface.

#### Parameters
- `navigateToExperiencePopNothing`: A lambda function to handle navigation to an experience screen when an experience is selected from the calendar or bottom sheet.

#### Structure
1. **Initialization**: Initializes various state variables and objects required for the calendar display.
2. **UI Components**:
   - **TopAppBar**: Displays a title "Journal" and an action button to navigate to today's date.
   - **Scaffold**: Provides a layout structure with a top bar and content.
   - **VerticalCalendar**: The main calendar component that renders days and experiences.
3. **ModalBottomSheet**: A sheet that appears when multiple experiences are present on a single day, allowing users to choose one experience.

### DayViewModel

#### Purpose
A ViewModel class responsible for fetching experience information for a given day.

#### Properties
- `experienceRepo`: An instance of `ExperienceRepository` used to access database operations.

#### Functions
- `getExperienceInfo(day: CalendarDay)`: Fetches experiences and associated colors that occurred on the specified day.

### ExperienceFetchViewModel

#### Purpose
A ViewModel class responsible for fetching a specific experience based on its ID.

#### Properties
- `experienceRepo`: An instance of `ExperienceRepository` used to access database operations.

#### Functions
- `getExperience(experienceId: Int)`: Fetches and returns the details of the specified experience.

### ExperienceInfo

#### Purpose
Data class to hold information about experiences for a given day, including associated experience IDs and colors.

#### Properties
- `experienceIds`: A list of integers representing the IDs of experiences.
- `colors`: A list of `AdaptiveColor` objects representing the colors associated with these experiences.

## Methods/Functions

### CalendarJournalScreen()

#### Parameters
- `navigateToExperiencePopNothing`: A lambda function to handle navigation to an experience screen when an experience is selected from the calendar or bottom sheet.

#### Steps
1. Initializes various state variables and objects required for the calendar display.
2. Sets up the UI components:
   - **TopAppBar**: Displays a title "Journal" and an action button to navigate to today's date.
   - **Scaffold**: Provides a layout structure with a top bar and content.
   - **VerticalCalendar**: The main calendar component that renders days and experiences.
3. Manages the display of experiences in the vertical calendar and handles interactions like navigating to the bottom sheet when multiple experiences are present on a single day.

### DayViewModel.getExperienceInfo(day: CalendarDay)

#### Parameters
- `day`: A `CalendarDay` object representing the specific day for which experience information is needed.

#### Steps
1. Calculates the start and end of the specified day.
2. Fetches all ingestions (substance use events) that occurred within this time frame from the database using `experienceRepo.getIngestionsWithCompanions`.
3. Extracts unique experience IDs and associated colors from these ingestions.
4. Returns an `ExperienceInfo` object containing these details.

### ExperienceFetchViewModel.getExperience(experienceId: Int)

#### Parameters
- `experienceId`: An integer representing the ID of the experience to be fetched.

#### Steps
1. Fetches the specific experience with related data (ingestions, companions) from the database using `experienceRepo.getExperienceWithIngestionsCompanionsAndRatings`.
2. Returns this experience data if found, otherwise returns `null`.

### HorizontalColorRectangle(modifier: Modifier, colors: List<AdaptiveColor>)

#### Parameters
- `modifier`: A Composable modifier to apply additional styling.
- `colors`: A list of `AdaptiveColor` objects representing the colors to be displayed.

#### Steps
1. Determines if there are two or more colors provided.
2. If so, creates a horizontal gradient brush with these colors and applies it as the background to the Box.
3. If only one color is provided, sets this color as the background of the Box.
4. If no colors are provided, leaves the Box transparent.

## Summary

The `CalendarJournalScreen.kt` file provides a comprehensive view for displaying experiences in a calendar format, leveraging Jetpack Compose for UI composition and ViewModel classes for data management. It facilitates easy navigation through time and detailed access to experience information, enhancing user interaction within the PsychonautWiki Journal application.

