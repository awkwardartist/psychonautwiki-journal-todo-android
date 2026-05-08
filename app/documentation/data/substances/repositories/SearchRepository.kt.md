## Overview

The `SearchRepository` class provides a centralized interface for searching substances based on various criteria. It interacts with a `SubstanceRepository` instance to retrieve and process substance data.

## Classes/Types

### SearchRepository

**Package**: com.isaakhanimann.journal.data.substances.repositories

**Description**: This singleton class implements the `SearchRepositoryInterface` and provides methods for searching substances based on search text, categories, and recently used substance names.

#### Properties

- **substanceRepo: SubstanceRepository**:
  - Description: An instance of `SubstanceRepository` used to fetch substance data.

### SearchRepositoryInterface

**Package**: com.isaakhanimann.journal.data.substances.repositories

**Description**: This interface defines a method for searching substances.

#### Methods

- **getMatchingSubstances(searchText: String, filterCategories: List<String>, recentlyUsedSubstanceNamesSorted: List<String>): List<SubstanceWithCategories>**
  - Description: Returns a list of `SubstanceWithCategories` that match the search text and filter categories.
  - Parameters:
    - `searchText`: A string representing the search query.
    - `filterCategories`: A list of category names to filter substances by.
    - `recentlyUsedSubstanceNamesSorted`: A sorted list of recently used substance names.
  - Returns: A list of `SubstanceWithCategories` that match the criteria.

## Methods/Functions

### getMatchingSubstances

**Description**: This method retrieves and processes substances based on search text, filter categories, and recently used substance names to return a list of matching substances.

#### Implementation Steps

1. **Filter Categories**: Calls `getSubstancesMatchingCategories(filterCategories)` to get substances that match any of the specified categories.
2. **Filter Text**: Calls `getSubstancesMatchingSearchText(searchText, prefilteredSubstances = substancesMatchingCategories)` to filter the substances based on the search text.
3. **Sort Substances**: Calls `getSubstancesSorted(prefilteredSubstances = substancesFilteredWithText, recentlyUsedSubstanceNamesSorted = recentlyUsedSubstanceNamesSorted)` to sort the filtered substances.

### getSubstancesMatchingCategories

**Description**: Filters substances that match any of the specified categories.

#### Parameters

- **filterCategories: List<String>**: A list of category names to filter substances by.

#### Returns

- **List<SubstanceWithCategories>**: A list of `SubstanceWithCategories` that match any of the specified categories.

### getSubstancesMatchingSearchText

**Description**: Filters substances based on the search text.

#### Parameters

- **searchText: String**: The search query.
- **prefilteredSubstances: List<SubstanceWithCategories>**: A list of prefiltered substances to filter further.

#### Returns

- **List<SubstanceWithCategories>**: A list of `SubstanceWithCategories` that match the search text.

### getSubstancesSorted

**Description**: Sorts the filtered substances based on recently used substance names and categories.

#### Parameters

- **prefilteredSubstances: List<SubstanceWithCategories>**: A list of prefiltered substances to sort.
- **recentlyUsedSubstanceNamesSorted: List<String>**: A sorted list of recently used substance names.

#### Returns

- **List<SubstanceWithCategories>**: A list of `SubstanceWithCategories` sorted based on the criteria.

