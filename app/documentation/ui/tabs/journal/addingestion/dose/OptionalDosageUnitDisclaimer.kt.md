## OptionalDosageUnitDisclaimer

### Overview

The `OptionalDosageUnitDisclaimer` composable function provides a text component that displays an optional disclaimer regarding dosage units based on the substance name.

### Classes/Types

- **None**

### Methods/Functions

#### `OptionalDosageUnitDisclaimer`

**Description:**  
Displays an optional disclaimer about dosage units, depending on the substance name provided.

**Parameters:**
- `substanceName` (String): The name of the substance for which to display the disclaimer.

**Returns:**
- **None**

### Usage

The function is intended to be used in UI components where displaying a substance's dosage unit disclaimer might be necessary. It checks if the substance is "Alcohol" and displays a specific text indicating that dosages are given in mg of pure Ethanol. If the substance name does not match any known cases, it simply returns without rendering anything.

### Example

```kotlin
@Composable
fun SubstanceInfoScreen(substanceName: String) {
    Column {
        // Other UI elements...

        OptionalDosageUnitDisclaimer(substanceName = substanceName)

        // More UI elements...
    }
}
```

In this example, `OptionalDosageUnitDisclaimer` is included within a composable function that displays information about various substances. Depending on the name of the substance passed to it, it will either render a specific disclaimer or nothing at all.

### Dependencies

This component does not depend on any external libraries and operates solely within the Kotlin Compose framework.

