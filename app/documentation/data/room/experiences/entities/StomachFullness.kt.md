## Overview

The `StomachFullness.kt` file in the PsychonautWiki Journal project contains an enum class named `StomachFullness` which represents different levels of stomach fullness before consuming a substance. This enum is annotated with `@Serializable(with = StomachFullnessSerializer::class)` to enable serialization, and it includes properties like `text`, `serialized`, and `onsetDelayForOralInHours`. The file also contains an object named `StomachFullnessSerializer` that implements the `KSerializer<StomachFullness>` interface for serializing and deserializing instances of `StomachFullness`.

## Classes/Types

### StomachFullness

**Description:** Enum class representing different levels of stomach fullness before consuming a substance.

**Properties:**
- **text:** A string describing the level of stomach fullness.
- **serialized:** A string used for serialization and deserialization purposes.
- **onsetDelayForOralInHours:** A double representing the delay in onset time in hours when taking the substance orally after reaching this fullness level.

**Enum Values:**
1. **EMPTY:** Stomach is empty.
   - `text`: "Empty"
   - `serialized`: "EMPTY"
   - `onsetDelayForOralInHours`: 0.0

2. **QUARTER_FULL:** Stomach is a quarter full.
   - `text`: "Quarter full"
   - `serialized`: "QUARTERFULL"
   - `onsetDelayForOralInHours`: 0.75

3. **HALF_FULL:** Stomach is half full.
   - `text`: "Half full"
   - `serialized`: "HALFFULL"
   - `onsetDelayForOralInHours`: 1.5

4. **FULL:** Stomach is full.
   - `text`: "Full"
   - `serialized`: "FULL"
   - `onsetDelayForOralInHours`: 3.0

5. **VERY_FULL:** Stomach is very full.
   - `text`: "Very full"
   - `serialized`: "VERYFULL"
   - `onsetDelayForOralInHours`: 4.0

### StomachFullnessSerializer

**Description:** An object that implements the `KSerializer<StomachFullness>` interface to serialize and deserialize instances of `StomachFullness`.

**Properties:**
- **descriptor:** A serial descriptor for the type being serialized or deserialized.

**Methods/Functions:**
1. **serialize(encoder: Encoder, value: StomachFullness):** Serializes the given `value` of type `StomachFullness`.
2. **deserialize(decoder: Decoder): StomachFullness** Deserializes the current input to a `StomachFullness` value.

## Methods/Functions

### serialize(encoder: Encoder, value: StomachFullness)

**Description:** Serializes the given `value` of type `StomachFullness`.

**Parameters:**
- **encoder:** The encoder used for serialization.
- **value:** The `StomachFullness` value to be serialized.

**Returns:**
- No return value.

### deserialize(decoder: Decoder): StomachFullness

**Description:** Deserializes the current input to a `StomachFullness` value.

**Parameters:**
- **decoder:** The decoder used for deserialization.

**Returns:**
- A `StomachFullness` value representing the deserialized data.

