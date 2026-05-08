# StatsViewModel.kt Documentation

## Overview

`StatsViewModel.kt` contains a ViewModel responsible for managing the state of statistical data displayed in various UI components within an Android application. The ViewModel is tasked with fetching and processing data, handling user interactions, and providing the necessary data to UI components.

The main responsibilities of this ViewModel are:

1. Managing the display options (e.g., time periods).
2. Fetching relevant statistics for the selected period.
3. Providing color-coded data for visual representation.
4. Supporting consumer-specific filtering.
5. Handling the logic for calculating total doses and routes taken.

## Classes/Types

### StatsViewModel

The `StatsViewModel` class is a subclass of `AndroidViewModel`, which provides a lifecycle-aware reference to the application context. It contains various properties and methods that facilitate data processing, state management, and interaction with UI components.

#### Properties

- **optionFlow**: A flow that emits the current display option selected by the user.
- **startDateTextFlow**: A flow that emits the text representing the start date of the selected period.
- **statsFlowItem**: A flow that emits a list of statistical items based on the selected period and consumer name.
- **areThereAnyIngestionsFlow**: A flow that indicates whether there are any ingestions in the database.
- **sortedConsumerNamesFlow**: A flow that provides a sorted list of unique consumer names.

#### Methods

- **getColorCountsForExperiences**: A private method that processes a list of experiences and returns a list of color counts based on substance names.
- **getRouteCounts**: A private method that calculates the route counts for a given list of ingestions.
- **getTotalDose**: A private method that calculates the total dose from a list of ingestions.

### StatsModel

The `StatsModel` data class represents the state of the ViewModel and contains information necessary for UI components to display the statistics correctly. It includes properties such as:

- **selectedOption**: The current selected option (e.g., time period).
- **areThereAnyIngestions**: A boolean indicating if there are any ingestions.
- **startDateText**: The text representing the start date of the selected period.
- **statItems**: A list of statistical items.
- **chartBuckets**: A list of color counts for visual representation.
- **consumerName**: The name of the consumer whose data is being displayed.

### ColorCount

The `ColorCount` data class represents a count associated with a specific color, typically used in visualizations to differentiate between substances.

### StatItem

The `StatItem` data class encapsulates statistics related to a substance, including:

- **substanceName**: The name of the substance.
- **color**: The color associated with the substance for visual representation.
- **experienceCount**: The number of experiences involving the substance.
- **ingestionCount**: The total number of ingestions for the substance.
- **routeCounts**: A list of route counts for different administration routes.
- **totalDose**: Information about the total dose, including its value and units.

### RouteCount

The `RouteCount` data class represents a count associated with a specific administration route, typically used in visualizations to differentiate between routes.

### TotalDose

The `TotalDose` data class encapsulates information about the total dose, including:

- **dose**: The numerical value of the dose.
- **units**: The units in which the dose is measured.
- **isEstimate**: A boolean indicating if the dose is an estimate.
- **estimatedDoseStandardDeviation**: The standard deviation of the estimated dose.

### TimePickerOption

The `TimePickerOption` enum represents different display options for time periods, including:

- **displayText**: A short text representation of the option (e.g., "7D" for "7 days").
- **longDisplayText**: A longer, more descriptive text representation.
- **tabIndex**: The index used to identify the tab associated with this option.
- **bucketCount**: The number of buckets or divisions in the selected time period.
- **oneBucketSize**: The size of each bucket in terms of a `Period`.
- **allBucketSizes**: The total duration covered by all buckets.

## Methods/Functions

The main methods within `StatsViewModel` include:

- **getColorCountsForExperiences**
- **getRouteCounts**
- **getTotalDose**

These methods are essential for processing data and calculating necessary statistics, which are then emitted through flows to be consumed by UI components.

Additionally, the ViewModel is responsible for managing reactive state using Kotlin Flows, allowing it to reactively update the UI when underlying data changes. This ensures that the UI remains synchronized with the ViewModel's state.

