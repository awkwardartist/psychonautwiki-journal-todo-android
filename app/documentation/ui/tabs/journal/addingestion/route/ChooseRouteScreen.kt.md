# Overview

The `ChooseRouteScreen.kt` file contains a composable function `ChooseRouteScreen` which represents a screen where users can choose an administration route for a substance ingestion. The screen includes a top app bar with a title, a linear progress indicator to indicate loading status, and a picker for selecting an administration route.

# Classes/Types

## ChooseRouteViewModel

A ViewModel that provides data and business logic for the `ChooseRouteScreen`. It is annotated with `@HiltViewModel` to enable dependency injection. The ViewModel maintains state such as whether other routes are visible (`showOtherRoutes`), a list of primary routes (`pwRoutes`), and the currently selected route (`currentRoute`). It also handles the substance's ROAs (routes of administration) using a `SubstanceRepository`.

## ChooseRouteOfAddIngestionRoute

A data class representing the route to this screen, which includes a substance name.

# Methods/Functions

## ChooseRouteScreen

This is a composable function that builds the UI for the choose route screen. It takes no parameters and returns a `Unit` (void).

### Parameters

- **padding**: A modifier that provides padding around the content of the scaffold.

### Code Snippet
```kotlin
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChooseRouteScreen(padding: PaddingValues) {
    val viewModel = hiltViewModel<ChooseRouteViewModel>()
    val route = viewModel.route
    val substanceName = route.substanceName
    val substance by viewModel.substance.collectAsState()
    var showOtherRoutes by remember { mutableStateOf(false) }
    val pwRoutes = substance?.roas?.map { it.route } ?: emptyList()
    private val otherRoutes = AdministrationRoute.entries.filter { route ->
        !pwRoutes.contains(route)
    }
    val otherRoutesChunked = otherRoutes.chunked(2)

    var isShowingInjectionDialog by remember { mutableStateOf(false) }
    var currentRoute by remember { mutableStateOf(AdministrationRoute.INTRAVENOUS) }

    Scaffold(
        topBar = {
            TopAppBar(title = { Text("Route") })
        }
    ) { padding ->
        Column(modifier = Modifier.padding(padding)) {
            LinearProgressIndicator(
                progress = { 0.5f },
                modifier = Modifier.fillMaxWidth(),
            )
            val spacing = 6
            Column(
                modifier = Modifier.padding(10.dp),
                verticalArrangement = Arrangement.spacedBy(spacing.dp)
            ) {
                val routesChunked = AdministrationRoute.entries.toList().chunked(2)
                routesChunked.forEach { chunk ->
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .weight(1f),
                        horizontalArrangement = Arrangement.spacedBy(spacing.dp)
                    ) {
                        chunk.forEach { route ->
                            ElevatedCard(
                                modifier = Modifier
                                    .clickable {
                                        onRouteTap(route)
                                    }
                                    .fillMaxHeight()
                                    .weight(1f)
                            ) {
                                RouteBox(
                                    route = route,
                                    titleStyle = MaterialTheme.typography.titleMedium
                                )
                            }
                        }
                        if (chunk.size == 1) {
                            Box(modifier = Modifier.weight(1f))
                        }
                    }
                }
            }
        }
    }
}
```

## CustomSubstanceChooseRouteScreen

This is a composable function that builds the UI for selecting an administration route with a custom substance. It takes a single parameter, `onRouteTap`, which is called when a route is tapped.

### Parameters

- **onRouteTap**: A lambda function that handles the selection of an administration route.

### Code Snippet
```kotlin
@Preview
@Composable
fun CustomChooseRouteScreen(onRouteTap: (AdministrationRoute) -> Unit) {
    Scaffold(
        topBar = {
            TopAppBar(title = { Text("Route") })
        }
    ) { padding ->
        Column(modifier = Modifier.padding(padding)) {
            LinearProgressIndicator(
                progress = { 0.5f },
                modifier = Modifier.fillMaxWidth(),
            )
            val spacing = 6
            Column(
                modifier = Modifier.padding(10.dp),
                verticalArrangement = Arrangement.spacedBy(spacing.dp)
            ) {
                val routesChunked = AdministrationRoute.entries.toList().chunked(2)
                routesChunked.forEach { chunk ->
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .weight(1f),
                        horizontalArrangement = Arrangement.spacedBy(spacing.dp)
                    ) {
                        chunk.forEach { route ->
                            ElevatedCard(
                                modifier = Modifier
                                    .clickable {
                                        onRouteTap(route)
                                    }
                                    .fillMaxHeight()
                                    .weight(1f)
                            ) {
                                RouteBox(
                                    route = route,
                                    titleStyle = MaterialTheme.typography.titleMedium
                                )
                            }
                        }
                        if (chunk.size == 1) {
                            Box(modifier = Modifier.weight(1f))
                        }
                    }
                }
            }
        }
    }
}
```

# Context

For a comprehensive understanding of this file, it is necessary to have context about the larger application structure, how ViewModels are used in Jetpack Compose applications, and how UI components like `Scaffold`, `TopAppBar`, and `ElevatedCard` are utilized. Additionally, familiarity with the `AdministrationRoute` enum and its properties would be helpful for comprehending the options available to users on this screen.

