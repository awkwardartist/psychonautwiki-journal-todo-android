```markdown
# Ingestion.kt Documentation

## Overview

The `Ingestion.kt` file contains a data class representing an ingestion event, which is part of a larger system for tracking and managing user experiences with substances. This file is essential for recording when and how much of a substance was consumed.

## Classes/Types

### Ingestion

This data class represents an ingestion event in the application. It contains various properties to describe the ingestion details.

#### Properties

- **id (Int)**: A unique identifier for this ingestion event.
- **creationDate (Instant)**: The date and time when this ingestion event was recorded.
- **substanceName (String)**: The name of the substance that was ingested.
- **amount (Double?)**: The amount of the substance that was ingested, if applicable. This is optional and can be null if not specified.
- **unit (String?)**: The unit in which the substance's amount is measured, if applicable. This is also optional.
- **administrationMethod (String?)**: The method by which the substance was administered (e.g., oral, intravenous).
- **stomachFullness (StomachFullness?)**: The state of stomach fullness when the ingestion occurred. This can help in estimating onset delay.
- **notes (String?)**: Any additional notes or comments about the ingestion event.

### StomachFullness

This enum class represents different states of stomach fullness, which can affect how quickly a substance is absorbed and experienced. It includes properties for each state:

- **EMPTY (StomachFullness)**: The stomach is empty.
- **QUARTER_FULL (StomachFullness)**: The stomach is approximately one-quarter full.
- **HALF_FULL (StomachFullness)**: The stomach is half full.
- **FULL (StomachFullness)**: The stomach is full.
- **VERY_FULL (StomachFullness)**: The stomach is very full.

Each state has properties for the text representation, serialized form, and onset delay in hours if consumed orally.

## Methods/Functions

No methods are defined within this file. All functionality is encapsulated within the `Ingestion` and `StomachFullness` classes.

## Dependencies

This file depends on the following types:

- `AdaptiveColor`: A custom type for adaptive colors.
- `Instant`: Java class representing a timestamp.
- `StomachFullnessSerializer`: A serializer for converting `StomachFullness` enum values to and from JSON.
- `TimedNote`: Another data class related to time-based notes, which might be used in conjunction with ingestion events.

## Usage

To use the classes defined in this file, you would typically create instances of `Ingestion` when recording a substance intake event. This might include details such as the substance name, amount, and administration method. You could also use the `StomachFullness` enum to provide additional context about the ingestion conditions.

Example:

```kotlin
val ingestion = Ingestion(
    id = 1,
    creationDate = Instant.now(),
    substanceName = "LSD",
    amount = 100.0,
    unit = "micrograms",
    administrationMethod = "Oral"
)
```

This example creates an `Ingestion` instance for the ingestion of 100 micrograms of LSD orally, with the current timestamp as the creation date.
```

