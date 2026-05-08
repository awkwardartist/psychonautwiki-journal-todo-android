# InteractionsPreviewProvider.kt

## Overview

The `InteractionsPreviewProvider` file contains a class that provides preview data for interactions of substances. This is useful for testing UI components that display interaction information.

---

## Classes/Types

### InteractionsPreviewProvider

This class implements the `PreviewParameterProvider<Interactions>` interface and provides a sequence of `Interactions` objects for preview purposes in Jetpack Compose.

#### Extends

- `PreviewParameterProvider<Interactions>`

#### Methods/Functions

1. **values**: 
   - Type: Sequence<Interactions>
   - Description: Returns a sequence containing an example `Interactions` object for previewing.

---

## Methods/Functions

### values

**Returns:**  
Sequence of Interactions objects for previewing in Jetpack Compose.

**Description:**  
This method returns a sequence containing a single `Interactions` object. The `Interactions` object is constructed with various lists representing dangerous, unsafe, and uncertain interactions, which can be used to test UI components that display interaction information.

---

## Usage Context

To use this preview provider in your Jetpack Compose tests or previews, you would typically annotate a parameter of type `Interactions` with `@PreviewParameter(InteractionsPreviewProvider::class)`. This allows the preview tool to fetch an example `Interactions` object and pass it to the annotated function, enabling you to see how your UI components handle different interaction data.

