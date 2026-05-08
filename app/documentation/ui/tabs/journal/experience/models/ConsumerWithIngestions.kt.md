## Overview

The `ConsumerWithIngestions.kt` file contains a data class that represents an individual who consumed substances during a session, including details of their ingestion events.

## Classes/Types

### ConsumerWithIngestions

- **Description**: Represents an individual who has consumed substances during one or more sessions.
- **Properties**:
  - `consumerName`: A string representing the name of the consumer.
  - `ingestionElements`: A list of `IngestionElement` objects that represent each ingestion event.
  - `dataForEffectLines`: A list of `DataForOneEffectLine` objects used to display data related to effects.
  - `timelineDisplayOption`: An enum representing how the timeline should be displayed.

## Methods/Functions

No methods are defined within the `ConsumerWithIngestions` class. It is purely a data class, used for storing and transporting data between different parts of the application.

