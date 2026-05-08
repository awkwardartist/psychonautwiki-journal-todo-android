## Overview

The `TimedNote` class represents a timed note associated with an experience in the app. It includes properties for the creation date, time of the note, the actual note text, color, experience ID, and whether it is part of the timeline.

## Classes/Types

### TimedNote

#### Properties

- **id**: Int - Unique identifier for the timed note (auto-generated).
- **creationDate**: Instant - The date and time when the note was created. Defaults to the current instant.
- **time**: Instant - The specific time of day associated with this note.
- **note**: String - The content of the note.
- **color**: AdaptiveColor - The color associated with the note, typically used for UI representation.
- **experienceId**: Int - The ID of the experience to which this note is associated.
- **isPartOfTimeline**: Boolean - Indicates whether this note is part of the experience's timeline.

## Methods/Functions

### Constructors

#### TimedNote()

Default constructor that initializes all properties with their default values.

### Functions

None.

