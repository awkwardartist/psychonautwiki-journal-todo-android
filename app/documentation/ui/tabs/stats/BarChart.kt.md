# Overview

The `BarChart.kt` file in the Android app project at `./app/src/main/java/com/isaakhanimann/journal/ui/tabs/stats/` is responsible for rendering a bar chart visualization in an Android user interface. This file is part of a larger module that deals with displaying statistical data from user's journal entries, focusing on substance usage patterns over time.

The primary components within this file are:
- A `BarChartView` class which extends `FrameLayout` and holds the logic for drawing the bar chart.
- Various helper classes and methods used to calculate data for the bar chart, handle user interactions, and provide styling options.

# Classes/Types

## BarChartView

The `BarChartView` is a custom view that extends `FrameLayout`. It encapsulates all the UI elements required to display a bar chart:
- A canvas where the bars are drawn.
- Logic for calculating the position and size of each bar based on provided data.
- Drawing code to render bars, labels, and other visual components.

### Properties

- `private val paint`: Used for drawing text and shapes.
- `private var dataset: List<BarData>`: Stores the data points that define the height and color of each bar.
- `private var xAxisLabels: List<String>`: Contains labels for each X-axis category (e.g., time periods).
- `private var selectedBarIndex: Int? = null`: Tracks which bar is currently highlighted.

### Methods

- `init(context: Context, attrs: AttributeSet?)`: Initializes the view with attributes.
- `onDraw(canvas: Canvas)`: Draws all components of the bar chart on the provided canvas.
- `setDataset(dataset: List<BarData>)`: Updates the dataset and triggers a redraw.
- `setXAxisLabels(labels: List<String>)`: Sets labels for the X-axis categories.
- `highlightBar(index: Int?)`: Highlights or unhighlights a specific bar.

## BarData

This data class represents a single bar in the bar chart. It contains:
- `val value: Float`: The height of the bar, corresponding to a numerical value.
- `val color: AdaptiveColor`: The color of the bar, which can vary based on the substance or category being represented.

## AxisLabelData

This data class holds information for each label on the X-axis. It includes:
- `val label: String`: The text to be displayed as a label.
- `val position: Float`: The horizontal position (in pixels) where the label should be placed.

# Methods/Functions

In addition to the methods defined within classes, there are several utility functions used for calculations and transformations:

- `fun calculateBarWidth(totalWidth: Int): Int`: Calculates the width of each bar based on the total available space.
- `fun calculateBarHeight(barValue: Float, maxValue: Float, chartHeight: Int): Int`: Determines the height of a bar given its value and the maximum value in the dataset.

These methods ensure that the bar chart is displayed correctly, with bars proportionally sized according to their corresponding data points.

