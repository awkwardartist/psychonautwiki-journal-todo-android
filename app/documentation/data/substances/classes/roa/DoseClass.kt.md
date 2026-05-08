# DoseClass.kt

## Overview

The `DoseClass` class represents the dosage classification of a substance based on its ingestion dose. It categorizes the dosage into five classes: THRESHOLD, LIGHT, COMMON, STRONG, and HEAVY. This class provides methods to determine the appropriate dose class for a given ingestion dose and to provide visual representation through dots.

## Classes/Types

### DoseClass (Enum)

The `DoseClass` enum represents the different dosage classifications of a substance:

- **THRESHOLD**: Represents doses below the light minimum.
- **LIGHT**: Represents doses between the light and common minimums.
- **COMMON**: Represents doses between the common and strong minimums.
- **STRONG**: Represents doses between the strong and heavy minimums.
- **HEAVY**: Represents doses equal to or above the heavy minimum.

## Methods/Functions

### getNumDots(ingestionDose: Double?, ingestionUnits: String? = units): Int?

Determines the number of dots representing the dosage class for a given ingestion dose. The dots are used to visually represent the dosage level on a user interface. If the ingestion dose is below the light minimum, it returns 0. If it is between the light and common minimums, it returns 1, and so on.

**Parameters:**
- `ingestionDose`: The actual ingestion dose of the substance.
- `ingestionUnits`: The units of measurement for the ingestion dose (default is the units defined in the RoaDose instance).

**Returns:**
- An integer representing the number of dots to display, or null if the dosage class cannot be determined.

### getNumDotsUpTo4(dose: Double): Int

Calculates the number of dots for doses up to 4 times the heavy minimum dose. This method is used internally by `getNumDots` to handle higher doses that exceed 4 times the heavy minimum.

**Parameters:**
- `dose`: The dose to calculate the number of dots for.

**Returns:**
- An integer representing the number of dots to display.

### shouldUseVolumetricDosing: Boolean

Determines whether volumetric dosing (using units like µg or mg) should be used instead of weight-based dosing. This is useful for substances where smaller doses are more common, such as micrograms.

**Returns:**
- A boolean indicating whether volumetric dosing should be used.

### averageCommonDose: Double?

Calculates the average dose between the common and strong minimums. This can be useful for providing a reference point for dosage comparisons.

**Returns:**
- A double representing the average common dose, or null if either the common or strong minimum is not defined.

### getStrengthRelativeToCommonDose(dose: Double): Double?

Calculates the relative strength of a given dose compared to the average common dose. This can be useful for understanding how strong a particular dosage is in relation to typical doses.

**Parameters:**
- `dose`: The dose to calculate the relative strength for.

**Returns:**
- A double representing the relative strength of the dose, or null if the average common dose is not defined or is zero.

