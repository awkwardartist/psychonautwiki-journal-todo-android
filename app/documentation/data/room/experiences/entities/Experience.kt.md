# Experience.kt

## Overview

The `Experience` class represents an experience or session that a user may record within the PsychonautWiki Journal application. An experience typically includes details such as the timestamp of the session, associated substances, notes, and metadata about its duration and nature.

This entity is designed to be stored in a database (specifically using Room), allowing for efficient querying and management of recorded experiences.

## Classes/Types

### Experience

Represents an individual user experience or session within the PsychonautWiki Journal. This class includes several properties that store different aspects of the experience, such as the start time, end time, associated substances, notes, and more.

#### Properties

- `id`: A unique identifier for the experience.
- `startTime`: The timestamp when the experience started.
- `endTime`: The timestamp when the experience ended. This field may be null if the session is still ongoing at the time of recording.
- `duration`: Duration of the experience in hours, calculated from startTime and endTime.
- `substances`: A list of substances that were consumed during this experience.
- `notes`: A list of timed notes or observations made during the experience.
- `environmentalFactors`: Environmental factors that may have influenced the experience, such as lighting, music, etc.
- `emotionalState`: The user's emotional state before and after the session.
- `overallRating`: An overall rating of the experience on a scale (e.g., 1 to 5).
- `archived`: A boolean indicating whether the experience has been archived or is still active.

#### Relationships

The `Experience` entity establishes relationships with several other entities:

- **SubstanceCompanion**: Many-to-many relationship between experiences and substances, where users can record details about substances they consumed.
- **TimedNote**: One-to-many relationship between experiences and notes, allowing for detailed tracking of events or observations during the experience.

#### Methods

- `calculateDuration()`: A method to calculate the duration of the experience based on its start and end times. If the session is still ongoing, it may return an estimated duration.
- `addNote(TimedNote note)`: Adds a new note to the list of timed notes associated with this experience.
- `removeNote(int id)`: Removes a note from the list of timed notes using its ID.

## Example Usage

Below is an example of how you might create and manipulate an instance of the `Experience` class within your application:

```kotlin
val startTime = Instant.now()
val endTime = startTime.plusHours(3)

val experience = Experience(
    id = 1,
    startTime = startTime,
    endTime = endTime,
    duration = (endTime.toEpochMilli() - startTime.toEpochMilli()) / 3600000.0, // Convert milliseconds to hours
    substances = listOf(SubstanceCompanion("MDMA", AdaptiveColor.RED)),
    notes = emptyList(),
    environmentalFactors = "Quiet room with soft lighting",
    emotionalState = "Excited and introspective",
    overallRating = 4,
    archived = false
)

// Adding a note during the experience
val timedNote = TimedNote(
    id = 1,
    creationDate = Instant.now(),
    time = startTime.plusMinutes(30),
    note = "Began to feel strong effects after 20 minutes.",
    color = AdaptiveColor.GREEN,
    experienceId = 1,
    isPartOfTimeline = true
)
experience.addNote(timedNote)

// Removing a note
experience.removeNote(timedNote.id)
```

This example demonstrates the creation of an `Experience` with specific details and adding/removing timed notes associated with it. The class also includes methods to calculate the duration, which can be useful for reporting or further analysis.

