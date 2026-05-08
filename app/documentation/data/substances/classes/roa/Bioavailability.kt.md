<markdown>
bioavailability kt

// bioavailability.kt
package com.isaakhanimann.journal.data.substances.classes
{
    public class Bioavailability extends Substance {
        // fields

        private double absorptionCoef;
        private int d50;
        private boolean isBioavailable;
        private final List<String> knownDrugNames = new ArrayList<>();
        private final List<Double> knownDosages = new ArrayList<>();

        // constructors

        public Bioavailability(String name, double absorptionCoef, int d50, boolean isBioavailable) {
            super(name);
            this.absorptionCoef = absorptionCoef;
            this.d50 = d50;
            this.isBioavailable = isBioavailable;
        }

        // getters and setters

        public double getAbsorptionCoef() {
            return absorptionCoef;
        }

        public void setAbsorptionCoef(double absorptionCoef) {
            this.absorptionCoef = absorptionCoef;
        }

        public int getD50() {
            return d50;
        }

        public void setD50(int d50) {
            this.d50 = d50;
        }

        public boolean isBioavailable() {
            return isBioavailable;
        }

        public void setBioavailable(boolean bioavailable) {
            this.isBioavailable = bioavailable;
        }

        public List<String> getKnownDrugNames() {
            return knownDrugNames;
        }

        public void addKnownDrugName(String name) {
            knownDrugNames.add(name);
        }

        public void setKnownDrugNames(List<String> knownDrugNames) {
            this.knownDrugNames = knownDrugNames;
        }

        public List<Double> getKnownDosages() {
            return knownDosages;
        }

        public void addKnownDosage(double dosage) {
            knownDosages.add(dosage);
        }

        public void setKnownDosages(List<Double> knownDosages) {
            this.knownDosages = knownDosages;
        }
    }
}
</markdown>

