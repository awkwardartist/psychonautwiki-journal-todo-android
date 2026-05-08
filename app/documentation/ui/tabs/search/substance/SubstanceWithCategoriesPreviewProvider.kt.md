## Overview

The `SubstanceWithCategoriesPreviewProvider` class provides a preview parameter provider for the `SubstanceWithCategories` data type. This is used in Compose UI previews to provide a sample substance with categories that can be used to demonstrate the functionality of the UI components.

## Classes/Types

### SubstanceWithCategoriesPreviewProvider

This class implements the `PreviewParameterProvider<SubstanceWithCategories>` interface, which is a preview parameter provider for the `SubstanceWithCategories` data type. This allows the `SubstanceWithCategories` object to be used in Compose UI previews.

## Methods/Functions

### values()

This method returns a sequence of `SubstanceWithCategories` objects that can be used as preview parameters. The sequence contains one `SubstanceWithCategories` object, which is created with default values for the substance and categories.

The substance has a name of "Example Substance", common names of "Hat", "Boot", "Hoodie", "Shirt", and "Blouse", a URL of "https://psychonautwiki.org/wiki/Lsd", and various other properties such as tolerance, ROAs (routes of administration), addiction potential, toxicities, cross-tolerances, interactions, summary, effects summary, dosage remark, general risks, long-term risks, and safer use tips. Each category has a name, description, URL, and color.

This method is used to provide preview parameters for the `SubstanceWithCategories` data type in Compose UI previews.

