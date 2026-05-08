# IngestionWithCompanionAndCustomUnit.kt

## Overview

The `IngestionWithCompanionAndCustomUnit` class is a composite data structure that represents the relationship between an `Ingestion`, a `SubstanceCompanion`, and a `CustomUnit`. This class facilitates access to associated data in a more structured manner, enhancing readability and maintainability of code that interacts with database entities through Room.

## Classes/Types

### IngestionWithCompanionAndCustomUnit

This class encapsulates the relationship between an `Ingestion` entity, a `SubstanceCompanion` entity, and a `CustomUnit` entity. It provides convenient access to attributes from all three entities, making it easier to handle complex queries involving these relationships.

#### Fields

- **ingestion** (Ingestion): The main `Ingestion` entity.
- **substanceCompanion** (SubstanceCompanion?): A nullable `SubstanceCompanion` entity associated with the `Ingestion`.
- **customUnit** (CustomUnit?): A nullable `CustomUnit` entity associated with the `Ingestion`.

#### Properties

- **originalUnit**: The original unit of measurement for the substance, derived from either the `customUnit` or directly from the `ingestion`.
- **pureDose**: The pure dose of the substance, calculated from either the `customUnitDose` or directly from the `ingestion`. If a `customUnit` is present and it has a dose, this property uses the custom unit's dose; otherwise, it defaults to the ingestion's dose.
- **isEstimate**: A boolean indicating whether the dose is an estimate, determined by either the `customUnit` or the `ingestion`.
- **pureDoseStandardDeviation**: The standard deviation of the pure dose, calculated from either the `customUnitDose` or directly from the `ingestion`. If a `customUnit` is present and it has a dose, this property uses the custom unit's dose standard deviation; otherwise, it defaults to the ingestion's estimated dose standard deviation.
- **customUnitDose**: A nullable `CustomUnitDose` object that encapsulates the dose information from both the `ingestion` and the associated `customUnit`.
- **doseDescription**: A human-readable description of the dose, derived from either the `customUnitDose` or directly from the `ingestion`.

## Methods/Functions

The `IngestionWithCompanionAndCustomUnit` class does not contain any methods or functions beyond property accessors and computed properties. All operations related to data manipulation are handled through the class's properties.

## Example Usage

```kotlin
val ingestion = // Obtain an Ingestion instance from your Room database
val substanceCompanion = // Optionally obtain a SubstanceCompanion instance associated with the ingestion
val customUnit = // Optionally obtain a CustomUnit instance associated with the ingestion

val ingestionWithCompanionAndCustomUnit = IngestionWithCompanionAndCustomUnit(
    ingestion = ingestion,
    substanceCompanion = substanceCompanion,
    customUnit = customUnit
)

println(ingestionWithCompanionAndCustomUnit.originalUnit) // Outputs: The original unit of measurement for the substance
println(ingestionWithCompanionAndCustomUnit.pureDose) // Outputs: The pure dose of the substance
println(ingestionWithCompanionAndCustomUnit.isEstimate) // Outputs: True if the dose is an estimate, false otherwise
println(ingestionWithCompanionAndCustomUnit.doseDescription) // Outputs: A human-readable description of the dose
```

This documentation provides a comprehensive overview of the `IngestionWithCompanionAndCustomUnit` class, detailing its structure and usage. To fully understand its integration into your application, you may need additional context regarding the database schema and how these entities are managed through Room.

