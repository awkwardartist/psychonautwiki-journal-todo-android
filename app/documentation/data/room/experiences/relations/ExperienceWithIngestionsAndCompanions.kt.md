# ./app/src/main/java/com/isaakhanimann/journal/data/room/experiences/relations/ExperienceWithIngestionsAndCompanions.kt

## Overview

The `ExperienceWithIngestionsAndCompanions` data class represents a relationship between an `Experience` and its associated `Ingestion`s, each with their respective substance companions. This data structure is utilized in the Room database to efficiently query the database for detailed information about an experience along with all related ingestions and companions.

## Classes/Types

### ExperienceWithIngestionsAndCompanions

**Description**: Represents a relationship between an `Experience` and its associated `Ingestion`s, each with their respective substance companions.

**Properties**:

- **experience**: The `Experience` object associated with the ingestion.
  - **Type**: `Experience`
  - **Details**: Contains information about the experience such as the date, location, duration, etc.

- **ingestions**: A list of `IngestionWithCompanion` objects representing each substance taken during the experience.
  - **Type**: `List<IngestionWithCompanion>`
  - **Details**: Each `IngestionWithCompanion` object contains an `Ingestion`, its associated `SubstanceCompanion`, and optionally a `CustomUnit`.

### IngestionWithCompanion

**Description**: Represents the relationship between an `Ingestion` and its associated substance companion.

**Properties**:

- **ingestion**: The `Ingestion` object representing the substance taken.
  - **Type**: `Ingestion`
  - **Details**: Contains information about the ingestion such as the substance name, dose, unit, etc.

- **substanceCompanion**: The `SubstanceCompanion` object associated with the substance in the ingestion.
  - **Type**: `SubstanceCompanion?`
  - **Details**: Contains optional information about any companions or additional details related to the substance taken.

## Methods/Functions

### Not Applicable

- There are no methods/functions defined within this data class. It is purely a data structure for representing relationships between entities in the Room database.

## Context

To fully understand and utilize this data structure, it's important to have context about how it integrates with other parts of the application, particularly the Room database schema and query functions. The `ExperienceWithIngestionsAndCompanions` class is used to facilitate efficient querying and retrieval of detailed information about an experience and its associated ingestions and companions from the database.

