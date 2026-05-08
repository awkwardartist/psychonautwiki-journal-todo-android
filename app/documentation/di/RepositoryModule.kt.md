# RepositoryModule.kt

## Overview

`RepositoryModule.kt` is a Kotlin file that provides a module for dependency injection using Dagger Hilt. This module binds implementations of interfaces to their respective repository classes, ensuring that they are correctly injected throughout the application.

This file is part of the `PsychonautWiki Journal` project and is subject to the GNU General Public License (GPL) as published by the Free Software Foundation. It contains a single abstract class `RepositoryModule` that defines bindings for various repository interfaces and their implementations.

## Classes/Types

### RepositoryModule

- **Type**: Abstract Class
- **Purpose**: This class serves as a Dagger Hilt module to bind repository interfaces to their concrete implementations.
  
#### Annotations:

- `@Module`: Indicates that this class is a Dagger module, which means it provides dependencies for other components (like fragments, activities, or services).
- `@InstallIn(SingletonComponent::class)`: Specifies the component into which this module will be installed. In this case, it's the singleton component.

### SubstanceParserInterface, SubstanceRepositoryInterface, SearchRepositoryInterface

These are interface types that define contracts for parsing substances and managing search operations within the application. Each of these interfaces is bound to its corresponding implementation class in this module.

## Methods/Functions

The `RepositoryModule` abstract class contains three methods, each annotated with `@Binds`. These methods bind a specific implementation class to its respective interface.

### bindSubstanceParser

- **Purpose**: Binds the `SubstanceParser` class to the `SubstanceParserInterface`.
  
#### Signature:

```kotlin
@Binds
@Singleton
abstract fun bindSubstanceParser(
    substanceParser: SubstanceParser
): SubstanceParserInterface
```

#### Parameters:

- `substanceParser`: An instance of `SubstanceParser`.

#### Returns:

- A binding from `SubstanceParser` to `SubstanceParserInterface`.

### bindSubstanceRepository

- **Purpose**: Binds the `SubstanceRepository` class to the `SubstanceRepositoryInterface`.
  
#### Signature:

```kotlin
@Binds
@Singleton
abstract fun bindSubstanceRepository(
    substanceRepository: SubstanceRepository
): SubstanceRepositoryInterface
```

#### Parameters:

- `substanceRepository`: An instance of `SubstanceRepository`.

#### Returns:

- A binding from `SubstanceRepository` to `SubstanceRepositoryInterface`.

### bindSearchRepository

- **Purpose**: Binds the `SearchRepository` class to the `SearchRepositoryInterface`.
  
#### Signature:

```kotlin
@Binds
@Singleton
abstract fun bindSearchRepository(
    substanceRepository: SearchRepository
): SearchRepositoryInterface
```

#### Parameters:

- `substanceRepository`: An instance of `SearchRepository`.

#### Returns:

- A binding from `SearchRepository` to `SearchRepositoryInterface`.

## Context

For a comprehensive understanding of this file, you may need context on the overall architecture and structure of the `PsychonautWiki Journal` application, specifically how Dagger Hilt is used for dependency injection and the role of repositories in managing data access within the app.

