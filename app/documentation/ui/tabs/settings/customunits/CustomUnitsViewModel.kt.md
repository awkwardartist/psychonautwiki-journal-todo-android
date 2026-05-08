```markdown
# CustomUnitsViewModel

## Overview

The `CustomUnitsViewModel` class is a ViewModel for managing the state and logic related to custom units within an application. This ViewModel interacts with the `ExperienceRepository` to fetch, filter, and manage custom unit data.

It includes:

- A state flow that tracks the current search text.
- A computed state flow that filters custom units based on the current search text.

The class is designed to be used in conjunction with a UI component such as `CustomUnitsScreen`.

## Classes/Types

### CustomUnitsViewModel

This is the main class of the ViewModel, providing the logic and state for managing custom units.

#### Properties

- `_searchTextFlow`: A mutable state flow that tracks the current search text.
- `searchTextFlow`: An immutable state flow exposing the current search text.
- `customUnitsFlow`: A state flow that provides access to all custom units.
- `filteredCustomUnitsFlow`: A computed state flow that filters custom units based on the current search text.

#### Methods/Functions

- `onSearch(searchText: String)`: Updates the search text and triggers filtering of custom units.
```

