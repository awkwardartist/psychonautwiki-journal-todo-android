## PurityCalculation.kt

### Overview

`PurityCalculation.kt` contains a Composable function `PurityCalculation` designed for calculating and displaying the purity of a substance and its corresponding impure dose. The component includes an `OutlinedTextField` for entering the purity percentage, validation logic for ensuring the input is within the valid range (1-100%), and optional display of the converted impure dose.

### Classes/Types

- **PurityCalculation**: A Composable function that takes several parameters and renders a UI for calculating the purity and displaying the converted dose.

### Methods/Functions

#### PurityCalculation Composable Function

```kotlin
@Composable
fun PurityCalculation(
    purityText: String,
    onPurityChange: (purity: String) -> Unit,
    isValidPurity: Boolean,
    convertedDoseAndUnitText: String?
)
```

- **Parameters**:
  - `purityText`: A string representing the current value of the purity percentage entered by the user.
  - `onPurityChange`: A lambda function that takes a string and is invoked whenever the user changes the purity text. It should update the state in your ViewModel or StateFlow with the new purity value.
  - `isValidPurity`: A boolean indicating whether the current purity text is valid (i.e., between 1 and 100%).
  - `convertedDoseAndUnitText`: An optional string that represents the converted impure dose and its unit. If provided, it will be displayed below the input field.

- **Functionality**:
  - The function uses an `OutlinedTextField` to allow the user to enter a purity percentage.
  - It displays an error message if the entered purity is not valid (i.e., outside the range of 1-100%).
  - If `convertedDoseAndUnitText` is provided, it displays the impure dose and its unit below the input field.

#### Standard Deviation Explanation

```kotlin
@Composable
fun StandardDeviationExplanation(
    modifier: Modifier = Modifier,
    mean: Double,
    standardDeviation: Double,
    unit: String
)
```

- **Parameters**:
  - `modifier`: A `Modifier` to apply styling and layout changes to the component.
  - `mean`: The mean value of a dataset.
  - `standardDeviation`: The standard deviation of a dataset.
  - `unit`: The unit of measurement for the dataset.

- **Functionality**:
  - This function provides a brief explanation of what the standard deviation values represent in terms of percentiles (68% and 95%).

### Usage Context

The `PurityCalculation` component is typically used within forms where users need to input the purity percentage of a substance they are administering. It allows for easy validation of user input and provides immediate feedback if the entered value is outside the acceptable range. The optional display of the converted impure dose can be useful for ensuring accuracy in dosage calculations, especially when dealing with substances like alcohol.

### Example Usage

```kotlin
@Composable
fun ExampleUsage() {
    var purityText by remember { mutableStateOf("") }
    var isValidPurity by remember { mutableStateOf(true) }
    var convertedDoseAndUnitText: String? = null

    PurityCalculation(
        purityText = purityText,
        onPurityChange = { purityText = it },
        isValidPurity = isValidPurity,
        convertedDoseAndUnitText = convertedDoseAndUnitText
    )
}
```

In this example, the `PurityCalculation` component is integrated into a composable function that manages the state of `purityText`, `isValidPurity`, and `convertedDoseAndUnitText`. This setup ensures that the UI correctly reflects any changes made by the user.

