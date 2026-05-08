# SubstanceCompanionViewModel.kt

## Overview

The `SubstanceCompanionViewModel` class serves as a ViewModel for managing data related to substance companions in a user interface component. It provides state management for fetching and displaying information about substances, their tolerance levels, cross-tolerances, and historical ingestion data.

This ViewModel interacts with repositories such as `ExperienceRepository` and `SubstanceRepository` to fetch data from the database, ensuring that the UI remains responsive and updated in real-time.

## Classes/Types

### SubstanceCompanionViewModel

#### Properties

- **currentTimeFlow**: A Flow emitting the current system time every 10 seconds.
- **substanceCompanionRoute**: The route containing parameters specific to the substance companion view model. It includes `substanceName` and `consumerName`.
- **substanceName**: Extracted from `substanceCompanionRoute`, representing the name of the substance for which data is being fetched.
- **consumerName**: Extracted from `substanceCompanionRoute`, representing the name of the consumer associated with the substance.
- **substance**: A flow of the substance entity retrieved from the database using `SubstanceRepository`.
- **tolerance**: Tolerance level of the substance, extracted from the `substance` entity.
- **crossTolerances**: List of cross-tolerances for the substance, extracted from the `substance` entity.
- **thisCompanionFlow**: StateFlow representing the current substance companion data retrieved from the database using `ExperienceRepository`.
- **ingestionBurstsFlow**: StateFlow containing historical ingestion data grouped by experience and sorted by time.

#### Functions

- **IngestionsBurst(ingestions: List<IngestionAndCustomUnit>): IngestionsBurst**
  - Represents a burst of ingestions with associated metadata.
  
  **Parameters**
  - `ingestions`: A list of `IngestionAndCustomUnit` instances.

  **Returns** An instance of `IngestionsBurst`.

- **IngestionAndCustomUnit(ingestion: Ingestion, customUnit: CustomUnit?): IngestionAndCustomUnit**
  - Represents an ingestion with associated custom unit data.
  
  **Parameters**
  - `ingestion`: The ingestion entity.
  - `customUnit`: Optional custom unit associated with the ingestion.

  **Returns** An instance of `IngestionAndCustomUnit`.

- **getCustomUnitDose(): CustomUnitDose?**
  - Retrieves the `CustomUnitDose` associated with the ingestion and custom unit.
  
  **Returns** The `CustomUnitDose` if available, otherwise null.

- **getDoseDescription(): String**
  - Returns a string representation of the dose including possible estimates and units.

## Methods/Functions

### getTolerance()

**Function Signature**

```kotlin
val tolerance: Float?
```

**Returns** The tolerance level for the substance, if available.

---

This documentation provides an overview of the `SubstanceCompanionViewModel` class, including its properties, methods, and their purposes.

