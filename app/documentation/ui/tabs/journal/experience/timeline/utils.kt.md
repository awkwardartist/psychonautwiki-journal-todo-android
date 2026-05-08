## Overview

The `utils.kt` file provides utility functions and constants used for rendering timelines in the PsychonautWiki Journal application. It includes functionality for creating stroke effects, handling dot sizes, and defining shape alphas.

## Classes/Types

### StrokeEffects

No classes are defined in this file; instead, it focuses on providing utilities to create different types of strokes.

### StrokeEffect Extensions

#### `Density.normalStroke`

Creates a rounded stroke with a path effect for corners.

- **Parameters**:
  - `density`: The density of the current display.

- **Return Type**:
  - A `Stroke` object with a round cap and corner path effect.

#### `Density.strokeWidth`

Calculates the width of the stroke in pixels based on the provided density.

- **Parameters**:
  - `density`: The density of the current display.

- **Return Type**:
  - A `Float` representing the stroke width.

#### `Density.dottedStroke`

Creates a dotted stroke with specified length and spacing.

- **Parameters**:
  - `density`: The density of the current display.

- **Return Type**:
  - A `Stroke` object with a round cap and dash path effect.

### Other Constants

#### `shapeAlpha`

A constant representing the alpha value for shapes in timeline rendering.

## Methods/Functions

No methods are defined in this file; instead, it focuses on providing utility properties that can be accessed throughout the application.

