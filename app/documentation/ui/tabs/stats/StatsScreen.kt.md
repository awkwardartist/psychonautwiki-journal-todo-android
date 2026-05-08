# StatsScreen.kt

## Overview

The `StatsScreen` class represents a user interface component that displays statistics related to substance ingestion. It utilizes data from various sources such as `StatsModel`, `StatsItem`, `ColorCount`, `RouteCount`, and `TotalDose` to present a visually appealing summary of the data.

## Classes/Types

### StatsScreen

#### Properties

- **statsViewModel: ViewModel** (readonly) - A reference to the view model that provides data for the screen.
  - Type: ViewModel
  - Description: The view model is responsible for managing the state and providing data needed by the `StatsScreen`.

- **viewModelScope: CoroutineScope** (readonly) - A coroutine scope tied to the lifecycle of the view model, used for launching coroutines.
  - Type: CoroutineScope
  - Description: Used for background operations that need to be cancelled when the view model is destroyed.

#### Methods

- **init()**
  - Type: init block
  - Description: Initializes the composable function and sets up side effects. It observes the `statsViewModel.statsModelFlow` to update the UI whenever there are new data changes.

### StatsScreenUI

#### Parameters

- **navController: NavController** (required) - The navigation controller for managing app navigation.
  - Type: NavController
  - Description: Used to navigate between different screens within the application.

- **statsViewModel: ViewModel** (required) - A reference to the view model that provides data for the screen.
  - Type: ViewModel
  - Description: The view model is responsible for managing the state and providing data needed by the `StatsScreen`.

- **sortedConsumerNamesFlow: StateFlow<List<String>>** (required) - A flow of sorted consumer names, used to populate a dropdown or list.
  - Type: StateFlow<List<String>>
  - Description: Provides a list of unique consumer names sorted alphabetically.

#### Composition

The composable function `StatsScreenUI` is designed to be composed within another composable function. It takes several parameters including navigation controls and data models, and renders the user interface based on the provided data.

## Methods/Functions

- **onEvent(event: StatsEvent)**
  - Parameters:
    - event: StatsEvent
  - Description: Handles events triggered by user interactions within the UI.
  - Returns: Unit

- **onResetStatsClick()**
  - Description: Handles the action when the reset stats button is clicked. It calls `statsViewModel.onResetStatsClick` to perform the necessary actions.
  - Returns: Unit

- **onConsumerNameSelect(selectedConsumerName: String)**
  - Parameters:
    - selectedConsumerName: String
  - Description: Handles the selection of a consumer name from the dropdown or list. It calls `statsViewModel.onConsumerNameSelect(selectedConsumerName)` to update the state accordingly.
  - Returns: Unit

- **onSortByExperienceClick()**
  - Description: Handles the action when the sort by experience button is clicked. It calls `statsViewModel.onSortByExperienceClick` to toggle the sorting of the stats based on experience count.
  - Returns: Unit

## context

Additional documentation may be necessary if more information about the `StatsEvent`, `StatsViewModel`, or other relevant classes and their methods is provided.

