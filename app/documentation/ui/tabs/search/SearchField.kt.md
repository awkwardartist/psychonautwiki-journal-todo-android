# SearchField.kt

## Overview

`SearchField.kt` is a Kotlin file that contains UI components and logic for creating a search field within an application. The primary component defined in this file is `SearchField`, which extends `Jetpack Compose`'s `Column`. It includes functionalities such as displaying search categories, filtering substances based on user input, and handling interactions with the search results.

## Classes/Types

### SearchField

The `SearchField` class represents the UI component responsible for rendering a search field. It leverages Jetpack Compose to create a dynamic and reactive UI. The class interacts with various state flows and repositories to fetch and display data related to substances, categories, and experiences.

#### Properties

- `searchTextFlow`: A `StateFlow` that holds the current text entered by the user in the search field.
- `filteredSubstancesFlow`: A `StateFlow` that emits a list of `SubstanceModel` objects filtered based on the search criteria and active filters.
- `onFilterTapped`: A function called when a filter chip is tapped. It updates the state flow to include or exclude the specified filter.

#### Composition

The `SearchField` composable function consists of several child composables, including:

1. **SearchBar**: Displays an editable text field where users can input search queries.
2. **FilterChips**: A list of filter chips that allow users to select specific categories for filtering substances.
3. **SubstanceList**: Displays a list of substances that match the current search criteria and active filters.

### CategoryChipDelete

The `CategoryChipDelete` class represents a delete button for category chips in the search field. It allows users to remove a filter chip from the active filters.

#### Properties

- `categoryChipModel`: The model representing the category chip.
- `onTap`: A function called when the delete button is tapped. It updates the state flow to exclude the specified filter.

#### Composition

The `CategoryChipDelete` composable function consists of:

1. **Icon**: Displays an icon (e.g., a close button) indicating that the chip can be deleted.
2. **Text**: Optionally displays text associated with the chip.

## Methods/Functions

### SearchField

```kotlin
@Composable
fun SearchField(
    searchTextFlow: StateFlow<String>,
    filteredSubstancesFlow: StateFlow<List<SubstanceModel>>,
    onFilterTapped: (String) -> Unit
)
```

#### Parameters

- `searchTextFlow`: A `StateFlow` that holds the current text entered by the user in the search field.
- `filteredSubstancesFlow`: A `StateFlow` that emits a list of `SubstanceModel` objects filtered based on the search criteria and active filters.
- `onFilterTapped`: A function called when a filter chip is tapped. It updates the state flow to include or exclude the specified filter.

### CategoryChipDelete

```kotlin
@Composable
fun CategoryChipDelete(
    categoryChipModel: CategoryChipModel,
    onTap: () -> Unit
)
```

#### Parameters

- `categoryChipModel`: The model representing the category chip.
- `onTap`: A function called when the delete button is tapped. It updates the state flow to exclude the specified filter.

## Context

To fully understand and utilize this Kotlin codebase, it is necessary to have context on the following components and flows:

1. **StateFlows**: These are used for managing reactive data in Jetpack Compose applications.
2. **Jetpack Compose**: A modern toolkit for building native Android UIs from Google.
3. **ViewModel**: A component that stores and manages UI-related data in a lifecycle-conscious way.
4. **SubstanceModel**: Represents a substance with properties like name, common names, categories, etc.
5. **CategoryChipModel**: Represents a category chip model with properties like name, color, and active state.

Understanding these components and flows will provide a comprehensive context for working with the code in `SearchField.kt`.

