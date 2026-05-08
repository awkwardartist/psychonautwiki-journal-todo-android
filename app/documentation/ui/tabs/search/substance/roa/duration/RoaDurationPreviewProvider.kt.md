# RoaDurationPreviewProvider.kt

## Overview
The `RoaDurationPreviewProvider.kt` file contains a preview provider for ROA (Route of Administration) duration data used in the PsychonautWiki Journal application. This provider is specifically designed to generate sample data for testing and previewing purposes.

## Classes/Types
### RoaDurationPreviewProvider
- **Purpose**: Provides a sequence of `RoaDuration` objects for use in Compose previews.
- **Attributes**:
  - None
- **Methods**:
  - **override val values: Sequence<RoaDuration>**: Returns a sequence of `RoaDuration` objects, each with different combinations of null and non-null duration ranges for onset, comeup, peak, offset, total, and afterglow.

## Methods/Functions
### RoaDurationPreviewProvider().values
- **Purpose**: Provides a sequence of sample `RoaDuration` objects.
- **Parameters**:
  - None
- **Return Type**: Sequence<RoaDuration>
- **Implementation**: The method returns a sequence containing multiple instances of `RoaDuration`, each with different combinations of null and non-null duration ranges. This allows for testing various scenarios in Compose previews where partial or complete duration data might be available.

## Usage
The `RoaDurationPreviewProvider` is typically used in conjunction with Compose previews to display `RoaDurationView` components with different sample data. The `@PreviewParameter(RoaDurationPreviewProvider::class)` annotation can be applied to preview functions that take a `RoaDuration` parameter, allowing for dynamic previewing of how the view looks under various conditions.

## Example Usage
```kotlin
@Preview(showBackground = true)
@Composable
fun RoaDurationViewPreview(
    @PreviewParameter(RoaDurationPreviewProvider::class) roaDuration: RoaDuration
) {
    JournalTheme {
        RoaDurationView(roaDuration = roaDuration)
    }
}
```

This example demonstrates how to use the `RoaDurationPreviewProvider` in a preview function for `RoaDurationView`, ensuring that the view is tested with all possible combinations of duration data.

