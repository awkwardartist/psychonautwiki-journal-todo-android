# getTimeDifferenceText.kt

## Overview
The `getTimeDifferenceText` function calculates and returns a human-readable string representing the difference between two `Instant` objects. This function is useful for displaying time differences in user-friendly formats, such as days, weeks, months, or years.

## Classes/Types
No specific classes or types are defined within this file. All functionality is encapsulated within the `getTimeDifferenceText` function.

## Methods/Functions
### getTimeDifferenceText(fromInstant: Instant, toInstant: Instant): String
- **Description**: Calculates and returns a human-readable string representing the time difference between two `Instant` objects.
  
  - **Parameters**:
    - `fromInstant`: The start date and time as an `Instant`.
    - `toInstant`: The end date and time as an `Instant`.
  
  - **Returns**:
    A `String` that represents the time difference in a human-readable format, such as "2 days", "1 week", etc.
  
  - **Implementation**:
    - The function first calculates the duration between `fromInstant` and `toInstant` using `Duration.between`.
    - It then converts this duration into minutes, hours, days, weeks, months, or years based on the magnitude of the difference.
    - Depending on the calculated difference, it returns a string formatted accordingly. For example:
      - If the difference is more than 2 years, it returns the number of years as "X years".
      - If the difference is more than 3 months but less than or equal to 2 years, it returns the number of months as "X months".
      - If the difference is more than 4 weeks but less than or equal to 3 months, it returns the number of weeks as "X weeks".
      - If the difference is more than 2 days but less than or equal to 4 weeks, it returns the number of days as "X days".
      - If the difference is more than 3 hours but less than or equal to 2 days, it returns the number of hours as "X hours".
      - Otherwise, it returns the number of minutes as "X minutes".

This function provides a flexible way to display time differences in various units based on their magnitude, making it suitable for various use cases within the application.

