# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/experience/components/TimeOrDurationText.kt

## Overview

This Kotlin file contains Composable functions to display time or duration text for entries in a journal, supporting different display options such as regular time, relative to now, between times, and relative to the start of a series. The file also includes helper functions to format time and duration.

## Classes/Types

### None defined within this file.

## Methods/Functions

### `IngestionTimeOrDurationText`

**Description:**
A Composable function that displays either a single time or a range of times based on the provided options.

**Parameters:**
- `time`: The start time for an entry.
- `endTime`: Optional end time for an entry, if applicable.
- `index`: Index of the current entry in a list.
- `timeDisplayOption`: Enum specifying how the time should be displayed.
- `allTimesSortedMap`: A sorted list of all times used to calculate relative durations.

**Returns:**
- None

### `RegularTimeOrRangeText`

**Description:**
A private helper function that formats the start and end times into a readable string, either as individual times or as a range.

**Parameters:**
- `time`: The start time for an entry.
- `endTime`: Optional end time for an entry.
- `textStyle`: Style to apply to the text.

**Returns:**
- None

### `NoteOrRatingTimeOrDurationText`

**Description:**
A Composable function similar to `IngestionTimeOrDurationText`, but specifically designed for notes and ratings where a start time is required.

**Parameters:**
- `time`: The time for a note or rating.
- `timeDisplayOption`: Enum specifying how the time should be displayed.
- `firstIngestionTime`: The first time in the series, used for relative calculations.

**Returns:**
- None

### `TimeRelativeToNowText`

**Description:**
A Composable function that displays a time as being either in the past or future relative to the current time.

**Parameters:**
- `time`: The time to display.
- `style`: Optional style to apply to the text (defaults to MaterialTheme bodyMedium).

**Returns:**
- None

## Helper Functions

### `getDurationText`

**Description:**
Calculates and returns a human-readable string representing the duration between two times.

**Parameters:**
- `fromInstant`: The start time.
- `toInstant`: The end time.

**Returns:**
- A string describing the duration.

## Usage Context

To use these functions, you would typically call them within your Jetpack Compose UI to display times or durations in a user-friendly manner. The `timeDisplayOption` parameter allows for flexibility in how the time is presented based on the needs of your application.

