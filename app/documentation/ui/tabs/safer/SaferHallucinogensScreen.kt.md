# Safer Hallucinogens Screen Documentation

## Overview

The `SaferHallucinogensScreen.kt` file contains a Composable function named `SaferHallucinogensScreen`. This screen provides guidance on how to use hallucinogenic substances safely, focusing on set and setting for these substances. It includes information that should be considered before taking any hallucinogenic drugs.

## Classes/Types

### SaferHallucinogensScreen (Composable Function)

- **Description**: A Composable function that displays information about how to safely use hallucinogenic substances.
- **Usage**:
  - This function is intended to be used within a larger screen or as part of a navigation flow where users can access guidance on responsible drug use, specifically focusing on the use of hallucinogens.

## Methods/Functions

### SaferText (Composable Function)

- **Description**: A Composable function that displays text content with left alignment and padding.
- **Parameters**:
  - `text`: The string to be displayed.
- **Usage**:
  - This function is used within the `SaferHallucinogensScreen` to format the information about set and setting for hallucinogenic substances.

### navigateToSafeSetAndSetting (Composable Function)

- **Description**: A Composable function that navigates to a detailed guide on safe set and setting practices.
- **Usage**:
  - This function is called when the user clicks on a button labeled "Safer set & setting guide" within `SaferHallucinogensScreen`.

## Usage Context

To use this screen, you would typically integrate it into your application's navigation flow. When a user navigates to the safer hallucinogen guide, the `SaferHallucinogensScreen` will be displayed, providing them with essential information on how to set and set themselves up for a safe experience while using hallucinogenic substances.

## Example Usage

Here is an example of how you might use this Composable function within your navigation flow:

```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppNavGraph(navController: NavController) {
    NavHost(
        navController = navController,
        startDestination = "safer_hallucinogens"
    ) {
        composable("safer_hallucinogens") {
            SaferHallucinogensScreen { navigateToSafeSetAndSetting() }
        }
        composable("safe_set_and_setting") {
            SafeSetAndSettingScreen()
        }
    }
}

@Composable
fun SaferHallucinogensScreen(navigate: () -> Unit) {
    // ... (existing code)
    Button(
        onClick = navigate
    ) {
        Text(text = "Safer set & setting guide")
    }
    // ... (existing code)
}
```

In this example, the `AppNavGraph` function sets up a navigation graph with two destinations: "safer_hallucinogens" and "safe_set_and_setting". When the user navigates to "safer_hallucinogens", they are presented with the `SaferHallucinogensScreen`. If they click on the "Safer set & setting guide" button, they are navigated to the `SafeSetAndSettingScreen`.

