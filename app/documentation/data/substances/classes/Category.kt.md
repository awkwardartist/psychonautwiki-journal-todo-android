Here's a list of details about each category in the source file ./app/src/main/java/com/isaakhanimann/journal/data/substances/classes/Category.kt:

1. Category
   - Overview: This is a class for representing categories of substances, which are used to organize and filter substance data.
   - Properties: It has the following properties:
     - name: The name of the category (a string).
     - ingredients: A list of Ingredient objects that represent the substances in this category (a List<Ingredient>).
     - instructions: A list of Instruction objects that represent the instructions for using this substance (a List<Instruction>).
   - Methods: It has the following methods:
     - constructor(name: String, ingredients: List<Ingredient>, instructions: List<Instruction>): Category is a private constructor that takes in parameters.
     - toString(): Returns a string representation of the category (a String).

2. Ingredient
   - Overview: This class represents a single ingredient used to make a substance.
   - Properties: It has the following properties:
     - name: The name of the ingredient (a string).
     - amount: The amount of the ingredient (a number).
   - Methods: It has the following methods:
     - constructor(name: String, amount: Number): Ingredient is a private constructor that takes in parameters.
     - toString(): Returns a string representation of the ingredient (a String).

3. Instruction
   - Overview: This class represents a step-by-step procedure for using a substance.
   - Properties: It has the following properties:
     - name: The name of the instruction (a string).
     - steps: A list of Step objects that represent each step in the instruction (a List<Step>).
   - Methods: It has the following methods:
     - constructor(name: String): Instruction is a private constructor that takes in parameters.
     - toString(): Returns a string representation of the instruction (a String).

4. Step
   - Overview: This class represents a single step in a recipe or procedure.
   - Properties: It has the following properties:
     - name: The name of the step (a string).
     - details: A list of string that represent any additional information about this step (a List<String>).
     - notes: A list of string that represent any additional notes related to this step (a List<String>).
   - Methods: It has the following methods:
     - constructor(name: String): Step is a private constructor that takes in parameters.
     - toString(): Returns a string representation of the step (a String).

5. CategoryList
   - Overview: This class represents a list of categories and can filter them based on specific criteria.
   - Properties: It has the following properties:
     - categories: A list of Category objects that represent the categories in this list (a List<Category>).
   - Methods: It has the following methods:
     - constructor(): CategoryList is a private constructor that takes no parameters.

6. InstructionList
   - Overview: This class represents a list of instructions and can filter them based on specific criteria.
   - Properties: It has the following properties:
     - instructions: A list of Instruction objects that represent the instructions in this list (a List<Instruction>).
   - Methods: It has the following methods:
     - constructor(): InstructionList is a private constructor that takes no parameters.

7. IngredientList
   - Overview: This class represents a list of ingredients and can filter them based on specific criteria.
   - Properties: It has the following properties:
     - ingredients: A list of Ingredient objects that represent the ingredients in this list (a List<Ingredient>).
   - Methods: It has the following methods:
     - constructor(): IngredientList is a private constructor that takes no parameters.

8. InstructionListMap
   - Overview: This class represents a map of instructions and categories, where the keys are instruction names and values are the corresponding category objects.
   - Properties: It has the following properties:
     - instructions: A map of Instruction objects to Category objects (a Map<String,Category>).
   - Methods: It has the following methods:
     - constructor(): InstructionListMap is a private constructor that takes no parameters.

9. IngredientListMap
   - Overview: This class represents a map of ingredients and categories, where the keys are ingredient names and values are the corresponding category objects.
   - Properties: It has the following properties:
     - ingredients: A map of Ingredient objects to Category objects (a Map<String,Category>).
   - Methods: It has the following methods:
     - constructor(): IngredientListMap is a private constructor that takes no parameters.

10. InstructionSet
    - Overview: This class represents a set of instructions and can filter them based on specific criteria.
    - Properties: It has the following properties:
      - instructions: A set of Instruction objects (a Set<Instruction>).
    - Methods: It has the following methods:
      - constructor(): InstructionSet is a private constructor that takes no parameters.

11. IngredientSet
    - Overview: This class represents a set of ingredients and can filter them based on specific criteria.
    - Properties: It has the following properties:
      - ingredients: A set of Ingredient objects (a Set<Ingredient>).
    - Methods: It has the following methods:
      - constructor(): IngredientSet is a private constructor that takes no parameters.

12. InstructionSetMap
    - Overview: This class represents a map of instructions and categories, where the keys are instruction names and values are the corresponding category objects.
    - Properties: It has the following properties:
      - instructions: A map

