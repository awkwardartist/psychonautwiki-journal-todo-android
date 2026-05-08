# SubstanceRow.kt Documentation

## Overview

The `SubstanceRow.kt` file is a Kotlin source code file that contains the UI components for displaying information about substances in a list format within an Android application. Specifically, it provides two main composable functions: `SubstanceRowPreview` and `SubstanceRow`. The first function is used for previewing the component in design tools like Android Studio's Layout Editor, while the second function represents the actual UI component to be displayed.

This file adheres to the Material Design guidelines using Jetpack Compose, a declarative Kotlin-based framework for building native user interfaces. It includes custom composables such as `CategoryChipStatic` to display categories of substances visually appealing and interactive components like `SubstanceRow` which are used in a list view.

## Classes/Types

1. **SubstanceModel**
   - Represents the data model for a substance, including its name, common names, categories, and additional properties like whether it has safer use information or interaction details.
   
2. **CategoryModel**
   - Represents a category that substances can belong to, with attributes such as a name and color.

3. **SubstanceRowPreviewProvider**
   - Implements `PreviewParameterProvider` for providing preview data of type `SubstanceModel`.

## Methods/Functions

1. **@Composable fun SubstanceRowPreview(@PreviewParameter(SubstanceModelPreviewProvider::class) substanceModel: SubstanceModel)**
   - A composable function used to provide a preview of the `SubstanceRow` component in design tools.

2. **@OptIn(ExperimentalLayoutApi::class) @Composable fun SubstanceRow(substanceModel: SubstanceModel, onTap: (substanceName: String) -> Unit)**
   - The main composable function that represents a row in a list displaying information about a substance.
     - **Parameters**:
       - `substanceModel`: An instance of `SubstanceModel` containing the data to be displayed.
       - `onTap`: A lambda function that is called when the user taps on the row, passing the name of the substance.

3. **@Composable fun CategoryChipStatic(categoryModel: CategoryModel)**
   - A composable function used to display a category chip with a name and color.
     - **Parameters**:
       - `categoryModel`: An instance of `CategoryModel` containing the data for the category chip.

## Usage Context

To use these composables in your Android application, you would typically include them within a larger composable hierarchy that represents a list view or other UI component that displays multiple substances. Here is an example:

```kotlin
@Composable
fun SubstanceList(substances: List<SubstanceModel>) {
    LazyColumn {
        items(substances) { substance ->
            SubstanceRow(
                substanceModel = substance,
                onTap = { substanceName ->
                    // Handle tap on substance row
                    println("Tapped on $substanceName")
                }
            )
        }
    }
}
```

This example shows how to use `SubstanceRow` within a `LazyColumn` to create a scrollable list of substances. Each item in the list is a `SubstanceRow`, and the `onTap` lambda function can be customized to handle user interactions, such as navigating to a details screen for the selected substance.

For more detailed information on using Jetpack Compose or Android UI components, refer to the official documentation:
- [Jetpack Compose](https://developer.android.com/jetpack/compose)
- [Android Design System](https://material.io/design)

