# RouteExplanationScreen.kt

## Overview

The `RouteExplanationScreen` class provides a user interface for understanding various routes of administration for psychoactive substances. It includes detailed information on safe practices and potential risks associated with different methods of ingestion, such as oral, intranasal (snorting), inhalation, injection, and sublingual.

This screen is designed to educate users about responsible drug use and help them make informed decisions regarding their substance use. By providing comprehensive explanations and guidance, the screen aims to promote safety and reduce harm related to substance administration.

## Classes/Types

### RouteExplanationScreen

- **Description**: A composable function representing the route explanation screen.
- **Location**: `app/src/main/java/com/isaakhanimann/journal/ui/tabs/safer/RouteExplanationScreen.kt`

## Methods/Functions

### RouteExplanationScreen()

- **Description**: The main entry point for rendering the `RouteExplanationScreen` UI.
- **Parameters**:
  - None
- **Returns**:
  - A composable function representing the route explanation screen.

```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun RouteExplanationScreen() {
    val uriHandler = LocalUriHandler.current
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Administration routes info") },
                actions = {
                    // Action buttons (if any)
                }
            )
        },
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .padding(horizontal = horizontalPadding)
                .verticalScroll(rememberScrollState())
        ) {
            Spacer(modifier = Modifier.height(10.dp))
            Text(
                text = """This screen provides detailed information on various routes of administration for psychoactive substances. 
                
**Oral Administration**: Swallowing the substance directly can be effective and less invasive than other methods. Ensure you are using clean, dry hands before handling any substances.

**Intranasal (Snorting)**: This method involves pushing a powder substance up through the nasal passages to reach the brain quickly. It can be risky due to potential injury to the nasal passages and risk of infection.

**Inhalation**: Substances like hash oil or vaporized THC are inhaled, leading to rapid onset and effects. Use clean equipment and ensure a safe environment to avoid accidents.

**Injection**: Injecting substances directly into the bloodstream provides the fastest route of action but is the most dangerous. It increases the risk of overdose, infection, and blood-borne diseases.

**Sublingual Administration**: Dissolving a substance under the tongue allows for rapid absorption and onset of effects. Ensure you are using clean equipment to avoid contamination.""",
                textAlign = TextAlign.Left
            )
        }
    }
}
```

## Context

To fully understand and utilize the `RouteExplanationScreen` class, it is necessary to have knowledge of the broader context of the application. The class is part of a larger system designed to provide comprehensive information on responsible drug use, including safer practices for substance administration.

For more detailed guidance on how to effectively use this screen and its components, refer to the application's documentation or seek additional training from healthcare professionals.

