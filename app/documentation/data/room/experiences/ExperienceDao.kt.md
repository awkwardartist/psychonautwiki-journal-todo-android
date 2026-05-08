## Overview

The `ExperienceDao` class is a data access object (DAO) for interacting with the database related to experiences, ingestions, custom substances, substance companions, ratings, and timed notes. It provides methods for inserting, deleting, updating, and retrieving various entities.

## Classes/Types

### ExperienceDao
This is an interface that defines all the database operations related to experience data. The DAO uses Room persistence library annotations to map Java/Kotlin objects to database queries.

## Methods/Functions

### insertIngestionExperienceAndCompanion(ingestion: Ingestion, experience: Experience, substanceCompanion: SubstanceCompanion)
This method inserts an ingestion, an associated experience, and a substance companion into the database. It's used when creating a new ingestion that is linked to a specific experience and substance.

### insertEverything(journalExport: JournalExport)
This method inserts everything from a `JournalExport` object into the database, including experiences, ingestions, custom substances, substance companions, ratings, and timed notes.

### insertIngestionAndCompanion(ingestion: Ingestion, substanceCompanion: SubstanceCompanion)
This method inserts an ingestion and its associated substance companion into the database.

### deleteEverything()
This method deletes all data from all tables managed by this DAO. It should be used with caution as it will clear all user-generated content.

### deleteUnusedSubstanceCompanions()
This method deletes substance companions that are no longer associated with any experience, helping to clean up unused data.

### getSortedExperiencesWithIngestionsWithSortDateBetween(fromInstant: Instant, toInstant: Instant)
This method retrieves experiences sorted by their sort date between two specified instants. This can be used to filter experiences within a specific time range.

### getSortedExperienceWithIngestionsCompanionsAndRatingsFlow()
This method returns a flow of experiences sorted by ingestion and companions, along with associated ratings. It's useful for UI components that need to display multiple related entities in a sorted order.

### deleteEverythingOfExperience(experienceId: Int)
This method deletes all data associated with a specific experience ID, including the experience itself and its linked ingestions, substance companions, ratings, and timed notes.

### getAllCustomSubstances()
This method retrieves all custom substances from the database. It's useful for populating lists or dropdowns of available substances.

### getSortedLastUsedSubstanceNamesFlow(limit: Int)
This method returns a flow of the last used substance names sorted alphabetically, limited by the specified number. This can be used to display a list of recently used substances in the UI.

### delete(substanceCompanion: SubstanceCompanion)
This method deletes a specific substance companion from the database.

### update(substanceCompanion: SubstanceCompanion)
This method updates an existing substance companion in the database with new data.

### insert(customSubstance: CustomSubstance): Int
This method inserts a new custom substance into the database and returns its ID. This is useful when you need to get the ID of the newly inserted substance immediately after insertion.

### delete(customSubstance: CustomSubstance)
This method deletes an existing custom substance from the database.

### update(customSubstance: CustomSubstance)
This method updates an existing custom substance in the database with new data.

## Additional Information

For detailed documentation on Room persistence library and its annotations, refer to the official Android developer documentation. The `ExperienceDao` class uses various Room annotations like `@Insert`, `@Delete`, `@Update`, and `@Query` to define its methods and map them to SQL queries.

