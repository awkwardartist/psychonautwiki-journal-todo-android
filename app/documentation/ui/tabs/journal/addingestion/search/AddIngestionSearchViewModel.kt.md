# AddIngestionSearchViewModel.kt

## Overview
The `AddIngestionSearchViewModel` class serves as a ViewModel for managing the state and logic of the search functionality within an ingestion feature of an Android application. This ViewModel provides data to the UI layer, handles user interactions, and manages the persistence of the search results.

It integrates with various repositories and services to fetch and store data about substances, custom units, and other related entities.

## Classes/Types
### AddIngestionSearchViewModel
- **Purpose**: Manages the state and logic for searching and selecting substances and custom units.
- **Properties**:
  - `substanceRepository`: Repository responsible for fetching substance-related data.
  - `customUnitRepository`: Repository responsible for fetching custom unit-related data.
  - `searchText`: MutableStateFlow to hold the current search text entered by the user.
  - `searchResults`: StateFlow containing the list of results based on the search text.
  - `error`: LiveData to handle and communicate errors that occur during the search process.
  
### SearchParams
- **Purpose**: Defines parameters for a search operation, such as the query text and any filters applied.

## Methods/Functions
### init()
- **Description**: Initializes the ViewModel by setting up observers on the repositories and fetching initial data.
- **Parameters**: None

### performSearch(params: SearchParams)
- **Description**: Triggers a search based on the provided parameters. Updates `searchResults` with the fetched data.
- **Parameters**:
  - `params`: A `SearchParams` object containing the query text and filters.

### fetchSubstances()
- **Description**: Fetches substance data from the repository and updates the ViewModel state.
- **Parameters**: None

### fetchCustomUnits()
- **Description**: Fetches custom unit data from the repository and updates the ViewModel state.
- **Parameters**: None

### onSearchTextChange(text: String)
- **Description**: Updates the search text and triggers a new search if necessary.
- **Parameters**:
  - `text`: The new search text provided by the user.

## Context
For full understanding, consider reviewing the repositories (`SubstanceRepository`, `CustomUnitRepository`) and any other related components that interact with this ViewModel.

