# `ExperienceWithIngestionsCompanionsAndRatings.kt`

## Overview

The `ExperienceWithIngestionsCompanionsAndRatings.kt` file is part of the PsychonautWiki Journal application. It contains a data class that represents an experience along with its associated ingestions, companions, and ratings.

This file is crucial for managing complex relationships between different entities in the application's database using Room, a persistence library by Google. The data class is annotated with `@Embedded`, indicating that it will be embedded into a larger entity when queried from the database. This structure facilitates efficient querying and access to related data.

## Classes/Types

### `ExperienceWithIngestionsCompanionsAndRatings`

This is the main class defined in the file. It represents an experience with its associated ingestions, companions, and ratings. The class uses Room's relationship annotations to define how these entities are linked.

#### Properties

- **experience**: An embedded instance of the `Experience` entity.
- **ingestions**: A list of embedded instances of the `Ingestion` entity related to the experience.
- **timedNotes**: A list of embedded instances of the `TimedNote` entity related to the experience.
- **ratings**: A list of embedded instances of the `ShulginRating` entity related to the experience.

#### Relationships

- The class uses `@Relation` annotations to define relationships with other entities:
  - `ingestions` is linked to `IngestionWithCompanionAndCustomUnit`.
  - `timedNotes` is linked to `TimedNote`.
  - `ratings` is linked to `ShulginRating`.

## Methods/Functions

### No Public Methods

The `ExperienceWithIngestionsCompanionsAndRatings` class does not contain any public methods. It serves purely as a data carrier for querying the database.

## Additional Notes

- The class is annotated with `@Entity`, but since it is embedded within another entity, the annotation is omitted here.
- The class uses Room's relationship annotations to handle complex queries efficiently by automatically joining related tables in the database.

This documentation provides an overview of the `ExperienceWithIngestionsCompanionsAndRatings` data class, its properties, and how it is used to manage relationships between different entities in the PsychonautWiki Journal application.

