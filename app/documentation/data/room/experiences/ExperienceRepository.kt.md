# ./app/src/main/java/com/isaakhanimann/journal/data/room/experiences/ExperienceRepository.kt

## Overview

The `ExperienceRepository` class serves as a central point for managing data operations related to experiences, ingestions, substance companions, custom substances, ratings, and timed notes within the application. It provides methods for inserting, deleting, updating, and retrieving various types of data entities. The repository interacts with an underlying database through a DAO (Data Access Object) layer.

This documentation aims to provide detailed insight into the functionality and usage of the `ExperienceRepository` class, including its methods, their parameters, return values, and side effects.

## Classes/Types

### ExperienceRepository

The `ExperienceRepository` class is a repository pattern implementation that abstracts access to data sources. It ensures loose coupling between the application's business logic and data storage.

### IngestionWithExperienceAndCustomUnit

A composite type representing an ingestion along with its associated experience and custom unit. This type is used in queries that require joining multiple tables.

### ExperienceWithIngestionsCompanionsAndRatings

A composite type representing an experience along with its associated ingestions, substance companions, and ratings. This type is used in queries that require joining multiple tables.

### CustomSubstanceWithIngestions

A composite type representing a custom substance along with its associated ingestions. This type is used in queries that require joining multiple tables.

## Methods/Functions

### deleteEverything()

```kotlin
suspend fun deleteEverything()
```

Deletes all data from the database, including experiences, ingestions, substance companions, custom substances, ratings, and timed notes.

**Side Effects:** Deletes all records from the database.

### delete(ingestion: Ingestion)

```kotlin
suspend fun delete(ingestion: Ingestion)
```

Deletes a single ingestion record from the database.

**Parameters:**
- `ingestion`: The ingestion to be deleted.

**Side Effects:** Deletes a record from the database.

### delete(customUnit: CustomUnit)

```kotlin
suspend fun delete(customUnit: CustomUnit)
```

Deletes a single custom unit record from the database.

**Parameters:**
- `customUnit`: The custom unit to be deleted.

**Side Effects:** Deletes a record from the database.

### getSortedExperiencesWithIngestionsFlow()

```kotlin
fun getSortedExperiencesWithIngestionsFlow(): Flow<List<ExperienceWithIngestions>>
```

Provides a flow of experiences with their associated ingestions, sorted by sort date.

**Return Value:**
- A flow emitting a list of `ExperienceWithIngestions` objects, each containing an experience and its related ingestions.

**Side Effects:** None.

### getSortedExperiencesWithIngestionsAndCustomUnitsFlow()

```kotlin
fun getSortedExperiencesWithIngestionsAndCustomUnitsFlow(): Flow<List<ExperienceWithIngestionsCompanions>>
```

Provides a flow of experiences with their associated ingestions and substance companions, sorted by sort date.

**Return Value:**
- A flow emitting a list of `ExperienceWithIngestionsCompanions` objects, each containing an experience and its related ingestions and substance companions.

**Side Effects:** None.

### getCustomSubstancesFlow()

```kotlin
fun getCustomSubstancesFlow(): Flow<List<CustomSubstance>>
```

Provides a flow of all custom substances.

**Return Value:**
- A flow emitting a list of `CustomSubstance` objects.

**Side Effects:** None.

### getExperience(id: Int)

```kotlin
suspend fun getExperience(id: Int): Experience?
```

Retrieves an experience by its ID.

**Parameters:**
- `id`: The ID of the experience to retrieve.

**Return Value:**
- An `Experience` object if found, otherwise `null`.

**Side Effects:** None.

### getIngestionsWithCompanionsFlow(fromInstant: Instant, toInstant: Instant)

```kotlin
fun getIngestionsWithCompanionsFlow(fromInstant: Instant, toInstant: Instant): Flow<List<IngestionWithCompanion>>
```

Provides a flow of ingestions within a specified time range along with their associated substance companions.

**Parameters:**
- `fromInstant`: The start of the time range.
- `toInstant`: The end of the time range.

**Return Value:**
- A flow emitting a list of `IngestionWithCompanion` objects, each containing an ingestion and its related substance companion.

**Side Effects:** None.

### getTimedNotesFlowSorted(experienceId: Int)

```kotlin
fun getTimedNotesFlowSorted(experienceId: Int): Flow<List<TimedNote>>
```

Provides a flow of timed notes associated with a specific experience, sorted by their sort date.

**Parameters:**
- `experienceId`: The ID of the experience.

**Return Value:**
- A flow emitting a list of `TimedNote` objects, each containing a timed note.

**Side Effects:** None.

### insert(customSubstance: CustomSubstance): Int

```kotlin
suspend fun insert(customSubstance: CustomSubstance): Int
```

Inserts a new custom substance into the database and returns its ID.

**Parameters:**
- `customSubstance`: The custom substance to be inserted.

**Return Value:**
- An integer representing the ID of the newly inserted custom substance.

**Side Effects:** Inserts a record into the database.

### insertIngestionAndCompanion(ingestion: Ingestion, substanceCompanion: SubstanceCompanion)

```kotlin
suspend fun insertIngestionAndCompanion(ingestion: Ingestion, substanceCompanion: SubstanceCompanion)
```

Inserts a new ingestion and its associated substance companion into the database.

**Parameters:**
- `ingestion`: The ingestion to be inserted.
- `substanceCompanion`: The substance companion to be inserted along with the ingestion.

**Side Effects:** Inserts records into the database.

### insertEverything(journalExport: JournalExport)

```kotlin
suspend fun insertEverything(journalExport: JournalExport)
```

Inserts all data from a `JournalExport` object into the database, including experiences, ingestions, substance companions, custom substances, ratings, and timed notes.

**Parameters:**
- `journalExport`: The `JournalExport` object containing the data to be inserted.

**Side Effects:** Inserts records into the database.

### update(substanceCompanion: SubstanceCompanion)

```kotlin
suspend fun update(substanceCompanion: SubstanceCompanion)
```

Updates an existing substance companion record in the database.

**Parameters:**
- `substanceCompanion`: The substance companion to be updated.

**Side Effects:** Updates a record in the database.

