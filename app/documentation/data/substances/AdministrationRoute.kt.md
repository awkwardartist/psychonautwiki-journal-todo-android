Markdown Documentation for Source Code File: app/src/main/java/com/isaakhanimann/journal/data/Substance.kt
=============================================================
### Overview

This is the Java documentation for the `Substance` class, which represents a substance in the Journal application. It provides various methods and properties to manipulate and retrieve information about substances, such as their name, dose type, frequency, duration, and administration routes.

### Properties

#### SubstanceName

* Type: String
* Description: The name of the substance.

#### DoseType

* Type: String
* Description: The type of dose (e.g., oral, intravenous).

#### Frequency

* Type: Int
* Description: The frequency at which the substance is administered (e.g., daily, weekly).

#### Duration

* Type: Int
* Description: The duration for which the substance should be taken.

#### AdministrationRoutes

* Type: List<AdministrationRoute>
* Description: A list of administration routes used to administer the substance (e.g., oral, subcutaneous).

### Methods

#### getName()

* Returns: The name of the substance as a string.
* Description: Retrieves the name of the substance from the database or configuration file and returns it as a string. If no name is available, an empty string is returned.

#### getDoseType()

* Returns: The type of dose used to administer the substance (e.g., oral, intravenous).
* Description: Retrieves the dose type from the database or configuration file and returns it as a string. If no dose type is available, "Unknown" is returned.

#### getFrequency()

* Returns: The frequency at which the substance should be administered (e.g., daily, weekly).
* Description: Retrieves the frequency of administration from the database or configuration file and returns it as an integer. If no frequency is available, 0 is returned.

#### getDuration()

* Returns: The duration for which the substance should be taken (e.g., 7 days).
* Description: Retrieves the duration in days of administration from the database or configuration file and returns it as an integer. If no duration is available, 0 is returned.

#### getAdministrationRoutes()

* Returns: A list of administration routes used to administer the substance (e.g., oral, subcutaneous).
* Description: Retrieves a list of administration routes from the database or configuration file and returns it as a list of `AdministrationRoute` objects. If no routes are available, an empty list is returned.

#### setName(String name)

* Parameters: name (String) - The new name of the substance to be stored in the database or configuration file.
* Description: Sets the name of the substance in the database or configuration file based on a given string value. If no name is provided, an empty string will be set.

#### setDoseType(String doseType)

* Parameters: doseType (String) - The new type of dose used to administer the substance to be stored in the database or configuration file.
* Description: Sets the dose type of the substance in the database or configuration file based on a given string value. If no dose type is provided, "Unknown" will be set.

#### setFrequency(int frequency)

* Parameters: frequency (int) - The new frequency at which the substance should be administered to be stored in the database or configuration file.
* Description: Sets the frequency of administration for the substance in the database or configuration file based on an integer value. If no frequency is provided, 0 will be set.

#### setDuration(int duration)

* Parameters: duration (int) - The new duration for which the substance should be taken to be stored in the database or configuration file.
* Description: Sets the duration of administration for the substance in the database or configuration file based on an integer value. If no duration is provided, 0 will be set.

#### addAdministrationRoute(AdministrationRoute route)

* Parameters: route (AdministrationRoute) - The new administration route to be added to the list of routes for a substance in the database or configuration file.
* Description: Adds a new administration route to the list of routes for a substance in the database or configuration file based on an `AdministrationRoute` object. If no route is provided, a new administration route will be created and added.

### Example Usage

Here's an example usage scenario for the `Substance` class:
```java
import com.isaakhanimann.journal.data.AdministrationRoute;
import com.isaakhanimann.journal.data.Substance;

public class Main {
    public static void main(String[] args) {
        Substance substance = new Substance("Test", "Oral", 7, 10);

        System.out.println(substance.getName()); // prints: Test
        System.out.println(substance.getDoseType()); // prints: Oral
        System.out.println(substance.getFrequency()); // prints: 7
        System.out.println(substance.getDuration()); // prints: 10
        System.out.println(substance.getAdministrationRoutes());

        substance.setName("New Substance");
        substance.setDoseType("Intravenous");
        substance.setFrequency(3);
        substance.setDuration(5);

        AdministrationRoute oralRoute = new AdministrationRoute("Oral", "Tablet");
        substance.addAdministrationRoute(oralRoute);
    }
}
```

