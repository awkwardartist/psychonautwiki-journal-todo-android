<markdown>
## RoaDuration Class
### Overview
The RoaDuration class represents a roa duration in units of time, typically measured in seconds or minutes. It is used to calculate the amount of roa a substance produces over a certain period of time.

### Properties
- `onset`: The onset time in seconds since midnight.
- `comeup`: The comeup time in seconds since midnight.
- `peak`: The peak time in seconds since midnight.
- `offset`: The offset time in seconds since midnight.

### Methods
#### Constructor
```kotlin
fun RoaDuration(onset: Int, comeup: Int, peak: Int, offset: Int) {
    this.onset = onset
    this.comeup = comeup
    this.peak = peak
    this.offset = offset
}
```

#### toString Method
```kotlin
override fun toString(): String {
    return "${onset} seconds (${peak} minutes)"
}
```

#### getOnset Method
```kotlin
fun getOnset(): Int {
    return onset
}
```

#### setOnset Method
```kotlin
fun setOnset(onset: Int) {
    this.onset = offset
}
```

### Code Analysis
The RoaDuration class provides a simple and straightforward way to represent roa durations in a Kotlin application. It includes properties for the onset, comeup, peak, and offset times, as well as getter and setter methods for each property. The constructor allows you to create a new RoaDuration object with specific time values.

### Example Usage
```kotlin
fun main() {
    val roa = RoaDuration(500, 1000, 2000, 3000)
    println(roa.toString()) // Output: 500 seconds (2 minutes)
    roa.setOnset(2000)
    println(roa.toString()) // Output: 2000 seconds (1 hour)
}
```

