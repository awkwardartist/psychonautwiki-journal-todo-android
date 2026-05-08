## Overview

The `TopLevelRoute.kt` file contains definitions for top-level routes within an application, along with their associated icons and names. This provides a centralized place to manage navigation throughout the app.

This file includes:
- A `data class` representing each top-level route.
- A list of all available top-level routes.

## Classes/Types

### TopLevelRoute<T : Any>

A data class that represents a single top-level route in the application.

**Properties:**
- `name`: A string representing the name of the route.
- `route`: An instance of type `T`, which represents the specific route implementation.
- `filledIcon`: An `ImageVector` representing the filled icon for the route, used when the tab is active or selected.
- `outlinedIcon`: An `ImageVector` representing the outlined (or default) icon for the route, used when the tab is inactive.

**Example Usage:**
```kotlin
TopLevelRoute(
    name = "Stats",
    route = StatsTopLevelRoute,
    filledIcon = Icons.Filled.BarChart,
    outlinedIcon = Icons.Outlined.BarChart
)
```

## Methods/Functions

### topLevelRoutes List

A constant list of `TopLevelRoute` instances, representing all the top-level routes in the application.

**Example Usage:**
```kotlin
val topLevelRoutes = listOf(
    TopLevelRoute("Stats", StatsTopLevelRoute, Icons.Filled.BarChart, Icons.Outlined.BarChart),
    TopLevelRoute("Journal", JournalTopLevelRoute, Icons.Filled.Book, Icons.Outlined.Book),
    // ...
)
```

## Types

### @Serializable

The `@Serializable` annotation from the Kotlin Serialization library is applied to several types in this file. This allows these types to be easily serialized and deserialized, which can be useful for data persistence or network communication.

**Example Usage:**
```kotlin
@Serializable
object StatsTopLevelRoute
```

## Summary

The `TopLevelRoute.kt` file provides a structured way to define and manage top-level routes in an Android application. It includes a data class for representing individual routes, along with a list of all available routes. This helps maintain consistency and makes it easier to update or modify navigation throughout the app.

