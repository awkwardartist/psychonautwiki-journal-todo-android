## Overview

The Kotlin file `SubstanceRouteSuggestion.kt` contains a packed representation of the entire repository's contents, specifically focusing on classes and data models related to substance suggestions for ingestion routes within a journal application. This file is part of the PsychonautWiki Journal project, designed to be easily consumable by AI systems for analysis or code review.

### File Structure

- **Directory Structure**: The file resides under `app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/addingestion/search/suggestion/models`.
- **Repository Files**: This section contains the full contents of the `SubstanceRouteSuggestion.kt` file, providing a detailed view of its structure and functionality.

## Classes/Types

### Suggestion (Sealed Class)

The `Suggestion` class is a sealed class designed to represent various types of substance suggestions with different properties. It includes three subclasses: `PureSubstanceSuggestion`, `CustomUnitSuggestion`, and `CustomSubstanceSuggestion`.

#### Properties
- **sortInstant (Instant)**: Represents the time at which the suggestion was sorted or generated.

#### Methods/Functions
- **isInSearch(searchText: String, substanceNames: List<String>): Boolean**: Determines if the suggestion matches a given search text based on substance names.

### PureSubstanceSuggestion (Data Class)

The `PureSubstanceSuggestion` data class extends the `Suggestion` class and represents suggestions for pure substances. It includes details about the administration route, substance name, adaptive color, and dose and unit information.

#### Properties
- **administrationRoute (AdministrationRoute)**: The route through which the substance is administered.
- **substanceName (String)**: The name of the substance.
- **adaptiveColor (AdaptiveColor)**: Adaptive color associated with the substance.
- **dosesAndUnit (List<DoseAndUnit>)**: List of dose and unit combinations for the substance.

#### Methods/Functions
- Inherits methods from `Suggestion`.
- **isInSearch(searchText: String, substanceNames: List<String>): Boolean**: Checks if the suggestion matches the search text or substance names.

### CustomUnitSuggestion (Data Class)

The `CustomUnitSuggestion` data class extends the `Suggestion` class and represents suggestions for substances with custom units. It includes details about the custom unit, adaptive color, dose and unit information, and a list of custom unit dose suggestions.

#### Properties
- **customUnit (CustomUnit)**: The custom unit associated with the substance.
- **adaptiveColor (AdaptiveColor)**: Adaptive color associated with the substance.
- **dosesAndUnit (List<CustomUnitDoseSuggestion>)**: List of custom unit dose suggestions.

#### Methods/Functions
- Inherits methods from `Suggestion`.
- **isInSearch(searchText: String, substanceNames: List<String>): Boolean**: Checks if the suggestion matches the search text or substance names.

### CustomSubstanceSuggestion (Data Class)

The `CustomSubstanceSuggestion` data class extends the `Suggestion` class and represents suggestions for custom substances. It includes details about the administration route, custom substance, adaptive color, and dose and unit information.

#### Properties
- **administrationRoute (AdministrationRoute)**: The route through which the substance is administered.
- **customSubstance (CustomSubstance)**: The custom substance.
- **adaptiveColor (AdaptiveColor)**: Adaptive color associated with the substance.
- **dosesAndUnit (List<DoseAndUnit>)**: List of dose and unit combinations for the custom substance.

#### Methods/Functions
- Inherits methods from `Suggestion`.
- **isInSearch(searchText: String, substanceNames: List<String>): Boolean**: Checks if the suggestion matches the search text or substance names.

### DoseAndUnit (Data Class)

The `DoseAndUnit` data class represents a dose and its unit of measurement. It includes properties for the dose amount, unit string, whether the dose is an estimate, and the estimated dose standard deviation.

#### Properties
- **dose (Double?)**: The dose amount.
- **unit (String)**: The unit of measurement for the dose.
- **isEstimate (Boolean)**: Flag indicating if the dose is an estimate.
- **estimatedDoseStandardDeviation (Double?)**: Standard deviation of the estimated dose.

#### Properties/Methods
- **comparatorValue (String)**: A string representing the dose and unit for comparison purposes.

### CustomUnitDoseSuggestion (Data Class)

The `CustomUnitDoseSuggestion` data class represents a custom unit dose suggestion. It includes properties for the dose amount, whether it is an estimate, and the estimated dose standard deviation.

#### Properties
- **dose (Double?)**: The dose amount.
- **isEstimate (Boolean)**: Flag indicating if the dose is an estimate.
- **estimatedDoseStandardDeviation (Double?)**: Standard deviation of the estimated dose.

#### Methods/Functions
- **getDoseDescription(pluralizableUnit: PluralizableUnit): String**: Generates a readable description of the dose, including handling estimates and standard deviations.
- **comparatorValue (String)**: A string representing the dose for comparison purposes.

### CustomUnitDose (Data Class)

The `CustomUnitDose` data class represents a custom unit dose with additional calculated properties. It includes properties for the dose amount, whether it is an estimate, estimated dose standard deviation, and the associated custom unit.

#### Properties
- **dose (Double)**: The dose amount.
- **isEstimate (Boolean)**: Flag indicating if the dose is an estimate.
- **estimatedDoseStandardDeviation (Double?)**: Standard deviation of the estimated dose.
- **customUnit (CustomUnit)**: The custom unit associated with the dose.

#### Properties/Methods
- **calculatedDose (Double?)**: Calculates the actual dose based on the custom unit.
- **calculatedDoseStandardDeviation (Double?)**: Calculates the standard deviation of the calculated dose, considering uncertainties in both the dose and custom unit.
- **calculatedDoseDescription (String?)**: Generates a readable description of the calculated dose, including handling estimates and standard deviations.
- **doseDescription (String)**: Generates a readable description of the original dose, including handling estimates and standard deviations.

## Methods/Functions

### toStringWith(pluralizableUnit: PluralizableUnit): String

Extends `Double` and `Int` to include a method that returns a human-readable string representation of the number with its corresponding pluralization unit. This function checks if the number is 1 or not to correctly handle singular and plural forms.

#### Parameters
- **pluralizableUnit (PluralizableUnit)**: The unit object containing singular and plural forms.

#### Returns
- A string representing the number in a human-readable format with the correct pluralization.

### justUnit(basedOn: Double): String

Extends `PluralizableUnit` to include a method that returns the appropriate unit form (singular or plural) based on the value provided. This function checks if the value is 1 or not to correctly handle singular and plural forms.

#### Parameters
- **basedOn (Double)**: The base value used to determine whether to return the singular or plural form of the unit.

#### Returns
- A string representing the unit in a human-readable format with the correct pluralization.

