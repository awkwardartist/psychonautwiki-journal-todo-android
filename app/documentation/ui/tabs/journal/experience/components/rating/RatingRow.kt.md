# RatingRow.kt

## Overview

The `RatingRow.kt` file contains Kotlin code for various UI components related to displaying ratings. Specifically, it includes composable functions for rendering rating rows with different layouts and preview data.

This file is part of the PsychonautWiki Journal application and follows the guidelines for contributing to open-source projects, including adhering to the GNU General Public License as published by the Free Software Foundation.

## Classes/Types

### RatingRow

- **Composable**: This composable function represents a generic rating row with customizable content and rating sign.
- **Parameters**:
  - `modifier`: A `Modifier` for customizing the layout of this row.
  - `ratingSign`: A string representing the rating sign, displayed at the end of the row.
  - `content`: A lambda expression that provides the content to be displayed in the rating row.

### TimedRatingRow

- **Composable**: This composable function represents a rating row with time information.
- **Parameters**:
  - `modifier`: A `Modifier` for customizing the layout of this row.
  - `ratingSign`: A string representing the rating sign, displayed at the end of the row.
  - `timeText`: A lambda expression that provides the time text to be displayed in the rating row.

### OverallRatingRow

- **Composable**: This composable function represents a rating row for overall ratings with pre-defined content.
- **Parameters**:
  - `modifier`: A `Modifier` for customizing the layout of this row.
  - `ratingSign`: A string representing the rating sign, displayed at the end of the row.

## Methods/Functions

### RatingRow

```kotlin
@Composable
private fun RatingRow(
    modifier: Modifier = Modifier,
    ratingSign: String,
    content: @Composable () -> Unit
)
```

- **Description**: A private composable function to create a generic rating row with customizable content and rating sign.
- **Parameters**:
  - `modifier`: A `Modifier` for customizing the layout of this row (default is `Modifier`).
  - `ratingSign`: A string representing the rating sign, displayed at the end of the row.
  - `content`: A lambda expression that provides the content to be displayed in the rating row.

### TimedRatingRow

```kotlin
@Composable
fun TimedRatingRow(
    modifier: Modifier = Modifier,
    ratingSign: String,
    timeText: @Composable () -> Unit
)
```

- **Description**: A composable function to create a rating row with time information.
- **Parameters**:
  - `modifier`: A `Modifier` for customizing the layout of this row (default is `Modifier`).
  - `ratingSign`: A string representing the rating sign, displayed at the end of the row.
  - `timeText`: A lambda expression that provides the time text to be displayed in the rating row.

### OverallRatingRow

```kotlin
@Composable
fun OverallRatingRow(
    modifier: Modifier = Modifier,
    ratingSign: String
)
```

- **Description**: A composable function to create a rating row for overall ratings with pre-defined content.
- **Parameters**:
  - `modifier`: A `Modifier` for customizing the layout of this row (default is `Modifier`).
  - `ratingSign`: A string representing the rating sign, displayed at the end of the row.

### RatingRowPreview

```kotlin
@Preview
@Composable
private fun RatingRowPreview(@PreviewParameter(RatingPreviewProvider::class) rating: ShulginRating)
```

- **Description**: A preview function to display a `RatingRow` composable with sample data.
- **Parameters**:
  - `rating`: An instance of `ShulginRating` used as sample data for the preview.

## Notes

The code includes composable functions that utilize MaterialTheme from Jetpack Compose for styling. It also uses a preview parameter provider (`RatingPreviewProvider`) to supply sample data for previews.

To modify or extend this file, ensure you follow the project's coding standards and review guidelines.

