# Overview

The `SubstanceSuggestionProvider.kt` file provides a class responsible for generating suggestions of substances for use in a journal entry. The primary purpose of this file is to facilitate the selection and input of substance doses, handling both pure substances and custom units.

## Classes/Types

### Suggestion Provider Class

```kotlin
class SubstanceSuggestionProvider {
    // Nested data classes and functions will be documented below.
}
```

## Methods/Functions

### CustomSubstanceSuggestion Data Class

This class represents a suggestion for a custom substance, which includes details such as the name of the substance, its administration route, and a list of available doses.

#### Properties:

- `adaptiveColor`: Adaptive color associated with the substance.
- `substanceName`: Name of the pure substance.
- `administrationRoute`: Administration route of the substance.
- `customSubstance`: The custom substance object containing additional details.
- `dosesAndUnit`: List of available doses and their units.

### CustomUnitSuggestion Data Class

This class represents a suggestion for a custom unit, which includes details such as the name of the unit, its administration route, and a list of available doses.

#### Properties:

- `adaptiveColor`: Adaptive color associated with the substance.
- `substanceName`: Name of the pure substance.
- `administrationRoute`: Administration route of the substance.
- `customUnit`: The custom unit object containing additional details.
- `dosesAndUnit`: List of available doses and their units.

### PureSubstanceSuggestion Data Class

This class represents a suggestion for a pure substance, which includes details such as the name of the substance, its administration route, and a list of available doses.

#### Properties:

- `adaptiveColor`: Adaptive color associated with the substance.
- `substanceName`: Name of the pure substance.
- `administrationRoute`: Administration route of the substance.
- `dosesAndUnit`: List of available doses and their units.

## Nested Data Classes

### DoseAndUnit Data Class

This class represents a dose and its unit, including properties for the dose value, unit, and whether it is an estimate with an associated standard deviation.

#### Properties:

- `dose`: The numerical value of the dose.
- `unit`: The unit in which the dose is measured.
- `isEstimate`: Boolean indicating if the dose is an estimate.
- `estimatedDoseStandardDeviation`: Standard deviation of the estimated dose, if applicable.

## Additional Considerations

This file requires additional context from other parts of the application to fully understand its functionality. Specifically, it relies on details about substances and units that are not defined within this file but rather in other components or databases of the application.

