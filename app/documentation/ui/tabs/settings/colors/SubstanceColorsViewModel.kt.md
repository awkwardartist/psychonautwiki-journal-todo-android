```markdown

# Overview

The `SubstanceColorsViewModel` class in the PsychonautWiki Journal application is designed to manage and provide data for the Substance Colors feature. This view model handles the logic related to substance companions' colors, including fetching, updating, and deleting unused color entries.

---

# Classes/Types

## SubstanceColorsViewModel

- **Description**: A ViewModel that manages the state of substance companion colors.
- **Annotations**:
  - `@HiltViewModel`: Used for dependency injection using Hilt.
  
### Properties

- `_substanceCompanionsFlow: MutableStateFlow<List<SubstanceCompanion>>`
  - **Description**: Holds the list of substance companions.
- `substanceCompanionsFlow: StateFlow<List<SubstanceCompanion>>`
  - **Description**: Exposes the list of substance companions as a state flow.
- `alreadyUsedColorsFlow: StateFlow<List<AdaptiveColor>>`
  - **Description**: Provides a list of colors that are already used by substances.
- `otherColorsFlow: StateFlow<List<AdaptiveColor>>`
  - **Description**: Provides a list of colors that are not yet used by any substance.

### Methods/Functions

#### `deleteUnusedSubstanceCompanions()`

- **Description**: Deletes unused substance companion entries from the database.
- **Implementation**:
  - Uses a coroutine to launch a background task.
  - Calls `experienceRepository.deleteUnusedSubstanceCompanions()` to perform the deletion.

#### `updateColor(color: AdaptiveColor, substanceName: String)`

- **Description**: Updates the color for a specific substance companion.
- **Parameters**:
  - `color: AdaptiveColor`: The new color to be set.
  - `substanceName: String`: The name of the substance companion whose color is being updated.
- **Implementation**:
  - Uses a coroutine to launch a background task.
  - Maps through `_substanceCompanionsFlow.value` to find and update the specified substance companion's color.
  - Calls `experienceRepository.update(it)` for each modified companion.

---

# Usage Context

To use this ViewModel in your application, you need to ensure that:

1. **Dependency Injection**: The view model is accessible via dependency injection using Hilt.
2. **ViewModelScope**: Ensure that all operations within the view model are launched in `viewModelScope` to avoid memory leaks.
3. **StateFlow Usage**: Observe the state flows (`substanceCompanionsFlow`, `alreadyUsedColorsFlow`, and `otherColorsFlow`) to reactively update your UI based on changes.

Example of observing a state flow:

```kotlin
viewModel.substanceCompanionsFlow.collect { companions ->
    // Update UI with the list of substance companions
}
```

This ViewModel is crucial for maintaining the integrity and user experience of the Substance Colors feature, ensuring that users can manage and visualize substance colors efficiently.
```

