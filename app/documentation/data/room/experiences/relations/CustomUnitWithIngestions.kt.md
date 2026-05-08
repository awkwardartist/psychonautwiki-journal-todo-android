# CustomUnitWithIngestions.kt

## Overview
The `CustomUnitWithIngestions` class represents a one-to-many relationship between `CustomUnit` and `Ingestion`. It is used to fetch details about custom units that have been ingested.

## Classes/Types

### CustomUnitWithIngestions
- **Description**: Represents the relationship between a `CustomUnit` and its associated `Ingestion`.
- **Properties**:
  - **customUnit: CustomUnit?**
    - Description: The custom unit that has been ingested.
    - Type: CustomUnit?
    - Default Value: null

## Methods/Functions

### Constructor
```kotlin
constructor(customUnit: CustomUnit?)
```
- **Description**: Initializes a new instance of the `CustomUnitWithIngestions` class with the specified custom unit.
- **Parameters**:
  - **customUnit: CustomUnit?**
    - Description: The custom unit that has been ingested.

### Member Properties

#### customUnit
- **Description**: Gets or sets the custom unit associated with the ingestion.
- **Type**: CustomUnit?
- **Default Value**: null

## Usage Context
To use this class, you would typically fetch it from a database query using Room ORM. The `customUnit` property can then be accessed to get details about the custom unit used in an ingestion.

```kotlin
val customUnitWithIngestions = db.customUnitDao().getCustomUnitWithIngestions(customUnitId)
val customUnit = customUnitWithIngestions?.customUnit
if (customUnit != null) {
    // Use customUnit details
}
```

This example demonstrates how to fetch and use the `customUnit` property from a `CustomUnitWithIngestions` object obtained from the database.

