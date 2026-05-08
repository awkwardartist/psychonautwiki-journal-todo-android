## Overview

The `SubstanceRepository.kt` file provides a repository implementation for managing substances and their associated categories within an Android application using Dagger Hilt dependency injection. The primary purpose of this repository is to handle data persistence, retrieval, and manipulation related to substances and categories.

## Classes/Types

### SubstanceRepository

#### Description

The `SubstanceRepository` class implements the `SubstanceRepositoryInterface` and provides concrete implementations for managing substance data. It uses Dagger Hilt for dependency injection and accesses a JSON file containing substance data through the `AssetManager`.

#### Properties

- **appContext: Context** - The application context provided by Dagger Hilt.

#### Methods/Functions

1. **getAssetsSubstanceFileContent()**

   #### Description

   This method reads the contents of the "Substances.json" file from the application's assets folder and returns it as a string.

2. **init()**

   #### Description

   Initializes the `substanceFile` property by calling `getAssetsSubstanceFileContent()` and parsing the JSON content using the provided `SubstanceParserInterface`.

3. **getAllSubstances(): List<Substance>**

   #### Description

   Returns a list of all substances.

4. **getAllSubstancesWithCategories(): List<SubstanceWithCategories>**

   #### Description

   Returns a list of substances with their associated categories.

5. **getAllCategories(): List<Category>**

   #### Description

   Returns a list of all categories.

6. **getSubstance(substanceName: String): Substance?**

   #### Description

   Retrieves a substance by its name.

7. **getCategory(categoryName: String): Category?**

   #### Description

   Retrieves a category by its name.

8. **getSubstanceWithCategories(substanceName: String): SubstanceWithCategories?**

   #### Description

   Retrieves a substance with its associated categories by its name.

## Usage Context

To use the `SubstanceRepository`, you need to:

1. Include the repository interface in your Dagger Hilt module.
2. Inject an instance of `SubstanceParserInterface` into the repository during initialization.
3. Access the repository's methods to retrieve or manipulate substance and category data as needed within your application.

This setup ensures that the repository is decoupled from the rest of the application, adhering to the principles of clean architecture and making it easier to test and maintain.

