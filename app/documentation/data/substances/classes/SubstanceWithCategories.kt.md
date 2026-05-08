# SubstanceWithCategories

## Overview

`SubstanceWithCategories` is a Kotlin data class designed to encapsulate a `Substance` object along with its associated categories. This structure facilitates easier handling of substances within a UI context, particularly when searching or displaying substance information.

The primary purpose of this class is to bridge the gap between raw substance data and user interface needs by providing structured access to both the substance details and its categorization. This separation can be useful in scenarios where categories are frequently referenced alongside substance properties, such as during searches or detailed views.

## Classes/Types

### SubstanceWithCategories

- **Purpose**: Holds a `Substance` object along with a list of associated `Category` objects.
- **Structure**:
  - `substance`: A `Substance` instance containing all relevant information about the substance, such as its name, effects, risks, and interactions.
  - `categories`: A list of `Category` instances representing the various categories under which this substance falls.

### SubstanceModel

- **Purpose**: A simplified model representation of a `Substance`, tailored for UI display. This class includes essential attributes that are typically visible to the user in a searchable or detail view.
- **Structure**:
  - `name`: The name of the substance.
  - `commonNames`: A list of common names associated with the substance.
  - `categories`: A list of `CategoryModel` instances representing the categories under which this substance falls, each containing its name and color for display purposes.
  - `hasSaferUse`: Indicates whether there are any safer use recommendations available for the substance.
  - `hasInteractions`: Indicates whether the substance has any interactions that should be noted.

## Methods/Functions

### toSubstanceModel()

- **Purpose**: Converts a `SubstanceWithCategories` object into a `SubstanceModel` instance, tailored for UI display.
- **Parameters**:
  - None
- **Returns**: A `SubstanceModel` object populated with data from the `SubstanceWithCategories`.
- **Behavior**:
  - The method maps the `substance` and `categories` from the `SubstanceWithCategories` to their corresponding properties in a `SubstanceModel`.
  - For each category, it creates a `CategoryModel` instance using the category's name and color.

## Example Usage

```kotlin
val substance = Substance(
    name = "LSD",
    commonNames = listOf("Acid", "Electric Acid"),
    url = "https://www.example.com/lsd",
    // Other properties...
)

val categories = listOf(
    Category(name = "psychedelic", description = "", url = null, color = Color.Red),
    Category(name = "hallucinogen", description = "", url = null, color = Color.Blue)
)

val substanceWithCategories = SubstanceWithCategories(substance, categories)
val substanceModel = substanceWithCategories.toSubstanceModel()
```

In this example, a `Substance` object is created with basic properties and several associated categories. The `SubstanceWithCategories` object is then created by combining the `Substance` and its categories. Finally, the `toSubstanceModel()` method is called to convert the combined object into a `SubstanceModel`, which can be easily used in UI components for display.

This design allows for clean separation between data storage and user interface requirements, making it easier to manage and update substance information without affecting the visual representation of that information.

