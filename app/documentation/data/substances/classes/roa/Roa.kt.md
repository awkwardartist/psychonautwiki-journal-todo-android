[Raw Text Data]
```cpp
package com.isaakhanimann.journal;

import androidx.annotation.NonNull;

public class Roa {
    private float onsetInSeconds;
    private float comeupInSeconds;
    private float peakInSeconds;
    private float offsetInSeconds;

    public Roa() {}

    public Roa(float onset, float comeup, float peak, float offset) {
        this.onsetInSeconds = onset;
        this.comeupInSeconds = comeup;
        this.peakInSeconds = peak;
        this.offsetInSeconds = offset;
    }

    public float getOnsetInSeconds() {
        return onsetInSeconds;
    }

    public void setOnsetInSeconds(float onsetInSeconds) {
        this.onsetInSeconds = onsetInSeconds;
    }

    public float getComeupInSeconds() {
        return comeupInSeconds;
    }

    public void setComeupInSeconds(float comeupInSeconds) {
        this.comeupInSeconds = comeupInSeconds;
    }

    public float getPeakInSeconds() {
        return peakInSeconds;
    }

    public void setPeakInSeconds(float peakInSeconds) {
        this.peakInSeconds = peakInSeconds;
    }

    public float getOffsetInSeconds() {
        return offsetInSeconds;
    }

    public void setOffsetInSeconds(float offsetInSeconds) {
        this.offsetInSeconds = offsetInSeconds;
    }
}
```

This Roa class represents an entry in the roa table in the journal database, with fields for the onset time (seconds), comeup time (seconds), peak time (seconds), and offset time (seconds). These times are used to calculate the duration of each sub-stage of a roa event. The Roa class also has setter methods to update these values after they have been calculated from user input data.

