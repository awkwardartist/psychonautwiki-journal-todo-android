```markdown
# SearchRepositoryInterface.kt

## Overview

The `SearchRepositoryInterface` provides a clear contract for the search repository interface within the PsychonautWiki Journal application. It defines methods to retrieve substances based on various criteria, making it easy to use across different parts of the application without exposing implementation details.

This interface is critical for ensuring that the search functionality remains consistent and predictable, allowing developers to rely on it for searching substances in a standardized way.

## Classes/Types

### SearchRepositoryInterface (Interface)

The `SearchRepositoryInterface` defines several methods that are essential for substance searching:

#### Methods/Functions

1. **getMatchingSubstances(searchText: String, filterCategories: List<String>, recentlyUsedSubstanceNamesSorted: List<String>): List<SubstanceWithCategories>**

   - **Parameters**:
     - `searchText`: A string representing the search query.
     - `filterCategories`: A list of category names to filter substances by.
     - `recentlyUsedSubstanceNamesSorted`: A sorted list of recently used substance names.

   - **Return Type**: A list of `SubstanceWithCategories` objects that match the search criteria and filters applied.

   - **Description**:
     This method retrieves a list of substances that match the provided search text, filtered by categories, and considering recently used substances. It returns the results sorted according to specific rules.

2. **getMatchingSubstances(searchText: String): List<SubstanceWithCategories>**

   - **Parameters**:
     - `searchText`: A string representing the search query.

   - **Return Type**: A list of `SubstanceWithCategories` objects that match the search text without applying any filters or sorting based on recently used substances.

   - **Description**:
     This method retrieves a list of substances that match the provided search text. It does not apply any filters or consider recently used substances in its results.

## Usage

The `SearchRepositoryInterface` should be implemented by classes that provide the actual logic for searching substances, such as `SearchRepository`. Implementations of this interface must ensure that all methods are correctly implemented and perform their intended operations.

Developers can use the methods provided by this interface to search for substances in a standardized way throughout the application. This ensures consistency and predictability in the search functionality.

## Example Usage

```kotlin
class MySearchRepository : SearchRepositoryInterface {
    override fun getMatchingSubstances(
        searchText: String,
        filterCategories: List<String>,
        recentlyUsedSubstanceNamesSorted: List<String>
    ): List<SubstanceWithCategories> {
        // Implementation of the search logic
    }
}
```

In this example, `MySearchRepository` is an implementation of `SearchRepositoryInterface`. It provides a concrete implementation for the `getMatchingSubstances` method, which should include the actual logic for searching substances based on the provided criteria.
```

