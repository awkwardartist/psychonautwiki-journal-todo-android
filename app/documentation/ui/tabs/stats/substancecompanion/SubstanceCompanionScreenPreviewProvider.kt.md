## Overview

The `SubstanceCompanionScreenPreviewProvider.kt` file contains a preview provider for the substance companion screen in the PsychonautWiki Journal application. This file is part of the Hilt library, which is used to manage dependency injection in Android applications.

## Classes/Types

### SubstanceCompanionRoute

This class represents the route for the substance companion screen. It takes two parameters: `substanceName` and `consumerName`. The class has a property `substanceName` that stores the name of the substance, and a property `consumerName` that stores the name of the consumer.

## Methods/Functions

### timeUntilText()

This function calculates the time until the next substance ingestion based on the current time and the last known ingestion time. It takes two parameters: `currentTime` (the current time) and `lastIngestionTime` (the time of the last known ingestion). The function returns a string representing the time until the next ingestion.

### getTimeDifferenceText()

This function calculates the time difference between two given times and returns a string representing that difference. It takes two parameters: `fromInstant` (the starting time) and `toInstant` (the ending time).

## Dependencies

- Hilt library for dependency injection
- Kotlin coroutines for asynchronous programming
- Android Jetpack Compose for UI development

