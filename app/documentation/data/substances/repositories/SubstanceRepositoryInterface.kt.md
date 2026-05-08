# SubstanceRepositoryInterface.kt

## Overview

The `SubstanceRepositoryInterface` defines a contract for interacting with substances and categories within an application. It provides methods for retrieving various data about substances, including their names, descriptions, effects, and associated categories.

## Classes/Types

### SubstanceRepositoryInterface

This interface outlines the operations that can be performed on the substance repository. It includes methods to retrieve all substances, substances with specific categories, individual substances by name, and categories by name.

## Methods/Functions

### getAllSubstances()

- **Returns**: `List<Substance>`
- **Description**: Retrieves a list of all substances stored in the repository.

### getAllSubstancesWithCategories()

- **Returns**: `List<SubstanceWithCategories>`
- **Description**: Retrieves a list of all substances along with their associated categories.

### getAllCategories()

- **Returns**: `List<Category>`
- **Description**: Retrieves a list of all categories available within the substance repository.

### getSubstance(substanceName: String)

- **Parameters**:
  - `substanceName`: The name of the substance to retrieve.
- **Returns**: `Substance?`
- **Description**: Retrieves a specific substance by its name. Returns null if no such substance exists.

### getCategory(categoryName: String)

- **Parameters**:
  - `categoryName`: The name of the category to retrieve.
- **Returns**: `Category?`
- **Description**: Retrieves a specific category by its name. Returns null if no such category exists.

### getSubstanceWithCategories(substanceName: String)

- **Parameters**:
  - `substanceName`: The name of the substance to retrieve along with its categories.
- **Returns**: `SubstanceWithCategories?`
- **Description**: Retrieves a specific substance by its name, including all associated categories. Returns null if no such substance exists.

These methods provide a structured way to interact with substance and category data within an application, ensuring that data retrieval is consistent and predictable.

