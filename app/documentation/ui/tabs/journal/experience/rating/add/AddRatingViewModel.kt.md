```markdown
# AddRatingViewModel

## Overview

The `AddRatingViewModel` class is a ViewModel component designed for handling business logic related to adding ratings within an experience journal application. This ViewModel is part of the Hilt dependency injection framework, which helps manage dependencies efficiently. The class provides state management and interaction with repository methods to store and retrieve ratings.

## Classes/Types

### AddRatingViewModel

- **Purpose**: Manages the state and business logic for rating an experience.
- **Dependencies**:
  - `ExperienceRepository`: Used to interact with the database for retrieving and saving ratings.
  - `SavedStateHandle`: Provides a way to pass data between destinations in Jetpack Navigation.

## Methods/Functions

### Constructor

```kotlin
@HiltViewModel
class AddRatingViewModel @Inject constructor(
    private val experienceRepo: ExperienceRepository,
    state: SavedStateHandle
) : ViewModel()
```

- **Parameters**:
  - `experienceRepo`: An instance of `ExperienceRepository` used to interact with the database.
  - `state`: A `SavedStateHandle` that can be used to pass data between destinations in Jetpack Navigation.

### Properties

#### selectedRating

```kotlin
var selectedRating by mutableStateOf(ShulginRatingOption.TWO_PLUS)
```

- **Type**: `MutableState<ShulginRatingOption>`
- **Purpose**: Represents the currently selected rating option.
- **Default Value**: `ShulginRatingOption.TWO_PLUS`

#### isThisOverallRating

```kotlin
var isThisOverallRating by mutableStateOf(false)
```

- **Type**: `MutableState<Boolean>`
- **Purpose**: Indicates whether the rating being added is an overall rating.
- **Default Value**: `false`

#### experienceId

```kotlin
val experienceId = state.toRoute<AddRatingRoute>().experienceId
```

- **Type**: `String`
- **Purpose**: The unique identifier for the experience to which the rating belongs.

#### localDateTimeFlow

```kotlin
var localDateTimeFlow = MutableStateFlow(LocalDateTime.now())
```

- **Type**: `MutableStateFlow<LocalDateTime>`
- **Purpose**: A flow that emits the current local date and time.
- **Default Value**: The current date and time when the ViewModel is initialized.

#### isThereAlreadyAnOverallRatingFlow

```kotlin
var isThereAlreadyAnOverallRatingFlow = experienceRepo.getRatingsFlow(experienceId).map { ratings ->
    ratings.any { it.time == null }
}.stateIn(
    initialValue = true,
    scope = viewModelScope,
    started = SharingStarted.WhileSubscribed(5000)
)
```

- **Type**: `StateFlow<Boolean>`
- **Purpose**: A state flow that indicates whether there is already an overall rating for the given experience.

### Initialization

```kotlin
init {
    viewModelScope.launch {
        val experience = experienceRepo.getExperience(id = experienceId) ?: return@launch
        val isOldExperience = experience.sortDate.isBefore(Instant.now().minus(12, ChronoUnit.HOURS))
        if (isOldExperience) {
            localDateTimeFlow.emit(experience.sortDate.getLocalDateTime())
        }
    }
}
```

- **Purpose**: Initializes the ViewModel by retrieving the experience from the database and setting `localDateTimeFlow` to the experience's sort date if it is older than 12 hours.

### onChangeTime

```kotlin
fun onChangeTime(newLocalDateTime: LocalDateTime) {
    viewModelScope.launch {
        localDateTimeFlow.emit(newLocalDateTime)
    }
}
```

- **Parameters**:
  - `newLocalDateTime`: The new local date and time to be emitted.
- **Purpose**: Updates the `localDateTimeFlow` with the new local date and time.

### onChangeRating

```kotlin
fun onChangeRating(newRating: ShulginRatingOption) {
    selectedRating = newRating
}
```

- **Parameters**:
  - `newRating`: The new rating option to be selected.
- **Purpose**: Updates the `selectedRating` with the new rating option.

### onDoneTap

```kotlin
fun onDoneTap() {
    viewModelScope.launch {
        val selectedInstant = if (isThisOverallRating) {
            null
        } else {
            localDateTimeFlow.firstOrNull()?.getInstant()
        }
        val newRating = ShulginRating(
            time = selectedInstant,
            creationDate = Instant.now(),
            option = selectedRating,
            experienceId = experienceId
        )
        experienceRepo.insert(newRating)
    }
}
```

- **Purpose**: Inserts a new rating into the database based on the current state of `selectedRating` and `isThisOverallRating`.
```

