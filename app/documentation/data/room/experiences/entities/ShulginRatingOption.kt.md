# ShulginRatingOption.kt

## Overview

The `ShulginRatingOption.kt` file defines a sealed class representing various levels of subjective drug effects as described by Dr. Stanislaw H. R. Shulgin, commonly known as the "Father of Psychedelic Pharmacology." Each level corresponds to different states of consciousness and their associated characteristics.

This class is used within the context of psychedelic research and personal experiences, providing a standardized way to document and analyze the intensity and nature of drug effects.

## Classes/Types

### ShulginRatingOption

```kotlin
sealed class ShulginRatingOption {
    // Enumerated options for different levels of subjective experience
}
```

This is a sealed class that serves as a container for all possible levels of psychedelic experience ratings. It cannot be instantiated directly and must be one of its predefined values.

## Methods/Functions

### sign

```kotlin
abstract val sign: String
```

**Description**: An abstract property representing the symbol used to denote this rating option.

**Return Type**: `String`

### rawValue

```kotlin
abstract val rawValue: String
```

**Description**: An abstract property representing a unique identifier for this rating option.

**Return Type**: `String`

### shortDescription

```kotlin
abstract val shortDescription: String
```

**Description**: An abstract property providing a concise description of the rating option.

**Return Type**: `String`

### longDescription

```kotlin
abstract val longDescription: String
```

**Description**: An abstract property providing a detailed description of the rating option.

**Return Type**: `String`

### verticalSign

```kotlin
abstract val verticalSign: String
```

**Description**: An abstract property representing the symbol used to denote this rating option in a vertical format, often used for visual representation of drug effects.

**Return Type**: `String`

## Enumerated Options

The class contains several enum constants representing different levels of psychedelic experience ratings. Each constant implements the abstract properties defined in the sealed class and provides specific values for the `sign`, `rawValue`, `shortDescription`, `longDescription`, and `verticalSign`.

### PLUS (++)
```kotlin
PLUS {
    override val sign: String = "+"
    override val rawValue: String = "plus"
    override val shortDescription: String = "certainly active, nature not yet apparent"
    override val longDescription: String = "The drug is quite certainly active. The chronology can be determined with some accuracy, but the nature of the drug's effects are not yet apparent."
    override val verticalSign: String = "+"
}
```

**Description**: Indicates that the drug is clearly active but the nature of its effects has not yet become apparent.

### PLUS_TWO (++)
```kotlin
PLUS_TWO {
    override val sign: String = "++"
    override val rawValue: String = "twoPlus"
    override val shortDescription: String = "nature apparent, effects may be repressible"
    override val longDescription: String = "Both the chronology and the nature of a drug's action are unmistakably apparent. But you still have some choice as to whether you will accept the adventure, or rather just continue with your ordinary day's plans (if you are an experienced researcher, that is). The effects can be allowed a predominant role, or they may be repressible and made secondary to other chosen activities."
    override val verticalSign: String = "+\n+"
}
```

**Description**: Indicates that the drug's nature is clearly apparent but its effects can still be repressed.

### PLUS_THREE (+++
```kotlin
PLUS_THREE {
    override val sign: String = "+++"
    override val rawValue: String = "threePlus"
    override val shortDescription: String = "totally engaged, ignoring no longer an option"
    override val longDescription: String = "Not only are the chronology and the nature of a drug's action quite clear, but ignoring its action is no longer an option. The subject is totally engaged in the experience, for better or worse."
    override val verticalSign: String = "+\n+\n+"
}
```

**Description**: Indicates that the subject is fully engaged in the experience and cannot ignore its effects.

### PLUS_FOUR (++++)
```kotlin
PLUS_FOUR {
    override val sign: String = "++++"
    override val rawValue: String = "fourPlus"
    override val shortDescription: String = "rare and precious transcendental state"
    override val longDescription: String = "A rare and precious transcendental state, which has been called a \"peak experience,\" a \"religious experience,\" \"divine transformation,\" a \"state of Samadhi\" and many other names in other cultures. It is not connected to the +1, +2, and +3 of the measuring of a drug's intensity. It is a state of bliss, a participation mystique, a connectedness with both the interior and exterior universes, which has come about after the ingestion of a psychedelic drug, but which is not necessarily repeatable with a subsequent ingestion of that same drug. If a drug (or technique or process) were ever to be discovered which would consistently produce a plus four experience in all human beings, it is conceivable that it would signal the ultimate evolution, and perhaps the end, of the human experiment."
    override val verticalSign: String = "+\n+\n+\n+"
}
```

**Description**: Indicates a rare and precious state of consciousness often associated with profound personal growth and spiritual experiences.

## Usage

This class is used within the context of psychedelic research to document and analyze drug effects. It provides a standardized way to record subjective experience levels, which can be useful for comparing different drugs and doses, as well as tracking changes in experience over time.

To use this class, simply reference one of its predefined values (e.g., `ShulginRatingOption.PLUS`) and access its properties to obtain the relevant information about the psychedelic experience rating.

