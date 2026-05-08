# RoaDose.kt

## Overview

The `RoaDose` class represents the dose of a substance for a specific administration route (R.O.A., Route of Administration). It contains information about the minimum doses required to enter different stages of a drug's effect, as well as helper methods for determining the dose class and number of dots associated with a given ingestion dose.

## Classes/Types

### RoaDose

#### Properties

- `units: String`: The unit of measurement for the dose (e.g., "mg", "µg").
- `lightMin: Double?`: The minimum dose required to experience a light effect.
- `commonMin: Double?`: The minimum dose required to experience a common effect.
- `strongMin: Double?`: The minimum dose required to experience a strong effect.
- `heavyMin: Double?`: The minimum dose required to experience a heavy effect.

#### Methods

- `getDoseClass(ingestionDose: Double?, ingestionUnits: String?): DoseClass?`
  - Returns the dose class for the given ingestion dose. If the units of measurement do not match or if no valid dose is provided, it returns null.
  
- `getNumDots(ingestionDose: Double?, ingestionUnits: String?): Int?`
  - Returns the number of dots representing the strength of the effect based on the given ingestion dose. If the units of measurement do not match or if no valid dose is provided, it returns null.

- `shouldUseVolumetricDosing: Boolean`
  - Determines whether volumetric dosing should be used for the given unit of measurement (e.g., "µg" always uses volumetric dosing).

- `averageCommonDose: Double?`
  - Returns the average common dose between the common and strong minimum doses if both are available.

- `getStrengthRelativeToCommonDose(dose: Double): Double?`
  - Calculates the strength of the given dose relative to the average common dose. If the average common dose is zero or not available, it returns null.

## Example Usage

```kotlin
val roaDose = RoaDose(
    units = "mg",
    lightMin = 0.1,
    commonMin = 1.0,
    strongMin = 5.0,
    heavyMin = 20.0
)

// Get the dose class for an ingestion dose of 3 mg
val doseClass = roaDose.getDoseClass(ingestionDose = 3.0, ingestionUnits = "mg")
println("Dose Class: $doseClass") // Output: Dose Class: COMMON

// Get the number of dots for an ingestion dose of 15 mg
val numDots = roaDose.getNumDots(ingestionDose = 15.0, ingestionUnits = "mg")
println("Number of Dots: $numDots") // Output: Number of Dots: 4
```

This class is essential for determining the appropriate dose classification and effect strength based on user input, facilitating accurate dosing recommendations in applications related to substance use tracking or administration.

