# SuggestionRow.kt Documentation

## Overview

This Kotlin file contains composable functions for rendering suggestions related to substances and custom units in a user interface. It provides a unified way to display different types of substance suggestions and navigate to further details or editing options.

## Classes/Types

### SuggestionRow

A sealed class representing the different types of suggestions that can be displayed:

- `CustomSubstanceSuggestion`: Represents a suggestion for a custom substance.
- `CustomUnitSuggestion`: Represents a suggestion for a custom unit.
- `PureSubstanceSuggestion`: Represents a suggestion for a pure substance.

### CustomSubstanceSuggestion

A data class representing a suggestion for a custom substance. It includes properties such as the substance, administration route, adaptive color, and doses and units available.

```kotlin
data class CustomSubstanceSuggestion(
    val customSubstance: Substance,
    val administrationRoute: AdministrationRoute,
    val adaptiveColor: AdaptiveColor,
    val dosesAndUnit: List<DoseAndUnit>
)
```

### CustomUnitSuggestion

A data class representing a suggestion for a custom unit. It includes properties such as the substance, administration route, adaptive color, and doses and units available.

```kotlin
data class CustomUnitSuggestion(
    val customUnit: CustomUnit,
    val administrationRoute: AdministrationRoute,
    val adaptiveColor: AdaptiveColor,
    val dosesAndUnit: List<CustomUnitDose>
)
```

### PureSubstanceSuggestion

A data class representing a suggestion for a pure substance. It includes properties such as the substance name, administration route, adaptive color, and doses and units available.

```kotlin
data class PureSubstanceSuggestion(
    val substanceName: String,
    val administrationRoute: AdministrationRoute,
    val adaptiveColor: AdaptiveColor,
    val dosesAndUnit: List<DoseAndUnit>
)
```

### DoseAndUnit

A data class representing a dose and its corresponding unit.

```kotlin
data class DoseAndUnit(
    val dose: Double?,
    val unit: String,
    val isEstimate: Boolean = false,
    val estimatedDoseStandardDeviation: Double? = null
)
```

### CustomUnitDose

A data class representing a dose and its corresponding unit for custom units.

```kotlin
data class CustomUnitDose(
    val dose: Double?,
    val unit: String,
    val isEstimate: Boolean = false,
    val estimatedDoseStandardDeviation: Double? = null
)
```

## Methods/Functions

### SuggestionRow

A composable function that renders a suggestion row based on the type of suggestion provided.

```kotlin
@Composable
fun SuggestionRow(
    suggestion: Suggestion,
    navigateToDose: (substanceName: String, route: AdministrationRoute) -> Unit,
    navigateToCustomUnitChooseDose: (customUnitId: Int) -> Unit,
    navigateToCustomDose: (customSubstanceName: String, route: AdministrationRoute) -> Unit,
    navigateToChooseTime: (substanceName: String, route: AdministrationRoute, dose: Double?, units: String?, isEstimate: Boolean, estimatedDoseStandardDeviation: Double?, customUnitId: Int?) -> Unit
)
```

### PureSubstanceSuggestionRow

A composable function that renders a suggestion row for pure substances.

```kotlin
@Composable
fun PureSubstanceSuggestionRow(
    pureSubstanceSuggestion: Suggestion.PureSubstanceSuggestion,
    navigateToDose: (substanceName: String, route: AdministrationRoute) -> Unit,
    navigateToChooseTime: (substanceName: String, route: AdministrationRoute, dose: Double?, units: String?, isEstimate: Boolean, estimatedDoseStandardDeviation: Double?, customUnitId: Int?) -> Unit
)
```

### CustomUnitSuggestionRow

A composable function that renders a suggestion row for custom units.

```kotlin
@Composable
fun CustomUnitSuggestionRow(
    customUnitSuggestion: Suggestion.CustomUnitSuggestion,
    navigateToCustomUnitChooseDose: (customUnitId: Int) -> Unit,
    navigateToChooseTime: (substanceName: String, route: AdministrationRoute, dose: Double?, units: String?, isEstimate: Boolean, estimatedDoseStandardDeviation: Double?, customUnitId: Int?) -> Unit
)
```

### CustomSubstanceSuggestionRow

A composable function that renders a suggestion row for custom substances.

```kotlin
@Composable
fun CustomSubstanceSuggestionRow(
    customSubstanceSuggestion: Suggestion.CustomSubstanceSuggestion,
    navigateToCustomDose: (customSubstanceName: String, route: AdministrationRoute) -> Unit,
    navigateToChooseTime: (substanceName: String, route: AdministrationRoute, dose: Double?, units: String?, isEstimate: Boolean, estimatedDoseStandardDeviation: Double?, customUnitId: Int?) -> Unit
)
```

## Additional Information

For more detailed information on the types and functions used in this file, context.

