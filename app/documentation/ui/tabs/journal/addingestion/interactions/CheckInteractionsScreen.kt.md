## CheckInteractionsScreen.kt

### Overview
The `CheckInteractionsScreen.kt` file contains a Jetpack Compose component for checking interactions between substances in a journal entry. This screen allows users to input substance names and display potential interactions based on predefined data.

### Classes/Types
- **CheckInteractionsScreen**
  - A Jetpack Compose composable function that serves as the main UI for displaying interaction information.
- **InteractionRowItem**
  - A data class representing a single row in the list of interactions.
- **InteractionType**
  - An enum class representing different types of substance interactions (DANGEROUS, UNSAFE, UNCERTAIN).

### Methods/Functions
#### CheckInteractionsScreen()
- Parameters:
  - `viewModel: InteractionsViewModel`: The view model that manages the UI logic and data for this screen.
- Returns: A Composable function that renders the interaction check interface.

#### InteractionRowItem(interaction: Interaction)
- Parameters:
  - `interaction: Interaction`: An instance of Interaction to display in the row.
- Returns: A composable function rendering a single row displaying the interaction details.

### Detailed Explanation
The `CheckInteractionsScreen` component is designed to provide an interactive interface for users to check potential interactions between substances. It uses the `InteractionRowItem` data class to represent individual rows of interaction data, which are displayed in a list format.

#### InteractionType Enum Class
The `InteractionType` enum class defines the different types of substance interactions that can occur. The possible values include:
- **DANGEROUS**: Indicates highly risky interactions that could lead to severe consequences.
- **UNSAFE**: Indicates unsafe interactions that, while not as dangerous as DANGEROUS, still require caution.
- **UNCERTAIN**: Indicates interactions for which the effects are uncertain and further research is needed.

#### InteractionRowItem Composable Function
The `InteractionRowItem` composable function is used to render individual rows in the interaction list. It takes an instance of `Interaction` as a parameter and displays the details of that interaction, including the types involved (aName and bName) and their corresponding interaction type.

#### CheckInteractionsScreen Composable Function
The `CheckInteractionsScreen` composable function is the main entry point for rendering the interaction check interface. It accepts a `viewModel` of type `InteractionsViewModel`, which provides the necessary data and functionality for the screen. The screen consists of:
- An input field where users can enter substance names.
- A list that displays potential interactions based on the entered substance names.
- A button or similar UI element to trigger the interaction check.

### Usage Context
To use the `CheckInteractionsScreen` in your application, you would typically do the following:
1. Create an instance of `InteractionsViewModel`.
2. Pass this instance to the `CheckInteractionsScreen` composable function.
3. Ensure that the view model is properly initialized and provides the necessary data for interaction checks.

This setup allows for a dynamic and interactive user experience where users can check substance interactions in real-time, enhancing safety and informed decision-making when using substances.

