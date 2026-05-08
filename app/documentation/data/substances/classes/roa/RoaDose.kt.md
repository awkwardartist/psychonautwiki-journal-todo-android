```markdown
## RoaDose Class Documentation
### Overview
The RoaDose class represents a dose of ropinirole hydrochloride, which is an anticholinergic medication used to treat symptoms of Parkinson's disease such as tremors and rigidity. It provides methods for converting between different units of measurement for the dose.

### Constructors
*   `RoaDose(ropeValue: Double)`: This constructor takes a rope value in micrograms (ug) and creates an instance with this value.
*   `RoaDose(ropeValue: Double, unit: RoaUnit = RoaUnit.UG)`: This constructor takes a rope value in micrograms (ug) and specifies the unit of measurement for the dose.

### Properties
*   `ropeValue`: The amount of ropinirole hydrochloride in microgram (ug) units.
*   `unit`: The unit of measurement for the dose, defaults to RoaUnit.UG.

### Methods
### Conversion Methods
#### ToUg()
Converts the dose from other units to micrograms (ug).

```kotlin
fun ToUg(): Double {
    return ropeValue * UnitConverter.fromCelsiusToMilligram(1 / 25)
}
```

### Getters and Setters
#### getRopeValue()
Gets the amount of ropinirole hydrochloride in microgram (ug) units.

```kotlin
fun getRopeValue(): Double {
    return ropeValue
}
```

#### setRopeValue(value: Double)
Sets the amount of ropinirole hydrochloride in microgram (ug) units.

```kotlin
override fun setRopeValue(value: Double) {
    this.ropeValue = value
}
```

