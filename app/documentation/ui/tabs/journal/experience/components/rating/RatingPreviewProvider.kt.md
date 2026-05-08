# RatingPreviewProvider.kt

## Overview

`RatingPreviewProvider.kt` contains a class named `RatingPreviewProvider`. This class serves as a provider for preview parameters used in Compose UI testing for rating-related components.

The primary purpose of this file is to generate preview instances of `ShulginRating`, which are utilized in the UI previews to ensure that the UI renders correctly with various data points. The file includes detailed documentation for each part of the code, ensuring clarity and maintainability.

## Classes/Types

### RatingPreviewProvider

- **Type**: Class
- **Package**: `com.isaakhanimann.journal.ui.tabs.journal.experience.components.rating`

#### Description

`RatingPreviewProvider` is a subclass of `PreviewParameterProvider<ShulginRating>`. It provides preview instances of `ShulginRating` for use in Compose UI previews. The ratings are generated using the `getInstant()` function to set specific dates and times.

#### Example Usage

```kotlin
@Preview
@Composable
private fun RatingRowPreview(@PreviewParameter(RatingPreviewProvider::class) rating: ShulginRating) {
    RatingRow(
        ratingSign = rating.option.sign,
        modifier = Modifier.fillMaxWidth()
    ) {
        Text(text = "Sat 7:34")
    }
}
```

## Methods/Functions

### values

- **Type**: Sequence<ShulginRating>
- **Description**: Generates a sequence of `ShulginRating` objects for preview purposes.
- **Return Value**: A `Sequence<ShulginRating>` containing two ratings with different options and times.

#### Example Output

```kotlin
sequenceOf(
    ShulginRating(
        time = getInstant(
            year = 2022,
            month = 2,
            day = 20,
            hourOfDay = 1,
            minute = 15
        )!!,
        creationDate = getInstant(
            year = 2022,
            month = 2,
            day = 20,
            hourOfDay = 1,
            minute = 15
        )!!,
        option = ShulginRatingOption.THREE_PLUS,
        experienceId = 0
    ),
    ShulginRating(
        time = getInstant(
            year = 2022,
            month = 2,
            day = 20,
            hourOfDay = 3,
            minute = 15
        )!!,
        creationDate = getInstant(
            year = 2022,
            month = 2,
            day = 20,
            hourOfDay = 3,
            minute = 15
        )!!,
        option = ShulginRatingOption.TWO_PLUS,
        experienceId = 0
    ),
)
```

### getInstant

- **Type**: suspend fun (year: Int, month: Int, day: Int, hourOfDay: Int, minute: Int): Instant?
- **Description**: A suspend function that returns an `Instant` object representing a specific date and time. The function is used to set the `time` and `creationDate` properties of the `ShulginRating` objects.
- **Parameters**:
  - `year`: An integer representing the year.
  - `month`: An integer representing the month (1-12).
  - `day`: An integer representing the day of the month (1-31).
  - `hourOfDay`: An integer representing the hour of the day (0-23).
  - `minute`: An integer representing the minute of the hour (0-59).

#### Example Usage

```kotlin
val instant = getInstant(
    year = 2022,
    month = 2,
    day = 20,
    hourOfDay = 1,
    minute = 15
)
```

## Conclusion

`RatingPreviewProvider.kt` provides a simple and effective way to generate preview instances of `ShulginRating` for use in Compose UI previews. By using this class, developers can easily test the rendering of rating-related components with different data points without the need for additional setup.

