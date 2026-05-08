# SubstanceParser.kt

## Overview

The `SubstanceParser` class in the `com.isaakhanimann.journal.data.substances.parse` package is designed to parse JSON data representing substances and their properties into a structured format. This class provides methods to convert raw JSON strings into instances of the `SubstanceFile` class, which encapsulates information about various substances.

## Classes/Types

### SubstanceParser

The main class in this file, `SubstanceParser`, implements the `SubstanceParserInterface`. It contains several nested classes and helper functions to parse different parts of the JSON data related to substance properties such as common names, tolerances, routes of administration (ROAs), durations, and bioavailability.

### Subclasses

- **Interactions**: Represents potential interactions between substances.
  - Fields:
    - `dangerous`: A list of dangerous substance interactions.
    - `unsafe`: A list of unsafe substance interactions.
    - `uncertain`: A list of uncertain substance interactions.

- **RoaDose**: Describes the dose range for a route of administration.
  - Fields:
    - `units`: The units of measurement (e.g., mg, mg/kg).
    - `lightMin`: Minimum dose for a light effect.
    - `commonMin`: Minimum dose for a common effect.
    - `strongMin`: Minimum dose for a strong effect.
    - `heavyMin`: Minimum dose for a heavy effect.

- **RoaDuration**: Describes the duration of effects for a route of administration.
  - Fields:
    - `onset`: Duration range from onset to peak effects.
    - `comeup`: Duration range from intake to initial peak effects.
    - `peak`: Duration range at peak effects.
    - `offset`: Duration range from peak to offset effects.
    - `total`: Total duration from intake to offset effects.
    - `afterglow`: Duration of residual effects after the offset.

- **DurationRange**: Represents a duration range with minimum and maximum values.
  - Fields:
    - `min`: Minimum duration value.
    - `max`: Maximum duration value.
    - `units`: The units of measurement for duration (e.g., hours, minutes).

- **Bioavailability**: Describes the bioavailability of a substance.
  - Fields:
    - `min`: Minimum bioavailability percentage.
    - `max`: Maximum bioavailability percentage.

### Nested Helper Functions

The class contains several nested helper functions that assist in parsing specific parts of the JSON data:

- **parseInteractions**
- **parseCommonNames**
- **parseJsonArrayToStringArray**
- **parseTolerance**
- **parseRoas**
- **parseRoa**
- **parseRoaDose**
- **parseRoaDuration**
- **parseDurationRange**
- **parseBioavailability**
- **parseCrossTolerances**

## Methods/Functions

### parseSubstanceFile

```kotlin
fun parseSubstanceFile(string: String): SubstanceFile
```

**Description:** Parses a JSON string representing substance data and returns a `SubstanceFile` object.

**Parameters:**
- `string`: A JSON string containing substance data.

**Return Value:** A `SubstanceFile` object with parsed information about the substances.

### extractSubstanceString

```kotlin
fun extractSubstanceString(string: String): String?
```

**Description:** Extracts the substance data from a raw JSON string. This function is useful if the entire JSON data includes additional non-substance-related information.

**Parameters:**
- `string`: A JSON string containing substance data embedded within other data.

**Return Value:** The extracted substance data as a JSON string, or null if extraction fails.

## Detailed Parsing Logic

The `SubstanceParser` class uses a combination of nested helper functions and JSON parsing techniques to extract specific fields from the input JSON string. Each field is parsed into its corresponding object, ensuring that all relevant information is accurately represented in the final `SubstanceFile` object.

For example, when parsing ROAs, the `parseRoa` function extracts details such as route name, dose range, duration ranges, and bioavailability. Similarly, the `parseInteractions` function handles parsing of potential substance interactions.

Overall, the `SubstanceParser` class provides a robust framework for converting JSON data into a structured format that can be easily used in applications dealing with substance information.

