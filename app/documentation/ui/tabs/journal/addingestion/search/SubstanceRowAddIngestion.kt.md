# ./app/src/main/java/com/isaakhanimann/journal/ui/tabs/journal/addingestion/search/SubstanceRowAddIngestion.kt

## Overview
The `SubstanceRowAddIngestion.kt` file is part of a larger application that deals with substance ingestion tracking. It contains components for displaying substance rows in a user interface, specifically designed to be used within the context of adding an ingestion entry.

This file includes two primary composables:
1. `SubstanceRowAddIngestionPreview`
2. `SubstanceRowAddIngestion`

## Classes/Types
### SubstanceModel
- **Description**: This is a data class that represents the model for substance information, which is used by the `SubstanceRowAddIngestion` composable to display details about substances.
- **Properties**:
  - `name`: The primary name of the substance.
  - `commonNames`: A list of common names associated with the substance.

### Preview Composable
#### SubstanceRowAddIngestionPreview
- **Description**: This composable is a preview version of `SubstanceRowAddIngestion` designed to be used in design tools and previews. It demonstrates how the component will look using sample data.
- **Parameters**:
  - `substanceModel`: An instance of `SubstanceModel`.

## Methods/Functions
### SubstanceRowAddIngestionPreview
- **Description**: Displays a preview of the `SubstanceRowAddIngestion` composable with given substance model data.
- **Parameters**:
  - `@PreviewParameter(SubstanceModelPreviewProvider::class)` substanceModel: The substance model used for the preview.

### SubstanceRowAddIngestion
- **Description**: A composable function that represents a row in the user interface for displaying substance information. It is clickable and triggers an action when tapped.
- **Parameters**:
  - `substanceModel`: The substance model containing details about the substance to be displayed.
  - `onTap`: A lambda function that is triggered when the substance row is clicked, providing the name of the substance.

## Usage
The `SubstanceRowAddIngestion` composable can be used in the user interface for displaying lists of substances, typically within screens related to adding an ingestion entry. It provides a clear and concise representation of each substance, including its primary name and any common names.

## Context
For full understanding, it is helpful to have knowledge about the broader application architecture, particularly how substance data is managed and displayed in various parts of the app. Additionally, understanding how `SubstanceRowAddIngestion` interacts with other components like previews or state management would provide a more comprehensive view.

