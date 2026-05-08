## Overview

The file `DoseClassificationRow.kt` contains a Composable function named `DoseClassificationRow`, which is used for displaying dose classifications in a user-friendly manner. This function takes several parameters to customize its display, including the minimum doses for different levels of intoxication (light, common, strong, heavy) and the unit of measurement.

The file also includes a preview function `DoseClassificationPreview` to demonstrate how `DoseClassificationRow` can be used in a preview environment.

## Classes/Types

### DoseClassificationRow

#### Description
`DoseClassificationRow` is a Composable function designed to display dose classifications for substances in a user-friendly format. It takes parameters to customize the minimum doses and the unit of measurement.

#### Parameters
- `lightMin`: The minimum dose for the light level, optional.
- `commonMin`: The minimum dose for the common level, optional.
- `strongMin`: The minimum dose for the strong level, optional.
- `heavyMin`: The minimum dose for the heavy level, optional.
- `unit`: The unit of measurement, e.g., "mg".
- `modifier`: Modifier to apply additional properties or styles.

## Methods/Functions

### DoseClassificationRow

#### Description
This function is a Composable that renders a row displaying dose classifications for substances. It uses the provided parameters to determine the visibility and styling of each dose level.

#### Code Snippet
```kotlin
@Composable
fun DoseClassificationRow(
    lightMin: Double?,
    commonMin: Double?,
    strongMin: Double?,
    heavyMin: Double?,
    unit: String,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier.fillMaxWidth(),
        verticalAlignment = Alignment.Top,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        // Render dose classification columns here
    }
}
```

### DoseClassificationPreview

#### Description
This function is a preview for `DoseClassificationRow`, demonstrating how it can be used in a preview environment.

#### Code Snippet
```kotlin
@Preview
@Composable
fun DoseClassificationPreview() {
    DoseClassificationRow(
        lightMin = 20.0,
        commonMin = 50.0,
        strongMin = 90.0,
        heavyMin = 120.0,
        unit = "mg"
    )
}
```

## Usage

To use `DoseClassificationRow`, you can include it in your Composable hierarchy and provide the necessary parameters to customize its display. The preview function `DoseClassificationPreview` can be used to see how `DoseClassificationRow` looks with default values.

For more advanced customization, you may need additional context about how the dose classifications are managed within the broader application.

