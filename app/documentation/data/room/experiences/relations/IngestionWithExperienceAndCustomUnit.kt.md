## Overview

The `IngestionWithExperienceAndCustomUnit.kt` file contains a Kotlin data class that represents a relationship between an `Ingestion`, an `Experience`, and an optional `CustomUnit`. This data class is used to fetch related entities from the database when querying for ingestions, their associated experiences, and any custom units associated with those ingestions.

## Classes/Types

### IngestionWithExperienceAndCustomUnit

This data class is a composite of three embedded entities: `Ingestion`, `Experience`, and optionally a `CustomUnit`. It uses the Room Persistence Library's `@Embedded` and `@Relation` annotations to define how these entities are related in the database.

#### Properties

- **ingestion**: An instance of `Ingestion`.
- **experience**: An instance of `Experience`.
- **customUnit**: An optional instance of `CustomUnit`. This property is annotated with `@Relation` and specifies the relationship between the `Ingestion` and the `CustomUnit` based on the `customUnitId`.

#### Relationships

The class defines a relationship where an `Ingestion` can be associated with one `Experience`, and optionally with one `CustomUnit`. This relationship is crucial for querying ingestions in the context of their experiences and any custom units used during those ingestions.

## Methods/Functions

### None

This data class does not contain any methods or functions. It serves purely as a container to hold related entities fetched from the database.

## Usage Context

To utilize this data class, you would typically use it with Room's `@Dao` interface to define queries that join `Ingestion`, `Experience`, and `CustomUnit` tables based on their relationships. This allows for efficient querying of complex data structures stored in a relational database without the need for manually joining tables in your application code.

## Example

Here is an example of how you might use this class with a DAO:

```kotlin
@Dao
interface IngestionDao {
    @Query("SELECT * FROM ingestion_table")
    fun getAllIngestionsWithExperienceAndCustomUnit(): List<IngestionWithExperienceAndCustomUnit>
}
```

This query retrieves all ingestions along with their associated experiences and custom units, which can then be accessed through the properties of `IngestionWithExperienceAndCustomUnit`.

