# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/search/substancerow/SubstanceModelPreviewProvider.kt

## Overview

The file `SubstanceModelPreviewProvider.kt` contains a preview provider for the `SubstanceModel` class, which is used in the PsychonautWiki Journal application. This provider allows developers to easily create and display preview instances of `SubstanceModel` objects within the Jetpack Compose UI system.

## Classes/Types

### SubstanceModelPreviewProvider

- **Purpose**: Provides a sequence of `SubstanceModel` instances for preview purposes.
- **Inheritance**: Extends `PreviewParameterProvider<SubstanceModel>`.
- **Attributes**:
  - None explicitly defined; the class itself is a provider of preview parameters.

## Methods/Functions

### Override fun values: Sequence<SubstanceModel>

- **Purpose**: Returns a sequence of `SubstanceModel` instances that can be used for previews.
- **Parameters**: None.
- **Return Value**: A `Sequence<SubstanceModel>` containing a single `SubstanceModel` instance.
  - **Example Instance**:
    ```kotlin
    SubstanceModel(
        name = "Example Substance",
        commonNames = listOf("Hat", "Boot", "Hoodie", "Shirt", "Blouse"),
        categories = listOf(
            CategoryModel(
                name = "common",
                color = Color.Blue
            ),
            CategoryModel(
                name = "psychedelic",
                color = Color.Magenta
            )
        ),
        hasSaferUse = false,
        hasInteractions = false
    )
    ```

## Usage Context

To use this preview provider, developers should include it in their Composable functions where previews of `SubstanceModel` are required. The Jetpack Compose system will automatically pick up and utilize the preview data provided by this class.

Example usage within a Composable function:
```kotlin
@Preview(showBackground = true)
@Composable
fun MyPreview() {
    val substanceModelProvider = SubstanceModelPreviewProvider()
    val substanceModel = remember { substanceModelProvider.values.first() }
    
    // Use substanceModel for previewing in the UI
}
```

This documentation provides a detailed overview of `SubstanceModelPreviewProvider.kt`, highlighting its role, methods, and usage within the context of Jetpack Compose preview functionality.

