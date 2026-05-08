```markdown
# RoaDuration.kt

## Overview

The `RoaDuration` class represents the duration of effects associated with a specific route of administration (R.O.A.) for a substance. It includes various durations such as onset, comeup, peak, offset, total, and afterglow.

## Classes/Types

### RoaDuration

Represents the duration of effects for a given R.O.A.

**Properties:**

- **onset:** `DurationRange?` - The duration from when the substance is administered to when the effects begin.
- **comeup:** `DurationRange?` - The duration from when the effects begin to when they reach their peak intensity.
- **peak:** `DurationRange?` - The duration during which the substance's effects are at their most intense.
- **offset:** `DurationRange?` - The duration from when the effects start to decrease until they fully wear off.
- **total:** `DurationRange?` - The overall duration of the substance's effects from administration to full offset.
- **afterglow:** `DurationRange?` - Any lingering effects or residual feelings after the total duration has passed.

## Methods/Functions

### Overview

The class does not contain any methods or functions. It is a data model to hold various duration ranges for different stages of a substance's effects.

## Additional Context

To fully utilize the `RoaDuration` class, you would need context on how it interacts with other classes and how these durations are used in the application to provide users with accurate information about a substance's effects. This might include integration with the `AdministrationRoute`, `RoaDose`, and potentially other classes that handle substance data.

For example, you might use this class in conjunction with a method that calculates the expected duration of effects based on the R.O.A., dose, and other factors. Additional context would be needed to implement such functionality.
```

