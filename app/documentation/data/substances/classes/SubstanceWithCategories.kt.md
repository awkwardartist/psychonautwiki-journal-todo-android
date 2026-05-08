Here is the detailed documentation for the source file ./app/src/main/java/com/isaakhanimann/journal/data/substances/classes/SubstanceWithCategories.kt:

1. Class Name: SubstanceWithCategories
    - Purpose: Represents a substance with associated categories and information about its usage, effects, etc.

2. Properties:
   - SubstanceId (String): Unique identifier for the substance.
   - Type (String): Type of substance e.g., herb, supplement, drug.
   - Synonyms (List<String>): List of synonyms or aliases for the substance.
   - Effects (List<Effect>): List of effects associated with the substance.
   - Categories (Map<String, List<String>>): Map where each key is a category and its value is another map containing the substances that belong to that category as keys and their usages/benefits as values.

3. Methods:
   - addCategory(categoryName: String, substances: List<String>): Adds a new category with associated substances to the categories property.
   - getCategories(): Returns all categories and their associated substances.

4. Inheritance:
   - Substance (Abstract class in com/isaakhanimann/journal/data/substances/interfaces/Substance.kt)

Here is the detailed code documentation for each section:

```java
// Enum to represent different types of substances
public enum SubstanceType {
    DRUG, HERB, SUPPLEMENT;

    // Gets a specific substance type based on its ID
    public static SubstanceType getSubstanceType(String id) {
        return values().stream()
                .filter(type -> type.name().equalsIgnoreCase(id))
                .findFirst()
                .orElseThrow();
    }
}
```

5. Abstract class to represent a substance with effects and categories

    ```java
public abstract class SubstanceWithEffects<E extends Effect> implements Substance {
    // Gets the id of this substance
    public abstract String getId();

    // Gets the synonyms for this substance
    @Override
    public List<String> getSynonyms() {
        return Collections.emptyList();
    }

    // Gets all effects associated with this substance
    @Override
    public List<E> getEffects() {
        return Collections.emptyList();
    }

    // Adds a new effect to the list of effects for this substance
    public void addEffect(E e) {
    }
}
```

6. Class that represents an abstract concept or idea associated with a substance

    ```java
public abstract class SubstanceWithAssociations<T> implements Substance {
    // Gets the id of this substance
    @Override
    public String getId() {
        return null;
    }

    // Gets the association between substances for this category
    public List<T> getAssociation(SubstanceType type) {
        return Collections.emptyList();
    }
}
```

7. Concrete classes that represent specific types of substance and their associated effects/categories:

    ```java
public class Herb extends SubstanceWithAssociations<HerbalEffect> implements Substance {
    // Gets the id of this herb
    @Override
    public String getId() {
        return "Herb";
    }
}
```

8. Class that represents an abstract concept or idea associated with a substance

    ```java
public class Supplement extends SubstanceWithAssociations<SupplementEffect> implements Substance {
    // Gets the id of this supplement
    @Override
    public String getId() {
        return "Supplements";
    }
}
```

9. Class that represents an abstract concept or idea associated with a substance

    ```java
public class Drug extends SubstanceWithAssociations<DrugEffect> implements Substance {
    // Gets the id of this drug
    @Override
    public String getId() {
        return "Drug";
    }
}
```

10. Class that represents an abstract concept or idea associated with a substance

    ```java
public class Herb extends SubstanceWithAssociations<HerbalEffect> implements Substance {
    // Gets the id of this herb
    @Override
    public String getId() {
        return "Herb";
    }
}

11. Class that represents an abstract concept or idea associated with a substance

    ```java
public class Supplement extends SubstanceWithAssociations<SupplementEffect> implements Substance {
    // Gets the id of this supplement
    @Override
    public String getId() {
        return "Supplements";
    }
}

12. Class that represents an abstract concept or idea associated with a substance

    ```java
public class Drug extends SubstanceWithAssociations<DrugEffect> implements Substance {
    // Gets the id of this drug
    @Override
    public String getId() {
        return "Drug";
    }
}
```

