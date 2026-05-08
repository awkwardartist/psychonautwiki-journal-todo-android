# Overview

The `SubstanceModel.kt` file defines a data class `SubstanceModel`, which represents a substance within the application. This class is utilized to store various attributes of a substance, such as its name, common names, categories, and interaction details.

# Classes/Types

## SubstanceModel

```kotlin
data class SubstanceModel(
    val name: String,
    val commonNames: List<String>,
    val categories: List<CategoryModel>,
    val hasSaferUse: Boolean,
    val hasInteractions: Boolean
)
```

### Description

The `SubstanceModel` data class is designed to encapsulate all necessary information about a substance. It includes:

- **name**: The primary name of the substance.
- **commonNames**: A list of common names associated with the substance.
- **categories**: A list of categories the substance belongs to, each represented by a `CategoryModel`.
- **hasSaferUse**: A boolean indicating whether the substance has safer use information available.
- **hasInteractions**: A boolean indicating whether the substance has interaction information available.

### Properties

- **name: String**
  - The primary name of the substance.

- **commonNames: List<String>**
  - A list of common names associated with the substance.

- **categories: List<CategoryModel>**
  - A list of categories the substance belongs to, each represented by a `CategoryModel`.

- **hasSaferUse: Boolean**
  - Indicates whether the substance has safer use information available.

- **hasInteractions: Boolean**
  - Indicates whether the substance has interaction information available.

# Methods/Functions

This data class does not include any methods or functions. It is purely used for storing and representing data related to a substance.

# Dependencies

The `SubstanceModel` class depends on the `CategoryModel` class, which should be defined elsewhere in the codebase (context required).

# Usage

Instances of the `SubstanceModel` class can be created and used throughout the application wherever information about substances needs to be stored or displayed. This includes within UI components and data repositories.

# Conclusion

The `SubstanceModel.kt` file provides a simple yet comprehensive way to represent substance data in the application, making it easier to manage and utilize across different parts of the codebase.

