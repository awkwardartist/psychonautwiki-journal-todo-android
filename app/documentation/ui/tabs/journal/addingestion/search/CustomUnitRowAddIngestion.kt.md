# CustomUnitRowAddIngestion.kt

## Overview
`CustomUnitRowAddIngestion.kt` contains a Composable function designed for displaying a custom unit row within an ingestion search UI component. This function is used to present detailed information about custom units that users can select from.

This file does not depend on external components or resources and is self-contained, focusing solely on the presentation layer of the application.

## Classes/Types
- None defined in this file.

## Methods/Functions

### CustomUnitRowAddIngestion
**Description:**
Displays a row for a custom unit in an ingestion search. This row includes clickable functionality to navigate to a dose selection screen for the selected custom unit.

**Parameters:**
- `customUnit`: A `CustomUnit` object representing the custom unit to be displayed.
- `navigateToCustomUnitChooseDose`: A lambda function that takes an integer (`customUnitId`) and is used to navigate to a screen where users can choose a dose for the selected custom unit.

**Return Value:**
None

### Composable CustomUnitRowAddIngestion
```kotlin
@Composable
fun CustomUnitRowAddIngestion(
    customUnit: CustomUnit,
    navigateToCustomUnitChooseDose: (customUnitId: Int) -> Unit
)
```

This function is annotated with `@Composable`, indicating that it can be used in Jetpack Compose UI to build declarative UIs.

### Column
**Description:**
The root composable element of the CustomUnitRowAddIngestion function. It arranges its children vertically and applies padding on both the vertical and horizontal axes.

**Modifier:**
- `Modifier.clickable`: Makes the entire column clickable, triggering the `navigateToCustomUnitChooseDose` lambda when clicked.
- `fillMaxWidth`: Ensures that the column takes up the full width available to it.
- `padding(vertical = 10.dp, horizontal = horizontalPadding)`: Adds padding around the vertical and horizontal edges of the column.

**Horizontal Alignment:**
- Set to `Alignment.Start`, ensuring that all text within the column aligns with the start edge (left for LTR languages).

### Text (Custom Unit Name)
**Description:**
Displays the full name of the custom unit, including its associated substance name, administration route, and custom unit name.

**Parameters:**
- `text`: The formatted string combining the substance name, administration route, and custom unit name.
- `style`: Set to `MaterialTheme.typography.titleMedium` for a large, medium weight text style.

### Text (Dose Description)
**Description:**
Displays a description of the dose in terms of how much of the substance is contained within one unit of the custom unit, along with the unit itself.

**Parameters:**
- `text`: The formatted string describing the dose and unit.
- `style`: Set to `MaterialTheme.typography.titleSmall` for a smaller text style.

