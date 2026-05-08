# AdministrationRoute.kt

## Overview

The `AdministrationRoute` class defines a set of routes through which substances can be administered. Each route has specific properties such as display text, description, article URL, and whether it is an injection method. This enumeration provides detailed information about various ways to consume psychoactive substances, including their associated risks and methods of use.

## Classes/Types

### AdministrationRoute

The `AdministrationRoute` enum class contains the following properties:

- **displayText**: A string representing the display text for the route.
- **description**: A string providing a brief description of the route.
- **articleText**: A string containing detailed information about the route, typically from external sources like PsychonautWiki or TripSit.
- **isInjectionMethod**: A boolean indicating whether the route involves injecting the substance.
- **color**: An `AdaptiveColor` enum value representing the color associated with the route.

The class also includes a companion object with URLs to relevant articles on safer administration methods:

- **PSYCHONAUT_WIKI_ARTICLE_URL**: URL to the PsychonautWiki article on route of administration.
- **SAFER_INJECTION_ARTICLE_URL**: URL to the TripSit article on safer injection guides.
- **SAFER_PLUGGING_ARTICLE_URL**: URL to the TripSit article on plugging, a method of consuming substances.

## Methods/Functions

### AdministrationRoute.values()

This function returns an array containing all the values in the `AdministrationRoute` enum class.

### AdministrationRoute.valueOf(String name)

This function takes a string representing the name of an enumeration constant and returns the corresponding enumeration constant. If the specified name does not exist, an `IllegalArgumentException` is thrown.

## Example Usage

Here's an example of how you might use this enumeration in your code:

```kotlin
import com.isaakhanimann.journal.data.substances.AdministrationRoute

fun main() {
    val route = AdministrationRoute.SUBCUTANEOUS
    println("Display Text: ${route.displayText}")
    println("Description: ${route.description}")
    println("Article Text: ${route.articleText}")
    println("Is Injection Method: ${route.isInjectionMethod}")
    println("Color: ${route.color}")
}
```

This code will output the details of the "Subcutaneous" route, including its display text, description, article URL, injection status, and color.

