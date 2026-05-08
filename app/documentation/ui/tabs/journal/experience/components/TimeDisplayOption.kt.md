# TimeDisplayOption.kt

## Overview

The `TimeDisplayOption.kt` file contains definitions for options related to displaying times or durations in a human-readable format within an application. These options are crucial for user interface elements that need to show when events occurred relative to different reference points, such as the current time, the start of a session, or between multiple occurrences.

This file provides clear and concise representations of different ways to display temporal data, making it easier to manage and present time-related information in a meaningful way to users. The classes and methods within this file are designed to facilitate the presentation of times and durations in a user-friendly manner, ensuring that the application remains intuitive and accessible.

## Classes/Types

### TimeDisplayOption

**Purpose:** Defines an enumeration representing different options for displaying times or durations. This class is used extensively throughout the application to determine how time data should be presented to the user.

#### Enum Constants

- **RELATIVE_TO_NOW**
  - **Description:** Displays the time relative to the current moment. For example, "10 minutes ago" or "in 3 hours."
  
- **RELATIVE_TO_START**
  - **Description:** Displays the time relative to the start of an event or session. For example, "2 days after start" or "3 weeks before start."
  
- **TIME_BETWEEN**
  - **Description:** Displays the duration between consecutive times. For example, "1 hour and 30 minutes after previous."

## Methods/Functions

There are no methods or functions defined directly in this file. Instead, it provides a set of constants that can be used to configure how time-related data is displayed across different parts of the application.

### Context

For further details on how these options are utilized within the application, refer to the relevant sections of the codebase where `TimeDisplayOption` is imported and used. The context of each use case will help provide a clearer understanding of how the specific option impacts the user interface.

