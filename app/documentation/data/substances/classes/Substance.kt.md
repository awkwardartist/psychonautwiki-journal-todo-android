Here is a detailed analysis of the codebase and a Markdown document containing the raw text data for the documentation of the `Substance` class in `Substance.kt`:

1. The `Substance` class has properties like `name`, `onset`, `comeup`, etc., which define various attributes about a substance.

2. The `toJson()` method converts these values into JSON string representations for easy storage and transfer between languages or APIs. It returns a map with the substance's name as the key and its JSON representation as the value.

3. The `toFullTimelines()` method allows converting substances to Full Timelines, which can be visualized on graphs. It takes weighted lines (defined in another class) and the start time of the graph as inputs and returns a `FullTimelines` object if all parameters are valid, otherwise it returns `null`.

4. The `FullTimelines` class represents the complete timeline for a substance with its onset, comeup, peak, and offset durations, along with sample points at these times using a list of `Point` objects. It has getter methods to retrieve each attribute's values.

5. In order to analyze this codebase further, we would need more information about what it does and why it was created.

