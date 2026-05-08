# Overview

The `FinishIngestionScreenViewModel.kt` file contains a ViewModel class named `FinishIngestionScreenViewModel`. This ViewModel is responsible for managing the data and logic associated with the user interface of the "Finish Ingestion" screen in the PsychonautWiki Journal application. The class uses Jetpack Compose's `ViewModel` to manage state and lifecycle awareness.

# Classes/Types

## FinishIngestionScreenViewModel

### Properties

- `state`: A MutableStateFlow property that holds the current UI state, including data related to the ingestion screen.
- `consumers`: A StateFlow property containing a list of consumers available for selection.
- `administrationRoutes`: A StateFlow property containing a list of administration routes available for selection.
- `timePickerOption`: A MutableStateFlow property representing whether the user is selecting a point in time or a time range.
- `localDateTimeStart`: A MutableStateFlow property holding the selected start date and time when the time picker option is set to "Time Range".
- `localDateTimeEnd`: A MutableStateFlow property holding the selected end date and time when the time picker option is set to "Time Range".
- `note`: A MutableStateFlow property representing any notes or additional information entered by the user.
- `consumerName`: A MutableStateFlow property for the name of the consumer, which can be left blank.

### Methods/Functions

#### init

Initializes the ViewModel. It subscribes to various data sources and updates the UI state accordingly.

#### selectConsumer

Updates the selected consumer based on the provided index.

#### selectAdministrationRoute

Updates the selected administration route based on the provided index.

#### updateIngestionTimePickerOption

Updates whether the user is selecting a point in time or a time range.

#### onChangeStartDateOrTime

Changes the start date and time when the time picker option is set to "Point in Time".

#### onChangeEndDateOrTime

Changes the end date and time when the time picker option is set to "Time Range".

#### saveIngestion

Saves the ingestion data to a repository. It constructs an `Ingestion` object based on the current state of the ViewModel and calls the appropriate repository method to save it.

#### cancel

Cancels any ongoing operations or resets the screen state, if applicable.

# Methods/Functions

## selectConsumer

### Description

Updates the selected consumer based on the provided index. This function is called when a new consumer option is selected from a dropdown menu in the UI.

### Parameters

- `index`: The index of the selected consumer in the list of available consumers.

### Return Value

No return value. The selected consumer is updated internally within the ViewModel.

## selectAdministrationRoute

### Description

Updates the selected administration route based on the provided index. This function is called when a new administration route option is selected from a dropdown menu in the UI.

### Parameters

- `index`: The index of the selected administration route in the list of available routes.

### Return Value

No return value. The selected administration route is updated internally within the ViewModel.

## updateIngestionTimePickerOption

### Description

Updates whether the user is selecting a point in time or a time range. This function is called when the user switches between these two options, typically through a toggle or radio button group.

### Parameters

- `option`: An enum value indicating the selected option (`POINT_IN_TIME` or `TIME_RANGE`).

### Return Value

No return value. The selected time picker option is updated internally within the ViewModel.

## onChangeStartDateOrTime

### Description

Changes the start date and time when the time picker option is set to "Point in Time". This function is called when the user selects a new date or time through the DatePickerButton or TimePickerButton components.

### Parameters

- `localDateTime`: The new start date and time.

### Return Value

No return value. The start date and time are updated internally within the ViewModel.

## onChangeEndDateOrTime

### Description

Changes the end date and time when the time picker option is set to "Time Range". This function is called when the user selects a new date or time through the DatePickerButton or TimePickerButton components.

### Parameters

- `localDateTime`: The new end date and time.

### Return Value

No return value. The end date and time are updated internally within the ViewModel.

## saveIngestion

### Description

Saves the ingestion data to a repository. It constructs an `Ingestion` object based on the current state of the ViewModel and calls the appropriate repository method to save it.

### Parameters

None.

### Return Value

No return value. The ingestion data is saved through the repository.

## cancel

### Description

Cancels any ongoing operations or resets the screen state, if applicable. This function can be called when the user wants to discard changes and go back without saving.

### Parameters

None.

### Return Value

No return value. Any ongoing operations are canceled or the screen state is reset.

