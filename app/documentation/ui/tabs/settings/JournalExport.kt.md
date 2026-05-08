# JournalExport.kt

## Overview

The `JournalExport` class represents a data structure for exporting the journal data from the PsychonautWiki Journal application. This class is used in conjunction with the `SettingsViewModel` to handle the export and import of user-generated experiences, including their associated ingestions, ratings, timed notes, and custom units.

## Classes/Types

### JournalExport

#### Properties

- **experiences**: A list of `ExperienceSerializable` objects representing all experiences.
- **substanceCompanions**: A list of substance companions.
- **customSubstances**: A list of custom substances.
- **customUnits**: A list of custom units.

## Methods/Functions

### Constructors

- **JournalExport(experiences: List<ExperienceSerializable>, substanceCompanions: List<Any>, customSubstances: List<Any>, customUnits: List<Any>)**:
  - Initializes a new `JournalExport` instance with the provided parameters.

### Functions

None explicitly defined in the class. It is likely used as a data container for export functionality within the application.

