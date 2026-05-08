## Overview

The `Theme.kt` file is part of a Kotlin-based Android application, specifically for managing themes within the PsychonautWiki Journal project. It defines color schemes for both light and dark modes, along with constants related to layout padding, and provides a Composable function to apply these settings.

This document covers the structure, classes/types, methods/functions, and associated documentation for `Theme.kt`.

## Classes/Types

### ColorScheme Definitions

- **LightColors**: A pre-defined color scheme specifically tailored for light theme. It includes primary colors, secondary colors, tertiary colors, error colors, background colors, surface colors, outline colors, and other UI-related hues.

- **DarkColors**: Similar to `LightColors`, but designed for the dark theme.

### Composable Function

- **JournalTheme**: A Composable function that dynamically selects between light and dark themes based on the device's current mode. It also handles dynamic color theming if the API level is 31 (Android S) or higher, enhancing visual adaptability to ambient lighting conditions.

## Methods/Functions

### LightColors Initialization

```kotlin
private val LightColors = lightColorScheme(
    primary = md_theme_light_primary,
    onPrimary = md_theme_light_onPrimary,
    primaryContainer = md_theme_light_primaryContainer,
    onPrimaryContainer = md_theme_light_onPrimaryContainer,
    secondary = md_theme_light_secondary,
    onSecondary = md_theme_light_onSecondary,
    secondaryContainer = md_theme_light_secondaryContainer,
    onSecondaryContainer = md_theme_light_onSecondaryContainer,
    tertiary = md_theme_light_tertiary,
    onTertiary = md_theme_light_onTertiary,
    tertiaryContainer = md_theme_light_tertiaryContainer,
    onTertiaryContainer = md_theme_light_onTertiaryContainer,
    error = md_theme_light_error,
    errorContainer = md_theme_light_errorContainer,
    onError = md_theme_light_onError,
    onErrorContainer = md_theme_light_onErrorContainer,
    background = md_theme_light_background,
    onBackground = md_theme_light_onBackground,
    surface = md_theme_light_surface,
    onSurface = md_theme_light_onSurface,
    surfaceVariant = md_theme_light_surfaceVariant,
    onSurfaceVariant = md_theme_light_onSurfaceVariant,
    outline = md_theme_light_outline,
    inverseOnSurface = md_theme_light_inverseOnSurface,
    inverseSurface = md_theme_light_inverseSurface,
    inversePrimary = md_theme_light_inversePrimary,
    surfaceTint = md_theme_light_surfaceTint,
    outlineVariant = md_theme_light_outlineVariant,
    scrim = md_theme_light_scrim,
)
```

- **Purpose**: Initializes the color scheme for light themes. It uses predefined constants from `Color.kt` to set various properties of the theme.

### DarkColors Initialization

```kotlin
private val DarkColors = darkColorScheme(
    primary = md_theme_dark_primary,
    onPrimary = md_theme_dark_onPrimary,
    primaryContainer = md_theme_dark_primaryContainer,
    onPrimaryContainer = md_theme_dark_onPrimaryContainer,
    secondary = md_theme_dark_secondary,
    onSecondary = md_theme_dark_onSecondary,
    secondaryContainer = md_theme_dark_secondaryContainer,
    onSecondaryContainer = md_theme_dark_onSecondaryContainer,
    tertiary = md_theme_dark_tertiary,
    onTertiary = md_theme_dark_onTertiary,
    tertiaryContainer = md_theme_dark_tertiaryContainer,
    onTertiaryContainer = md_theme_dark_onTertiaryContainer,
    error = md_theme_dark_error,
    errorContainer = md_theme_dark_errorContainer,
    onError = md_theme_dark_onError,
    onErrorContainer = md_theme_dark_onErrorContainer,
    background = md_theme_dark_background,
    onBackground = md_theme_dark_onBackground,
    surface = md_theme_dark_surface,
    onSurface = md_theme_dark_onSurface,
    surfaceVariant = md_theme_dark_surfaceVariant,
    onSurfaceVariant = md_theme_dark_onSurfaceVariant,
    outline = md_theme_dark_outline,
    inverseOnSurface = md_theme_dark_inverseOnSurface,
    inverseSurface = md_theme_dark_inverseSurface,
    inversePrimary = md_theme_dark_inversePrimary,
    surfaceTint = md_theme_dark_surfaceTint,
    outlineVariant = md_theme_dark_outlineVariant,
    scrim = md_theme_dark_scrim,
)
```

- **Purpose**: Initializes the color scheme for dark themes. Similar to `LightColors`, but adapted for darker environments.

### JournalTheme Composable Function

```kotlin
@Composable
fun JournalTheme(
    content: @Composable () -> Unit
) {
    val isDarkTheme = isSystemInDarkTheme()
    val useDynamic = Build.VERSION.SDK_INT >= Build.VERSION_CODES.S
    val colorScheme = if (useDynamic) {
        val context = LocalContext.current
        if (isDarkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
    } else {
        if (isDarkTheme) DarkColors else LightColors
    }
    MaterialTheme(
        colorScheme = colorScheme,
        content = content
    )
}
```

- **Purpose**: The primary Composable function for applying the theme to the UI. It checks the device's system theme preference and, optionally, uses dynamic color schemes if supported by the API level. Finally, it wraps the provided `content` with a MaterialTheme component that uses the selected color scheme.

## Constants

### Layout Padding Constants

- **horizontalPadding**: A constant representing horizontal padding with a value of 10.dp.
- **verticalPaddingCards**: A constant for vertical padding in card components, set at 4.dp.
- **minimumTouchTargetHeight**: Defines the minimum height for touch targets to ensure usability on different devices.

These constants contribute to a consistent and responsive layout across the application.

