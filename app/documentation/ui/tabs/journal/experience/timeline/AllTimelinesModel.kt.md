# AllTimelinesModel.kt

## Overview
The `AllTimelinesModel` class serves as a central repository for managing timelines related to drug experiences within an application. It encapsulates data for multiple timelines, each represented by a list of `WeightedLine` objects. The class provides methods and properties to manipulate this data, such as adding new lines, retrieving all lines, and calculating the total horizontal weight.

## Classes/Types
### AllTimelinesModel
This is the main class that manages the timelines for drug experiences.

#### Properties
- `timelines: List<List<WeightedLine>>`: A list of lists containing `WeightedLine` objects representing different timelines. Each inner list corresponds to a specific timeline.

#### Methods/Functions
1. **constructor()**
   - Initializes an empty instance of `AllTimelinesModel`.

2. **addTimeline(timeline: List<WeightedLine>)**
   - Adds a new timeline to the model.
   - Parameters:
     - `timeline: List<WeightedLine>`: The timeline to be added.

3. **getTimelines(): List<List<WeightedLine>>**
   - Returns the list of all timelines managed by the model.
   - Return Type: `List<List<WeightedLine>>`

4. **calculateTotalHorizontalWeight(): Float**
   - Calculates the total horizontal weight of all lines across all timelines.
   - Return Type: `Float`

5. **getTimelineCount(): Int**
   - Returns the number of timelines currently managed by the model.
   - Return Type: `Int`

6. **clearTimelines()**
   - Clears all timelines from the model, resetting it to an empty state.

## Detailed Class Explanation

### Constructor
```kotlin
constructor()
```
Initializes a new instance of `AllTimelinesModel` with no timelines.

### addTimeline(timeline: List<WeightedLine>)
```kotlin
fun addTimeline(timeline: List<WeightedLine>)
```
Adds a new timeline to the model.
- Parameters:
  - `timeline: List<WeightedLine>`: The timeline to be added.

### getTimelines()
```kotlin
fun getTimelines(): List<List<WeightedLine>>
```
Returns the list of all timelines managed by the model.
- Return Type: `List<List<WeightedLine>>`

### calculateTotalHorizontalWeight()
```kotlin
fun calculateTotalHorizontalWeight(): Float
```
Calculates the total horizontal weight of all lines across all timelines.
- Return Type: `Float`

### getTimelineCount()
```kotlin
fun getTimelineCount(): Int
```
Returns the number of timelines currently managed by the model.
- Return Type: `Int`

### clearTimelines()
```kotlin
fun clearTimelines()
```
Clears all timelines from the model, resetting it to an empty state.

## Usage Context
To use the `AllTimelinesModel` class, you would typically create an instance of it and call its methods to manage drug experience timelines within your application. This could be part of a larger system for tracking and visualizing drug effects over time.

For example:
```kotlin
val timelineModel = AllTimelinesModel()
timelineModel.addTimeline(listOf(
    WeightedLine(Instant.now(), null, 0.5f, 1.0f),
    WeightedLine(Instant.now().plusSeconds(3600), Instant.now().plusSeconds(7200), 0.7f, 0.8f)
))
val totalWeight = timelineModel.calculateTotalHorizontalWeight()
println("Total Horizontal Weight: $totalWeight")
```

This example demonstrates adding a new timeline with two lines and calculating the total horizontal weight of all lines in the model.

