# CustomUnitRoaDoseView.kt

## Overview

The `CustomUnitRoaDoseView` file contains a Composable function named `CustomUnitRoaDoseView`, which is designed to display information about the ROA (Route of Administration) classification based on a custom unit. This view takes in a `RoaDose` object and a `CustomUnit` object, converting the dose ranges from the original unit to the new custom unit for better readability.

## Classes/Types

### CustomUnitRoaDoseView Composable Function

```kotlin
@Composable
fun CustomUnitRoaDoseView(roaDose: RoaDose, customUnit: CustomUnit)
```

- **Description:** A Composable function that displays the ROA classification in a new unit.
  
  - **Parameters:**
    - `roaDose`: An instance of `RoaDose` containing the dose ranges for different severity levels (light, common, strong, heavy).
    - `customUnit`: An instance of `CustomUnit` representing the new unit to which the doses are converted.

## Methods/Functions

### convertToNewUnit Function

```kotlin
fun convertToNewUnit(oldDose: Double?): Double?
```

- **Description:** Converts an old dose from the original unit to the new custom unit.
  
  - **Parameters:**
    - `oldDose`: The old dose value in the original unit.
    
  - **Returns:** The converted dose in the new custom unit or null if the old dose is null.

### roundToSensibly Function

```kotlin
fun roundToSensibly(num: Double): Double
```

- **Description:** Rounds a number to a sensible level of precision, depending on its value.
  
  - **Parameters:**
    - `num`: The number to be rounded.
    
  - **Returns:** The rounded number with appropriate precision.

## Usage Context

This file is part of a larger application that deals with substance use and dosing. It is used in the context of displaying dose information for substances, allowing users to understand their doses in terms of a custom unit they prefer or are more familiar with.

