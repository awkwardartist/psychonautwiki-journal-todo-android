```markdown

# Constants.kt

## Overview

The `Constants.kt` file contains various constants used throughout the PsychonautWiki Journal application. These constants are primarily used for storing text strings that can be reused across different parts of the app, providing a central location to manage and maintain these values.

## Classes/Types

This file does not contain any classes or types. It solely consists of top-level constants.

## Methods/Functions

This file does not contain any functions or methods. All values are defined as top-level properties.

## Constants

- **DOSE_DISCLAIMER**
  - **Type:** String
  - **Description:** A text string that serves as a disclaimer to be shown when users input doses.
  
- **VOLUMETRIC_DOSE_ARTICLE_URL**
  - **Type:** String
  - **Description:** A URL pointing to an article on PsychonautWiki that provides information about volumetric liquid dosing.

- **VERSION_NAME**
  - **Type:** String
  - **Description:** The current version name of the application, used for display purposes.

- **FULL_STOMACH_DISCLAIMER**
  - **Type:** String
  - **Description:** A text string that serves as a disclaimer to be shown when users report using substances on a full stomach.
  
- **YOU**
  - **Type:** String
  - **Description:** The word "You" used for addressing the user in certain contexts, such as in prompts or notifications.

## Example Usage

```kotlin
// Displaying the dose disclaimer to the user
Toast.makeText(context, Constants.DOSE_DISCLAIMER, Toast.LENGTH_LONG).show()

// Opening a link to the volumetric dosing article when a user clicks on related content
val intent = Intent(Intent.ACTION_VIEW, Uri.parse(Constants.VOLUMETRIC_DOSE_ARTICLE_URL))
startActivity(intent)
```

## Context

For a more in-depth understanding of how these constants are used within the application, it is necessary to review other source files, particularly those dealing with user interfaces, input validation, and navigation.
```

