./app/src/main/java/com/isaakhanimann/journal/data/substances/classes/roa/DurationRange.kt
```
/// Represents a range of duration in hours (as an integer).
class DurationRange(
    val start: Duration, 
    val end: Duration
) {

    /// The maximum possible value for the duration. It is not the actual maximum but rather used to limit values that are too large.
    private const val MAX_DURATION = 24 * 3600
    /// The minimum possible value for the duration. It is not the actual minimum but rather used to limit values that are too small.
    private const val MIN_DURATION = -MAX_DURATION
    
    private var startInSeconds: Int {
        return start.toDuration.totalSeconds
    }

    private var endInSeconds: Int {
        return end.toDuration.totalSeconds
    }

    /// Returns the duration as an integer with all bits set to 1 for the full range of hours. 
    private fun getMaxDuration() = if (start >= end) MAX_DURATION else MIN_DURATION

    /// Checks whether this is a valid duration range.
    fileprivate companion object {

        /**
         * Checks whether this duration range is within the allowed limits.
         * 
         * @param start   The start of the duration range (inclusive).
         * @param end     The end of the duration range (inclusive).
         * @return true if this is a valid duration range, false otherwise.
         */
        fileprivate fun isValid(start: Duration, end: Duration): Boolean {
            return startInSeconds <= endInSeconds && startInSeconds >= 0
        }

        /**
         * Checks whether the given time is within this duration range.
         * 
         * @param time   The time to check (in seconds).
         * @return true if the given time is within the duration range, false otherwise.
         */
        fileprivate fun isTimeWithinRange(time: Int): Boolean {
            return startInSeconds <= time && endInSeconds >= time
        }

        /**
         * Checks whether this is a valid duration range in hours (as an integer).
         * 
         * @return true if the given duration range is valid, false otherwise.
         */
        fileprivate fun isValidHours(duration: Int): Boolean {
            return startInSeconds <= duration && endInSeconds >= duration
        }

        /**
         * Checks whether this is a valid duration range in hours and minutes (as an integer).
         * 
         * @return true if the given duration range is valid, false otherwise.
         */
        fileprivate fun isValidHoursMinutes(duration: Int): Boolean {
            return startInSeconds <= duration && endInSeconds >= duration
        }

        /**
         * Returns a new duration with only hours (as an integer).
         * 
         * @return A new duration that contains only the hour part.
         */
        fun toHours(): Duration? {
            val range = if (isValidHours(this.startInSeconds) && isValidHours(this.endInSeconds)) this else null
            return range?.div(24, { Duration::new }).add(Duration::new)
        }

        /**
         * Returns a new duration with only hours and minutes (as an integer).
         * 
         * @return A new duration that contains only the hour and minute part.
         */
        fun toHoursMinutes(): Duration? {
            val range = if (isValidHoursMinutes(this.startInSeconds) && isValidHoursMinutes(this.endInSeconds)) this else null
            return range?.div(24, { Duration::new }).add(Duration::new).div(60, { Duration::new })
        }
    }

    override fun toString(): String {
        val startAsText = if (start <= 1) "0" + String.valueOf(start) else String.valueOf(start)
        return format("%s: %s - %s", this.getMaxDuration(), startAsText, if (end > start) endAsText else "-")
    }
}
```

