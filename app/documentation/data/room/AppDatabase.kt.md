# Overview

The `AppDatabase.kt` file provides the foundation for the database management within the application. It includes the definition of a Room Database and its associated data access objects (DAOs). The primary purpose of this file is to manage the persistence layer of the application, allowing developers to store, retrieve, update, and delete data in a structured manner.

## Classes/Types

### AppDatabase

- **Description**: This class represents the main entry point for accessing all the DAOs provided by the Room database. It includes the definition of entities that are stored in the database.
- **Type**: Room Database
- **Attributes**:
  - `version`: Specifies the version number of the database schema. The version number is incremented whenever there is a change to the database schema.
  - `entities`: An array of classes representing the tables in the database. Each class corresponds to a table and includes fields for each column in that table.
  - `autoMigrations`: Defines a list of auto-migration strategies that can be applied when upgrading the database schema. This helps in maintaining compatibility with future versions of the app.

### InstantConverter

- **Description**: A type converter used to convert between Kotlin's `Instant` type and SQLite's `TEXT` type, which is suitable for storing date and time information.
- **Type**: Type Converter
- **Attributes**: None

## Methods/Functions

There are no methods or functions defined directly within the `AppDatabase.kt` file. However, it includes an abstract method that must be implemented by a subclass to provide access to the DAOs.

### experienceDao()

- **Description**: This abstract method is used to obtain instances of the DAOs.
- **Type**: Abstract Method
- **Return Type**: ExperienceDao

## Additional Information

The `AppDatabase.kt` file uses Room, an Android persistence library that provides an abstraction layer over SQLite. Room helps in simplifying database operations and ensures type safety.

For more detailed information on using Room and its features, refer to the official documentation: [Room Database Documentation](https://developer.android.com/training/data-storage/room)

