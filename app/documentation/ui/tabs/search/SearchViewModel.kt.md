# SearchViewModel

## Overview

The `SearchViewModel` is a ViewModel that manages data related to searching for substances and experiences within an application. It provides reactive streams of filtered substances based on user input and selected filters.

## Classes/Types

### CategoryChipModel

Represents a chip that can be used as a filter in the search functionality.

**Properties:**

- `chipName`: The name of the category or filter.
- `color`: The color associated with this category or filter.
- `isActive`: A boolean indicating whether this filter is currently active.

### CategoryModel

Represents a category that substances can belong to.

**Properties:**

- `name`: The name of the category.
- `color`: The color associated with this category.

### SubstanceModel

Represents a substance, which includes its name, common names, categories, and properties like safer use and interactions.

**Properties:**

- `name`: The primary name of the substance.
- `commonNames`: A list of common names associated with this substance.
- `categories`: A list of categories to which this substance belongs.
- `hasSaferUse`: A boolean indicating whether there is information on safer use for this substance.
- `hasInteractions`: A boolean indicating whether there are known interactions for this substance.

## Methods/Functions

### filterSubstances

Updates the search text used to filter substances. This method is triggered when a user types into the search bar.

**Parameters:**

- `searchText`: The new search text to apply to the filters.

### onFilterTapped

Toggles the active state of a filter chip, either activating or deactivating it based on its current state.

**Parameters:**

- `filterName`: The name of the filter chip that was tapped.

## Reactive Streams

- **searchTextFlow**: A StateFlow that emits the current search text used for filtering.
  
- **chipCategoriesFlow**: A StateFlow that emits a list of CategoryChipModels representing active filters and custom options. This stream combines the current filters with an optional "custom" filter, which controls visibility of custom substances.

- **filteredSubstancesFlow**: A StateFlow that emits a list of SubstanceModels filtered based on the current search text and selected categories. This stream also takes into account recently used substance names to prioritize those in the results.

- **filteredCustomSubstancesFlow**: A StateFlow that emits a list of custom substances that match the current search text, also taking into account any active filters.

