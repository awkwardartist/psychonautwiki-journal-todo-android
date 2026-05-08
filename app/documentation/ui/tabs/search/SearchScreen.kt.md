# SearchScreen.kt

## Overview

The `SearchScreen.kt` file contains the implementation of a search interface within a substance management application. The screen allows users to enter search queries, filter results by category tags, and view substances that match these criteria.

## Classes/Types

### SearchViewModel

A ViewModel class responsible for managing the state of the search screen. It provides reactive flows for searching text, filtering categories, and displaying filtered substance lists.

- **State Properties:**
  - `searchTextFlow`: A flow emitting the current search text.
  - `chipCategoriesFlow`: A flow emitting a list of category chips based on active filters.
  - `filteredSubstancesFlow`: A flow emitting a list of substances that match the current search and filters.
  - `filteredCustomSubstancesFlow`: A flow emitting a list of custom substances that match the current search.

- **Methods:**
  - `onFilterTapped(filterName: String)`: Toggles the active state of a category filter.
  - `filterSubstances(searchText: String)`: Updates the search text used to filter substance results.

### SearchScreen

A composable function representing the UI of the search screen. It displays the search bar, category filters, and lists of filtered substances.

- **Parameters:**
  - `onSubstanceTap(substance: SubstanceModel)`: A lambda that handles tapping on a substance.
  - `onCustomSubstanceTap(customSubstanceId: Int)`: A lambda that handles tapping on a custom substance.
  - `navigateToAddCustomSubstanceScreen()`: A function to navigate to the screen for adding new custom substances.

## Methods/Functions

### SearchViewModel.onFilterTapped(filterName: String)

- **Description:** Toggles the active state of a category filter based on the provided filter name.
- **Parameters:**
  - `filterName`: The name of the category filter to toggle.
- **Implementation:** Updates the `filtersFlow` by removing or adding the filter name.

### SearchViewModel.filterSubstances(searchText: String)

- **Description:** Updates the search text used to filter substance results.
- **Parameters:**
  - `searchText`: The new search text.
- **Implementation:** Emits the new search text via `_searchTextFlow`.

### SearchScreen(onSubstanceTap: (substance: SubstanceModel) -> Unit, onCustomSubstanceTap: (customSubstanceId: Int) -> Unit, navigateToAddCustomSubstanceScreen: () -> Unit)

- **Description:** Composable function representing the UI of the search screen.
- **Parameters:**
  - `onSubstanceTap`: Lambda to handle tapping on a substance.
  - `onCustomSubstanceTap`: Lambda to handle tapping on a custom substance.
  - `navigateToAddCustomSubstanceScreen`: Function to navigate to the screen for adding new custom substances.

## Context

This file is part of an Android application focused on managing substance information. The `SearchViewModel` and `SearchScreen` work together to provide a user-friendly interface for searching and filtering substances based on tags and text queries. Additional context would be required for full understanding, such as the data models (`SubstanceModel`, `CategoryModel`) and repositories (`ExperienceRepository`, `SearchRepository`).

