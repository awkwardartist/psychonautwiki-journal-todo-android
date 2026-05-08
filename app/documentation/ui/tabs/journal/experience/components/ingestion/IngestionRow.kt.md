# Overview

The `IngestionRow.kt` file contains a Composable function for displaying an ingestion row in a user interface. This row typically includes details about substances ingested by a user, such as the substance name, dosage, administration route, time of ingestion, and any notes. The component is designed to be flexible, allowing for customization based on the current state of the application.

# Classes/Types

## IngestionRow

### Purpose
The `IngestionRow` Composable function displays a single row representing an ingestion event in a user interface. It takes several parameters to customize its appearance and behavior.

### Parameters
- **ingestionElement** (`IngestionElement`): An object containing the data for a specific ingestion event.
- **areDosageDotsHidden** (`Boolean`, optional): A flag indicating whether the dosage dots should be hidden.
- **modifier** (`Modifier`, optional): Modifiers to apply to the row.
- **time** (`@Composable () -> Unit`): A composable lambda that returns the time component of the ingestion row.

### Example Usage
```kotlin
IngestionRow(
    ingestionElement = ingestionElement,
    areDosageDotsHidden = false,
    modifier = Modifier.fillMaxWidth()
) {
    Text(
        text = "Fri 07:17",
        style = MaterialTheme.typography.labelMedium
    )
}
```

## IngestionRowPreviewProvider

### Purpose
The `IngestionRowPreviewProvider` class provides preview data for the `IngestionRow` composable function. This allows developers to easily see how the component will look in different scenarios during development.

### Preview Data
- **MDMA Ingestion**: A basic ingestion with a known dose and no custom unit.
- **2C-B Ingestion (Red Rocket)**: An ingestion with a custom unit, including a name and estimated dose.
- **2C-B Ingestion (Blue Rocket)**: An ingestion with a custom unit but an unknown dose.
- **LSD Ingestion**: A basic ingestion without any additional details.

# Methods/Functions

## IngestionRow Composable Function

### Parameters
- **ingestionElement** (`IngestionElement`): Contains the data for the ingestion event.
- **areDosageDotsHidden** (`Boolean`, default `false`): Indicates whether dosage dots should be hidden.
- **modifier** (`Modifier`, default `Modifier`): Modifiers to apply to the row.
- **time** (`@Composable () -> Unit`): Composable function that returns the time component of the ingestion row.

### Implementation
The function displays a vertical line, followed by details about the substance ingested. It includes:
- The time of ingestion.
- The name of the substance, optionally with a custom unit if provided.
- The dose and administration route.
- Dosage dots (if not hidden).
- Any notes associated with the ingestion.

## IngestionRowPreview Composable Function

### Parameters
- **ingestionElement** (`IngestionElement`): An object containing the data for a specific ingestion event, provided by `IngestionRowPreviewProvider`.

### Implementation
This function previews the `IngestionRow` composable with different scenarios of ingestion events. It is used to visually inspect the component in various states during development.

# Usage Context

To use these components effectively, you will need an understanding of Jetpack Compose and Android UI development. The `IngestionRow` should be integrated into your app's user interface where displaying individual ingestion events is required. The preview data provided by `IngestionRowPreviewProvider` can be used to test and validate the component's behavior in different scenarios.

