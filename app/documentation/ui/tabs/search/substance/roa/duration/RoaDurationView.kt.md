## Overview

The `RoaDurationView.kt` file contains Kotlin code for a Composable function that displays the duration ranges (onset, comeup, peak, offset, total, afterglow) of a psychoactive substance's route of administration (ROA). This view is designed to be part of a user interface within an Android application, leveraging Jetpack Compose for UI development.

## Classes/Types

### RoaDurationView

- **Type**: Composable
- **Purpose**: Displays the duration ranges of a substance's ROA.
- **Parameters**:
  - `roaDuration`: The data model containing the duration ranges to be displayed.
- **Behavior**:
  - The function constructs a UI that visually represents the various time periods associated with taking a psychoactive substance.
  - It includes surfaces displaying the text representation of each duration range and its corresponding name (e.g., "onset", "comeup").
  - If the total or afterglow duration ranges are provided, they are displayed at the bottom of the view.

## Methods/Functions

### RoaDurationPreview

- **Type**: Composable
- **Purpose**: Provides a preview for the `RoaDurationView` Composable.
- **Parameters**:
  - Uses `@PreviewParameter(RoaDurationPreviewProvider::class)` to provide test data.
- **Behavior**:
  - This function is used by Jetpack Compose's Preview tool to render a static image of the Composable in the IDE.

### TimeSurface

- **Type**: Composable
- **Purpose**: Represents a surface displaying a duration range and its name.
- **Parameters**:
  - `durationRange`: The data model containing the duration range.
  - `name`: A string representing the type of duration (e.g., "onset", "comeup").
- **Behavior**:
  - This Composable renders a card-like surface with rounded corners and tonal elevation.
  - It displays the text representation of the duration range and its name.

## Usage

To use `RoaDurationView` in your Android application, you would typically include it within another Composable that represents a screen or a section of a screen. You would pass an instance of `RoaDuration` to this Composable to display the relevant data.

```kotlin
@Composable
fun MyScreen() {
    val roaData = RoaDuration(/* initialize with actual data */)
    RoaDurationView(roaDuration = roaData)
}
```

This documentation provides a comprehensive overview of the `RoaDurationView.kt` file, detailing its components and usage within an Android application.

