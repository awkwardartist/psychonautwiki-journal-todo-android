## Overview

The `AppModule.kt` file is part of the PsychonautWiki Journal application's dependency injection (DI) configuration. It contains the necessary components for data persistence and data handling using Android's Room database and DataStore. The module provides bindings for classes that interact with these data sources, ensuring a clean separation of concerns and facilitating easier testing.

## Classes/Types

### AppModule

- **Description**: The `AppModule` class is a Dagger Hilt module responsible for providing dependencies related to the application, specifically focusing on data storage.
- **Annotations**:
  - `@Module`: Indicates that this class provides objects used by Dagger.
  - `@InstallIn(SingletonComponent::class)`: Specifies that this module installs bindings into the singleton component of the application.

### Dependencies Provided

1. **ExperienceDao**: Provides access to the Room database's `ExperienceDao` for managing experience data.
2. **AppDatabase**: Initializes and provides an instance of the Room database used for storing experiences.
3. **PreferencesDataStore**: Configures and provides a DataStore for user preferences, handling file corruption by replacing corrupted files with empty preferences.

## Methods/Functions

### provideExperiencesDao

- **Description**: Binds an instance of `ExperienceDao` to be provided throughout the application.
- **Parameters**:
  - `appDatabase`: An instance of `AppDatabase`.
- **Return Type**: `ExperienceDao`
- **Implementation**: Simply returns the `ExperienceDao` passed as a parameter.

### provideAppDatabase

- **Description**: Binds an instance of `AppDatabase` to be provided throughout the application. The database is initialized using Room's `databaseBuilder`.
- **Parameters**:
  - `context`: The application context.
- **Return Type**: `AppDatabase`
- **Implementation**: Uses `Room.databaseBuilder` to create a new Room database with the name "experiences_db".

### providePreferencesDataStore

- **Description**: Binds an instance of `DataStore<Preferences>` to be provided throughout the application. The DataStore is configured for user preferences, handling corruption by replacing corrupted files.
- **Parameters**:
  - `appContext`: The application context.
- **Return Type**: `DataStore<Preferences>`
- **Implementation**: Uses `PreferenceDataStoreFactory.create` with a custom corruption handler that produces empty preferences if the file is corrupted.

## Usage

This module should be included in the Hilt dependency injection setup of the PsychonautWiki Journal application. It provides essential dependencies for data persistence and handling, which are integral to the application's functionality. Any changes to these bindings should be made through the original source files, as this packed representation should remain read-only.

## Context

To fully understand the `AppModule.kt` file, it is necessary to have an understanding of the application's architecture, particularly its use of Dagger Hilt for dependency injection and Room/Preferences DataStore for data persistence.

