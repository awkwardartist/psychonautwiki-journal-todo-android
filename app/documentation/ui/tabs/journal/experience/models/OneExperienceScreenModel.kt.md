# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/models/OneExperienceScreenModel.kt

## Overview
`OneExperienceScreenModel` is a data class designed to represent the comprehensive model of an experience screen in the PsychonautWiki Journal application. This model encapsulates all necessary data points required for displaying and interacting with an experience record, including ingestion details, cumulative doses, interactions, ratings, notes, and more.

## Classes/Types
### OneExperienceScreenModel
- **Description**: This data class contains all the necessary properties to fully describe a single experience screen in the application.
- **Properties**:
  - `isFavorite`: A boolean indicating whether the experience is marked as a favorite.
  - `title`: The title of the experience.
  - `firstIngestionTime`: An Instant representing the time when the first ingestion occurred during this experience.
  - `notes`: A string containing any additional notes about the experience.
  - `locationName`: The name of the location where the experience took place.
  - `isCurrentExperience`: A boolean indicating whether this is the current experience being viewed.
  - `ingestionElements`: A list of `IngestionElement` objects representing all ingested substances and their associated details.
  - `cumulativeDoses`: A list of `CumulativeDose` objects summarizing the total doses for each substance taken during the experience.
  - `interactions`: A list of `Interaction` objects representing any interactions or external events experienced.
  - `interactionExplanations`: A list of `InteractionExplanation` objects providing detailed explanations for any special interactions.
  - `ratings`: A list of `ShulginRating` objects indicating subjective ratings or assessments of the experience.
  - `timedNotesSorted`: A sorted list of `TimedNote` objects representing notes with timestamps, useful for tracking events during the experience.
  - `consumersWithIngestions`: A list of `ConsumerWithIngestions` objects summarizing the consumers and their ingestion details.

## Methods/Functions
No methods are defined in this class. It is purely a data structure to hold all relevant information about an experience screen.

## Dependencies
- **Packages**:
  - `com.isaakhanimann.journal.data.room.experiences.entities`
    - `ShulginRating`
    - `TimedNote`
  - `com.isaakhanimann.journal.ui.tabs.journal.addingestion.interactions`
    - `Interaction`
  - `com.isaakhanimann.journal.ui.tabs.journal.experience.components`
    - `DataForOneEffectLine`
  - `com.isaakhanimann.journal.ui.tabs.journal.experience.models`
    - `ConsumerWithIngestions`, `CumulativeDose`, `IngestionElement`, `InteractionExplanation`
- **Classes/Interfaces**:
  - `com.isaakhanimann.journal.data.substances.classes.roa.RoaDuration`
  - `java.time.Instant`

## Usage Context
To effectively use `OneExperienceScreenModel` in the application, you would typically create an instance of this class with the relevant data and then pass it to components or screens that display the experience details. This model is designed to be versatile and comprehensive, allowing for a detailed view of any given experience record.

