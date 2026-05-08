## StandardDeviationExplanation.kt

### Overview

The `StandardDeviationExplanation` Composable is designed to provide users with an explanation of what a given mean and standard deviation signify for a dose of a substance. This includes details about the ranges within one and two standard deviations of the mean.

This component is intended for use in user interfaces where users need to understand dosage information, especially when dealing with substances that have specific dosing guidelines or safety considerations.

### Classes/Types

- **StandardDeviationExplanation**: The main Composable function that displays the explanation.

### Methods/Functions

#### StandardDeviationExplanation

- **Parameters**:
  - `modifier` (Modifier): Optional modifier to apply to the Column containing the text.
  - `mean` (Double): The mean value of the dose.
  - `standardDeviation` (Double): The standard deviation of the dose.
  - `unit` (String): The unit of measurement for the dose.

- **Description**:
  This Composable function displays the given mean and standard deviation, along with explanations of what ranges are likely to be seen within one and two standard deviations. It uses the `Text` component from Material Theme to render the text, providing a clear and concise explanation to the user.

#### getOneStandardDeviationText

- **Parameters**:
  - `mean` (Double): The mean value of the dose.
  - `standardDeviation` (Double): The standard deviation of the dose.
  - `unit` (String): The unit of measurement for the dose.

- **Returns**: A string explaining what one standard deviation from the mean means in terms of the given range and unit.

- **Description**:
  This function calculates and returns a human-readable explanation of what values lie within one standard deviation of the mean. It uses the `toReadableString` extension function to format numbers appropriately for display.

#### getTwoStandardDeviationText

- **Parameters**:
  - `mean` (Double): The mean value of the dose.
  - `standardDeviation` (Double): The standard deviation of the dose.
  - `unit` (String): The unit of measurement for the dose.

- **Returns**: A string explaining what values lie within two standard deviations from the mean in terms of the given range and unit.

- **Description**:
  This function calculates and returns a human-readable explanation of what values lie within two standard deviations of the mean. It uses the `toReadableString` extension function to format numbers appropriately for display.

### Example Usage

```kotlin
@Composable
fun ExampleUsage() {
    StandardDeviationExplanation(
        mean = 20.0,
        standardDeviation = 3.0,
        unit = "mg"
    )
}
```

In this example, the `StandardDeviationExplanation` Composable is called with a mean of 20.0 mg and a standard deviation of 3.0 mg. The user will see an explanation of what ranges lie within one and two standard deviations of 20.0 mg.

