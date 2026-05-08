# RoaDosePreviewProvider.kt

## Overview

`RoaDosePreviewProvider.kt` contains a preview provider class used for generating sample data for `RoaDoseView` composable function. This file is part of the PsychonautWiki Journal application, which is open-source software licensed under the GNU General Public License.

The primary purpose of this class is to provide a way to visualize and test the appearance and behavior of `RoaDoseView` without requiring actual data from a database or API. It uses Compose's preview functionality to render a sample `RoaDose` object in different UI configurations.

## Classes/Types

### RoaDosePreviewProvider

#### Description

This class implements `PreviewParameterProvider<RoaDose>`, which is used by Compose's preview system to generate previews of composable functions that accept a `RoaDose` parameter. The `RoaDosePreviewProvider` provides a sequence of sample `RoaDose` objects, allowing developers to see how the UI changes with different data inputs.

#### Properties

- **values**: A sequence of `RoaDose` objects. This property is implemented from the `PreviewParameterProvider<RoaDose>` interface and returns a single `RoaDose` object for preview purposes.

### RoaDose

This class represents a dose range for substances that can be administered orally, rectally, or vaginally (ROA). It contains properties to define the minimum doses in different categories: light, common, strong, and heavy. The class is used to provide data to `RoaDoseView` for rendering.

## Methods/Functions

### RoaDosePreviewProvider::values

#### Description

This function returns a sequence of `RoaDose` objects. Each object represents a sample dose range that can be used for previewing the UI in different configurations.

#### Parameters

- None

#### Returns

- A `Sequence<RoaDose>` containing one sample `RoaDose` object.

## Usage Context

To use this file, developers need to have a basic understanding of Kotlin and Compose. They should also be familiar with the structure of the PsychonautWiki Journal project and how composable functions are used for UI preview in Jetpack Compose.

For more information on using `PreviewParameterProvider` and Compose previews, refer to the official Android documentation: [Jetpack Compose Preview](https://developer.android.com/jetpack/compose/tooling/preview)

