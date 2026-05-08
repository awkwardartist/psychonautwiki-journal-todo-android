# ./app/src/main/java/com/isaakhanimann/journal/data/room/experiences/relations/IngestionWithCompanion.kt

## Overview

The `IngestionWithCompanion` class is a composite data structure designed to represent the relationship between an `Ingestion` and its associated `SubstanceCompanion`. This class facilitates querying and accessing related data within Room databases, making it easier to work with complex relationships.

## Classes/Types

### IngestionWithCompanion

Represents the relationship between an `Ingestion` and its associated `SubstanceCompanion`.

#### Properties

1. **ingestion (Ingestion)** - The primary ingestion record.
2. **substanceCompanion (SubstanceCompanion?)** - An optional companion substance associated with the ingestion.

## Methods/Functions

No methods are explicitly defined within this class as it is purely a data structure. However, it supports auto-generated getters and setters for its properties by Room's ORM capabilities.

---

This documentation provides an overview of the `IngestionWithCompanion` class, detailing its purpose, properties, and how it is used to represent relationships in Room databases. For more detailed usage examples or context-specific information, consider consulting additional parts of the codebase or seeking clarification from project maintainers.

