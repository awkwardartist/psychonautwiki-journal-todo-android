# Overview

The `SubstanceScreen.kt` file is a part of an Android application that deals with displaying detailed information about a substance (like LSD, MDMA, etc.) from a search or browsing interface. The screen presents users with comprehensive data about the substance, including its common names, URL, tolerance, ROAs (routes of administration), effects, risks, and safer use tips.

The file uses Jetpack Compose for building the UI components, ensuring that the user interface is modern, responsive, and adheres to Material Design guidelines. It also interacts with a ViewModel (`SubstanceViewModel`) to fetch and manage data related to the substance being displayed.

# Classes/Types

## SubstanceScreen

- **Purpose:** The main composable function for displaying the screen where details about a substance are shown.
- **Parameters:**
  - `substance`: A `SubstanceWithCategories` object containing all the necessary information about the substance.
  - `viewModel`: An instance of `SubstanceViewModel` used to interact with the data layer.

## SubstanceContent

- **Purpose:** A composable function that contains the main content of the `SubstanceScreen`, excluding the navigation bar and toolbar. It includes sections for displaying details such as common names, URL, effects, risks, etc.
- **Parameters:**
  - `substance`: The `SubstanceWithCategories` object passed from `SubstanceScreen`.

## CategoryRow

- **Purpose:** A composable function that displays a row in the categories list, showing the category name and description.
- **Parameters:**
  - `category`: A `Category` object representing the category to be displayed.

# Methods/Functions

## onBackPress()

- **Purpose:** This method is triggered when the user presses the back button (e.g., on Android). It calls the `onBackPressedDispatcher` to handle the back press event, which typically navigates the user back to the previous screen.
- **Implementation:** Utilizes Android's `onBackPressedDispatcher` to manage back navigation.

## showUrlDialog()

- **Purpose:** This method is triggered when the user clicks on a URL link within the substance details. It displays an alert dialog prompting the user to open the provided URL in their web browser.
- **Implementation:** Uses `AlertDialog` to display a message and provides options for the user to copy the URL or open it.

## showDangerousInteractionsDialog()

- **Purpose:** This method is triggered when the user clicks on a link related to dangerous drug interactions. It displays an alert dialog informing the user about potential dangers associated with mixing this substance with others.
- **Implementation:** Uses `AlertDialog` to display information about the risks and provides options for the user.

## showUnsafeInteractionsDialog()

- **Purpose:** Similar to `showDangerousInteractionsDialog`, but specifically for interactions that are considered unsafe but not necessarily dangerous.
- **Implementation:** Uses `AlertDialog` to inform users of potential unsafe interactions.

## showUncertainInteractionsDialog()

- **Purpose:** Displays an alert dialog about interactions whose risks are currently uncertain or under investigation.
- **Implementation:** Uses `AlertDialog` to provide information on uncertain interactions and offer guidance for caution.

