# Documentation for ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/settings/colors/SubstanceColorsScreen.kt

## Overview

The `SubstanceColorsScreen.kt` file contains a Composable function that renders the substance colors screen in a PsychonautWiki Journal application. This screen displays a list of substances with their associated colors, allowing users to update these colors using a color picker. The screen also handles deleting unused substance companions and updating the UI based on changes.

## Classes/Types

### SubstanceColorsScreen

The `SubstanceColorsScreen` Composable function is the main entry point for rendering the substance colors screen.

#### Parameters
- `viewModel: SubstanceColorsViewModel = hiltViewModel()`: An instance of `SubstanceColorsViewModel` used to fetch and manage substance color data. It defaults to an instance provided by Hilt dependency injection.

#### Body
- The function initializes a side effect using `LaunchedEffect` to call `deleteUnusedSubstanceCompanions` on the `viewModel`, which cleans up unused substance companions.
- It then calls `SubstanceColorsScreenContent`, passing in various data flows from the `viewModel` such as `substanceCompanionsFlow`, `updateColor`, `alreadyUsedColorsFlow`, and `otherColorsFlow`.

### SubstanceColorsViewModel

The `SubstanceColorsViewModel` is a ViewModel responsible for managing the logic related to substance colors.

#### Properties
- `_substanceCompanionsFlow: MutableStateFlow<List<SubstanceCompanion>>`: A mutable state flow that holds the list of substance companions.
- `substanceCompanionsFlow: StateFlow<List<SubstanceCompanion>>`: A read-only state flow exposing the list of substance companions.

#### Methods
- `init()`: Initializes the view model by collecting a flow of all substance companions from `ExperienceRepository` and updating `_substanceCompanionsFlow`.
- `deleteUnusedSubstanceCompanions()`: Deletes unused substance companions using the `experienceRepository`.
- `updateColor(color: AdaptiveColor, substanceName: String)`: Updates the color for a specific substance companion in the list.
- `alreadyUsedColorsFlow: StateFlow<List<AdaptiveColor>>`: Exposes a flow of already used colors derived from `_substanceCompanionsFlow`.
- `otherColorsFlow: StateFlow<List<AdaptiveColor>>`: Exposes a flow of available colors that have not been used yet.

## Methods/Functions

### SubstanceColorsScreen

#### Parameters
- `viewModel: SubstanceColorsViewModel = hiltViewModel()`

#### Returns
- Nothing (Unit)

#### Implementation
```kotlin
@Composable
fun SubstanceColorsScreen(
    viewModel: SubstanceColorsViewModel = hiltViewModel(),
) {
    LaunchedEffect(Unit) {
        viewModel.deleteUnusedSubstanceCompanions()
    }
    SubstanceColorsScreenContent(
        substanceCompanions = viewModel.substanceCompanionsFlow.collectAsState().value,
        updateColor = viewModel::updateColor,
        alreadyUsedColors = viewModel.alreadyUsedColorsFlow.collectAsState().value,
        otherColors = viewModel.otherColorsFlow.collectAsState().value
    )
}
```

### SubstanceColorsScreenContent

#### Parameters
- `substanceCompanions: List<SubstanceCompanion>`
- `updateColor: (AdaptiveColor, String) -> Unit`
- `alreadyUsedColors: List<AdaptiveColor>`
- `otherColors: List<AdaptiveColor>`

#### Returns
- Nothing (Unit)

#### Implementation
```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SubstanceColorsScreenContent(
    substanceCompanions: List<SubstanceCompanion>,
    updateColor: (AdaptiveColor, String) -> Unit,
    alreadyUsedColors: List<AdaptiveColor>,
    otherColors: List<AdaptiveColor>
) {
    Scaffold(
        topBar = {
            TopAppBar(title = { Text("Substance colors") })
        },
    ) { padding ->
        LazyColumn(
            modifier = Modifier
                .padding(padding)
                .padding(horizontal = horizontalPadding)
                .fillMaxSize()
        ) {
            items(substanceCompanions) { substanceCompanion ->
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(vertical = 5.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = substanceCompanion.substanceName,
                        style = MaterialTheme.typography.titleMedium
                    )
                    ColorPicker(
                        selectedColor = substanceCompanion.color,
                        onChangeOfColor = {
                            updateColor(it, substanceCompanion.substanceName)
                        },
                        alreadyUsedColors = alreadyUsedColors,
                        otherColors = otherColors
                    )
                }
                HorizontalDivider()
            }
        }
    }
}
```

### SubstanceColorsViewModel

#### Properties
- `_substanceCompanionsFlow: MutableStateFlow<List<SubstanceCompanion>>`
- `substanceCompanionsFlow: StateFlow<List<SubstanceCompanion>>`

#### Methods
- `init()`
- `deleteUnusedSubstanceCompanions()`
- `updateColor(color: AdaptiveColor, substanceName: String)`
- `alreadyUsedColorsFlow: StateFlow<List<AdaptiveColor>>`
- `otherColorsFlow: StateFlow<List<AdaptiveColor>>`

