## Overview

The `CustomSubstance.kt` file contains a data class that represents custom substances used in experiences recorded within the PsychonautWiki Journal application. This file is crucial for managing and storing information about substances beyond those predefined in the application, allowing users to record experiences with unique substances.

## Classes/Types

### CustomSubstance

#### Description

The `CustomSubstance` data class represents a custom substance that can be used in experiences recorded within the PsychonautWiki Journal application. This class includes various properties and methods that help in managing and storing information about custom substances.

#### Properties

- **substanceName**: A string representing the name of the substance.
- **color**: An `AdaptiveColor` object representing the color associated with the substance.
- **effectDurationHours**: A double value representing the estimated duration of effects from taking the substance in hours.
- **potencyDescription**: A string providing a description of the potency or strength of the substance.
- **effectsList**: A list of strings describing various effects experienced when consuming the substance.
- **notes**: A string containing additional notes about the substance.
- **isFavorite**: A boolean indicating whether the substance is marked as a favorite.

#### Methods/Functions

- **equals(other: Any?)**: Overrides the `equals` method to compare two instances of `CustomSubstance`.
- **hashCode()**: Overrides the `hashCode` method to provide a hash code for an instance of `CustomSubstance`.
- **toString()**: Overrides the `toString` method to provide a string representation of an instance of `CustomSubstance`.

### AdaptiveColor

#### Description

The `AdaptiveColor` class is used to represent colors that can adapt to different themes or contexts within the application. This class likely includes properties such as RGB values or color names.

## Detailed Properties and Methods

### CustomSubstance Properties

- **substanceName**: Represents the name of the substance, which is unique for each custom substance.
  - Example: `"Psilocybin Mushrooms"`

- **color**: Represents the color associated with the substance. This property uses an `AdaptiveColor` object to ensure consistency across different themes or contexts.
  - Example: `AdaptiveColor("#FF0000")`

- **effectDurationHours**: Represents the estimated duration of effects from taking the substance in hours.
  - Example: `6.0`

- **potencyDescription**: Provides a description of the potency or strength of the substance, aiding users in understanding its impact.
  - Example: `"Moderately potent"`

- **effectsList**: Contains a list of strings describing various effects experienced when consuming the substance.
  - Example: `listOf("Increased empathy", "Visual distortions", "Enhanced creativity")`

- **notes**: Additional notes about the substance that may include preparation, dosage advice, or other relevant information.
  - Example: `"Do not consume on an empty stomach"`

- **isFavorite**: A boolean indicating whether the substance is marked as a favorite by the user. This property helps in quickly accessing frequently used substances.
  - Example: `true`

### CustomSubstance Methods

- **equals(other: Any?)**: Compares two instances of `CustomSubstance` for equality based on their properties.
  - Parameters:
    - `other`: Another instance of `CustomSubstance` to compare with.
  - Returns: A boolean indicating whether the instances are equal.

- **hashCode()**: Provides a hash code for an instance of `CustomSubstance`, which is used in collections like sets and maps.
  - Returns: An integer representing the hash code of the instance.

- **toString()**: Provides a string representation of an instance of `CustomSubstance`, making it easier to debug and log instances.
  - Returns: A string describing the instance's properties.

## Example Usage

```kotlin
val customSubstance = CustomSubstance(
    substanceName = "Psilocybin Mushrooms",
    color = AdaptiveColor("#FF0000"),
    effectDurationHours = 6.0,
    potencyDescription = "Moderately potent",
    effectsList = listOf("Increased empathy", "Visual distortions", "Enhanced creativity"),
    notes = "Do not consume on an empty stomach",
    isFavorite = true
)

println(customSubstance)
// Output: CustomSubstance(substanceName=Psilocybin Mushrooms, color=#FF0000, effectDurationHours=6.0, potencyDescription=Moderately potent, effectsList=[Increased empathy, Visual distortions, Enhanced creativity], notes=Do not consume on an empty stomach, isFavorite=true)
```

This example demonstrates how to create an instance of `CustomSubstance` and print its string representation.

