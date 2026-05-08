## Overview

The `Roa.kt` file defines a data class named `Roa`, which stands for Route of Administration (R.O.A.). This class represents information related to how a substance is administered and its expected effects over time. The `Roa` class includes properties that describe various aspects of the administration route, such as the route itself, dosage range, duration of effects, and bioavailability.

## Classes/Types

### Roa

**Description:** Represents an instance of a Route of Administration for a substance.

**Properties:**

- **route (AdministrationRoute):** The method through which the substance is administered.
- **roaDose (RoaDose?):** Information about the dosage range for different stages of effect, including light, common, strong, and heavy doses.
- **roaDuration (RoaDuration?):** Details on how long different effects take to occur and wear off.
- **bioavailability (Bioavailability?):** Measures of how well the substance is absorbed by the body.

## Methods/Functions

### getDoseClass(ingestionDose: Double?, ingestionUnits: String? = units): DoseClass?

**Description:** Determines which dose class a given ingestion dose falls into based on predefined thresholds.

**Parameters:**

- **ingestionDose (Double?):** The amount of substance taken.
- **ingestionUnits (String?):** Units in which the `ingestionDose` is measured. Defaults to the units specified in the `RoaDose` instance.

**Return Value:** A `DoseClass` indicating the dose class, or `null` if the input parameters are invalid or out of range.

### getNumDots(ingestionDose: Double?, ingestionUnits: String? = units): Int?

**Description:** Calculates a number representing the strength of an ingestion dose on a scale from 0 to 12 dots.

**Parameters:**

- **ingestionDose (Double?):** The amount of substance taken.
- **ingestionUnits (String?):** Units in which the `ingestionDose` is measured. Defaults to the units specified in the `RoaDose` instance.

**Return Value:** An integer representing the strength, or `null` if the input parameters are invalid or out of range.

### getStrengthRelativeToCommonDose(dose: Double): Double?

**Description:** Calculates the relative strength of a given dose compared to an average common dose.

**Parameters:**

- **dose (Double):** The amount of substance taken.

**Return Value:** A double representing the relative strength, or `null` if the average common dose is not defined or zero.

### shouldUseVolumetricDosing: Boolean

**Description:** Determines whether volumetric dosing (measured in micrograms) should be used based on the substance's units and dosage range.

**Return Value:** A boolean indicating whether volumetric dosing is applicable.

### averageCommonDose: Double?

**Description:** Calculates the average of the common and strong dose thresholds, representing a typical effective dosage.

**Return Value:** A double representing the average common dose, or `null` if either the common or strong dose is not defined.

