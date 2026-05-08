# SaferUseViewModel

## Overview

The `SaferUseViewModel` class is a ViewModel component designed for managing the state of safer use information within the application. This ViewModel interacts with a `SubstanceRepository` to fetch substance-specific data, including safer use instructions.

This document provides detailed documentation on the `SaferUseViewModel` class, its properties, and methods.

## Classes/Types

### SaferUseViewModel

**Overview:**
The `SaferUseViewModel` class extends `ViewModel` and is annotated with `@HiltViewModel`. It is responsible for managing the state of safer use information by fetching substance-specific data from a repository. The ViewModel utilizes dependency injection through Hilt to obtain necessary dependencies.

#### Properties

- **substanceName: String**
  - A property that retrieves the substance name from the saved state handle. The substance name is used to fetch substance-specific data.
  
- **substance: Substance**
  - A property that fetches and returns a `Substance` object using the provided `substanceName`. This property accesses data from a `SubstanceRepository`.

#### Methods/Functions

- **constructor(substanceRepo: SubstanceRepository, state: SavedStateHandle)**
  - The constructor for the `SaferUseViewModel` class. It takes two parameters:
    - `substanceRepo`: An instance of `SubstanceRepository`, used to fetch substance data.
    - `state`: A `SavedStateHandle` that contains navigation arguments, including the substance name.

- **[Automatic Documentation Needed]**
  - The automatic documentation for methods/properties can be provided once more context is available. Currently, no specific methods or properties are highlighted as requiring documentation.

## Usage Context

To use the `SaferUseViewModel`, you need to:

1. Include it in your Android project by applying Hilt.
2. Ensure a `SubstanceRepository` is properly set up and injected into the ViewModel.
3. Pass necessary arguments through a `SavedStateHandle` during instantiation.

This ViewModel is intended for use within screens that display safer use instructions for substances, ensuring that the data displayed is up-to-date and correctly associated with the substance in question.

