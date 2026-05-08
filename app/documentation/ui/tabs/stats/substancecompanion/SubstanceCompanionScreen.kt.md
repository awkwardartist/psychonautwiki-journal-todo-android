# Overview

The `SubstanceCompanionScreen.kt` file is part of a Kotlin-based Android application designed for managing and viewing substance-related data, specifically focusing on a companion substance or drug. This screen provides detailed insights into the user's interactions with a particular substance, including ingestion history and related information.

## Classes/Types

1. **SubstanceCompanionScreen**

   - **Purpose**: The main component that composes the UI for displaying substance companion details.
   - **Hierarchy**:
     ```kotlin
     @Composable
     fun SubstanceCompanionScreen()
     ```

2. **IngestionsBurst**

   - **Purpose**: A data class representing a burst of ingestions, typically grouped by an experience or event.
   - **Properties**:
     - `timeUntil`: A string representing the time elapsed since the last ingestion.
     - `experience`: An `Experience` object representing the related experience.
     - `ingestions`: A list of `IngestionAndCustomUnit` objects.

3. **IngestionAndCustomUnit**

   - **Purpose**: Represents an individual ingestion with optional custom unit information.
   - **Properties**:
     - `ingestion`: An `Ingestion` object representing the ingestion details.
     - `customUnit`: A nullable `CustomUnit` object representing any custom unit associated with the ingestion.

4. **TimeArrowUp**

   - **Purpose**: A composable function for displaying a graphical representation of time progression, often used to indicate the duration between events.
   - **Parameters**:
     - `timeText`: A string representing the time elapsed or the current time.

## Methods/Functions

1. **SubstanceCompanionScreen()**

   - **Description**: The primary composable function that defines the UI for the substance companion screen.
   - **Implementation**:
     ```kotlin
     @Composable
     fun SubstanceCompanionScreen() {
         // Implementation details
     }
     ```

2. **TimeArrowUp(timeText: String)**

   - **Description**: A composable function that displays a graphical representation of time progression.
   - **Parameters**:
     - `timeText`: The text to be displayed alongside the time arrow.
   - **Implementation**:
     ```kotlin
     @Composable
     fun TimeArrowUp(timeText: String) {
         // Implementation details
     }
     ```

3. **TimeArrowUpPreview()**

   - **Description**: A preview function for displaying the `TimeArrowUp` composable in a development environment.
   - **Implementation**:
     ```kotlin
     @Preview
     @Composable
     fun TimeArrowUpPreview() {
         // Implementation details
     }
     ```

## Dependencies

- `com.isaakhanimann.journal.ui.tabs.stats.substancecompanion.IngestionsBurst`
- `com.isaakhanimann.journal.ui.tabs.stats.substancecompanion.IngestionAndCustomUnit`
- `com.isaakhanimann.journal.ui.tabs.stats.substancecompanion.TimeArrowUp`

## Notes

For a comprehensive understanding of the application, additional context may be required, particularly around how data is managed and retrieved from repositories like `ExperienceRepository` and `SubstanceRepository`.

