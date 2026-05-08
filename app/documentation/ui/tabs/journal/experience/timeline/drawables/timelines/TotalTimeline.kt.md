Overview
This Kotlin file contains a class named TotalTimeline which extends the TimelineDrawable interface. The purpose of this class is to represent a timeline drawable for a substance's total duration.

Classes/Types

TotalTimeline
Represents a timeline drawable for a substance's total duration.
Extends: TimelineDrawable

Properties

total (FullDurationRange): Represents the total duration of the substance.
totalWeight (Float): Represents the weight or importance of the total duration.
percentSmoothness (Float, optional): Represents the smoothness of the line. Defaults to 0.5f.
ingestionTimeRelativeToStartInSeconds (Float): Represents the time of ingestion relative to the start of the timeline in seconds.
nonNormalisedHeight (Float): Represents the non-normalized height of the timeline drawable.

Methods/Functions

toTotalTimeline(totalWeight: Float, ingestionTimeRelativeToStartInSeconds: Float, nonNormalisedHeight: Float): TotalTimeline?
A function that creates a new instance of TotalTimeline based on the provided total weight, ingestion time relative to start in seconds, and non-normalized height. If the total duration is null, it returns null.

drawTimeLine(drawScope: DrawScope, canvasHeight: Float, pixelsPerSec: Float, color: Color, density: Density)
A method that draws the timeline drawable on a given draw scope with specified parameters such as canvas height, pixels per second, color, and density.

