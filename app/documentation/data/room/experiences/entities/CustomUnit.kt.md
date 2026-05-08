# CustomUnit.kt

## Overview

The `CustomUnit.kt` file contains a Kotlin data class used to represent custom units in the PsychonautWiki Journal app. This class is likely part of a database schema using Room, a persistence library for Android developed by Google.

## Classes/Types

### CustomUnit

```kotlin
@Entity(tableName = "custom_units")
data class CustomUnit(
    @PrimaryKey(autoGenerate = true)
    val id: Int,
    var substanceName: String,
    var dose: Double,
    var unit: String,
    var notes: String?,
    var timestamp: Instant
)
```

#### Properties

- `id`: An integer representing the unique identifier for this custom unit. This is an auto-generated primary key.
  
- `substanceName`: A string representing the name of the substance associated with this custom unit.

- `dose`: A double representing the dose amount of the substance.

- `unit`: A string representing the unit in which the dose is measured (e.g., mg, g).

- `notes`: An optional string that can be used to store additional notes about the custom unit.

- `timestamp`: An instant representing the timestamp when this custom unit was created or modified.

## Methods/Functions

This class does not contain any methods of its own. However, it is a data class, so it automatically comes with the following functions:

1. **Constructor**: Initializes the properties of the `CustomUnit` instance.
2. **copy()**: Creates a copy of this instance with specified changes.
3. **equals()**: Compares this object with the specified object for equality.
4. **hashCode()**: Returns a hash code value for this object based on its properties.
5. **toString()**: Returns a string representation of this object, including all its properties.

## Usage Context

This `CustomUnit` class is likely used to store custom units in a database table named `custom_units`. It allows users to specify the substance name, dose amount, unit, and additional notes for each unit. The timestamp property can be used to keep track of when these units were created or updated.

For interacting with the database using Room, you would typically define an interface annotated with `@Dao` and include methods that use this data class as parameters or return types. For example:

```kotlin
@Dao
interface CustomUnitDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    fun insert(customUnit: CustomUnit)

    @Query("SELECT * FROM custom_units WHERE substanceName = :substanceName")
    fun findBySubstanceName(substanceName: String): List<CustomUnit>

    @Delete
    fun delete(customUnit: CustomUnit)
}
```

This interface defines methods for inserting, querying, and deleting `CustomUnit` objects in the database. The Room framework will generate an implementation of this interface at compile time.

