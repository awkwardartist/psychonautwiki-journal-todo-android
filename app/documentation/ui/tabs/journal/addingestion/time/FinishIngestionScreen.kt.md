# Overview

The `FinishIngestionScreen` class provides the user interface for adding an ingestion entry in a journal application. It is part of a larger system designed to manage drug use logs and associated details.

# Classes/Types

## FinishIngestionScreen

### Description

The main composable function that displays the UI elements required to add or edit an ingestion record, including selecting substance type, time, notes, and other relevant data.

### Parameters

- `viewModel: AddEditIngestionViewModel`: The ViewModel associated with this screen, managing the state and handling business logic.
- `onDoneClick: () -> Unit`: A callback function that is invoked when the user completes the ingestion entry and saves it.

# Methods/Functions

## init block

### Description

Initializes the `viewModel` with the necessary parameters based on whether the screen is being used for adding a new ingestion or editing an existing one.

- If `isEditing` is true, it sets up the ViewModel to edit the specified ingestion record.
- Otherwise, it prepares the ViewModel to add a new ingestion entry.

## @Composable Function

### Description

The primary composable function that builds and renders the UI for adding or editing an ingestion entry. It uses the provided `viewModel` to retrieve and display data related to substances and their effects.

### Parameters

- `onDoneClick: () -> Unit`: A callback function that is invoked when the user completes the ingestion entry and saves it.

## TimePointOrRangePicker Composable

### Description

A composable component responsible for allowing the user to select whether they want to record a single point in time or a range of times for an ingestion event. It provides options for updating the selected time to "now".

- `onChangeTimePickerOption: (option: IngestionTimePickerOption) -> Unit`: A callback function that updates the selected time picker option.
- `ingestionTimePickerOption: IngestionTimePickerOption`: The currently selected time picker option.
- `localDateTimeStart: LocalDateTime`: The start date and time for the ingestion entry, which may be updated.
- `onChangeStartDateOrTime: (LocalDateTime) -> Unit`: A callback function that updates the start date and time of the ingestion entry.
- `localDateTimeEnd: LocalDateTime`: The end date and time for the ingestion entry, which is only relevant when a range is selected and may be updated.
- `onChangeEndDateOrTime: (LocalDateTime) -> Unit`: A callback function that updates the end date and time of the ingestion entry.

## DatePickerButton Composable

### Description

A composable component used within the UI to allow users to select a date. When clicked, it opens a dialog for selecting the date.

- `localDateTime: LocalDateTime`: The current date and time, which may be updated.
- `onChange: (LocalDateTime) -> Unit`: A callback function that updates the selected date.
- `dateString: String`: A human-readable representation of the selected date.

## TimePickerButton Composable

### Description

A composable component used within the UI to allow users to select a time. When clicked, it opens a dialog for selecting the time.

- `localDateTime: LocalDateTime`: The current date and time, which may be updated.
- `onChange: (LocalDateTime) -> Unit`: A callback function that updates the selected time.
- `timeString: String`: A human-readable representation of the selected time.
- `modifier: Modifier = Modifier`: Additional modifiers to apply to this button.
- `hasOutline: Boolean = true`: Whether or not the button should have an outline.

# Context

To fully understand and effectively use the `FinishIngestionScreen` class, it is necessary to consider how it interacts with other components such as `AddEditIngestionViewModel`, which manages the state of the ingestion entry. Additionally, understanding the context in which this screen operates within the larger application architecture would provide a more comprehensive overview of its functionality and responsibilities.

