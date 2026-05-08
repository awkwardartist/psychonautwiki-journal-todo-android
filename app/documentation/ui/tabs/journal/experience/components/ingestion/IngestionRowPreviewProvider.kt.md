# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/components/ingestion/IngestionRowPreviewProvider.kt

## Overview

The `IngestionRowPreviewProvider.kt` file is a Kotlin source file located in the PsychonautWiki Journal project. This file specifically contains a class that implements the `PreviewParameterProvider` interface to provide preview data for the `IngestionRow` composable function.

## Classes/Types

### IngestionRowPreviewProvider

- **Purpose**: This class provides preview parameters for the `IngestionRow` composable function. It is used to populate preview scenarios in Android Studio.
- **Location**: The class is defined within the package `com.isaakhanimann.journal.ui.tabs.journal.experience.components.ingestion`.

## Methods/Functions

### override val values: Sequence<IngestionElement>

- **Purpose**: This property returns a sequence of `IngestionElement` objects that represent different preview scenarios for the `IngestionRow` composable function.
- **Parameters**: None
- **Return Type**: `Sequence<IngestionElement>`
- **Details**:
  - The `values` property is overridden to provide multiple preview data points.
  - Each element in the sequence represents a different state or scenario for the `IngestionRow`.
  - The properties of each `IngestionElement` include an `ingestionWithCompanionAndCustomUnit`, which itself contains details about the substance, dose, and other attributes.

### Other Functions

- No other functions are explicitly defined in this file. All logic for preview data is encapsulated within the `values` property.

## Example Usage

The `IngestionRowPreviewProvider` class is used in conjunction with Android Studio's preview feature to provide realistic previews of the `IngestionRow` composable function. When you open or edit a file that uses this provider, Android Studio will automatically generate and display these preview scenarios, allowing you to visually verify the UI in different states.

## Dependencies

- The class depends on several entities from the PsychonautWiki Journal project, such as `AdaptiveColor`, `CustomUnit`, `Ingestion`, `StomachFullness`, `SubstanceCompanion`, and `IngestionWithCompanionAndCustomUnit`.
- It also depends on the `AdministrationRoute` enum for defining different administration routes of substances.

## Conclusion

The `IngestionRowPreviewProvider.kt` file is a crucial component in providing realistic previews for the `IngestionRow` composable function. By implementing the `PreviewParameterProvider` interface, it ensures that developers can visualize the UI in various states without needing to run the application on an actual device.

