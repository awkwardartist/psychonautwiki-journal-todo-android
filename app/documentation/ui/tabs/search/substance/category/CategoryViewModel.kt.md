# CategoryViewModel.kt

## Overview

The `CategoryViewModel` is a ViewModel class used for managing data related to a specific category of substances within the PsychonautWiki Journal app. It retrieves category information using a repository and provides it to UI components.

This ViewModel is part of the Hilt dependency injection system, which simplifies the process of injecting dependencies into the view model. The `@HiltViewModel` annotation ensures that the view model can be injected with dependencies automatically.

## Classes/Types

### CategoryViewModel

- **Description**: This is a view model class responsible for managing category data.
- **Annotations**:
  - `@HiltViewModel`: Marks the class as a Hilt-managed ViewModel, enabling dependency injection within it.
- **Constructor**:
  - **Parameters**:
    - `substanceRepo`: An instance of `SubstanceRepository`, used to fetch category data.
    - `state`: A `SavedStateHandle` that contains navigation arguments.

## Methods/Functions

### Constructor

```kotlin
@HiltViewModel
class CategoryViewModel @Inject constructor(
    substanceRepo: SubstanceRepository,
    state: SavedStateHandle
) : ViewModel() {
```

- **Description**: Initializes the `CategoryViewModel` with a repository and navigation arguments.
- **Parameters**:
  - `substanceRepo`: A repository instance to fetch category data.
  - `state`: Navigation arguments passed to the view model.

### Properties

#### categoryName

```kotlin
private val categoryName = state.toRoute<CategoryRoute>().categoryName
```

- **Description**: Extracts the category name from the navigation route using the provided `SavedStateHandle`.

#### category

```kotlin
val category = substanceRepo.getCategory(categoryName)
```

- **Description**: Retrieves the category data using the extracted category name and the provided repository.
- **Return Type**: A `Category` object containing information about the specified category.

## Usage Context

To use this ViewModel in a UI component, you would typically set it up with a `HiltViewModelFactory`. This allows for dependency injection of the necessary dependencies. The view model can then be used to access and display category data within the UI.

