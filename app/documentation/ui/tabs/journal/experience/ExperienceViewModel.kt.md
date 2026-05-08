## Overview

The `ExperienceViewModel` class is a crucial component within the ViewModel layer of an Android application, specifically designed for managing the business logic related to experiences (likely drug or substance consumption events). This ViewModel interacts with various repository services (`ConsumersRepository`, `SubstancesRepository`, and `IngestionsRepository`) to fetch, process, and update data about consumers, substances, and their ingestions.

The ViewModel exposes several LiveData objects that can be observed in the UI layer. These include:
- `consumersWithIngestions`: A list of consumers along with their associated ingestions.
- `dataForEffectLines`: Information used to generate effect lines on a timeline.
- `interactions`: A list of drug interactions recorded for experiences.

It also includes methods to fetch and update data, as well as handle interaction events such as adding, deleting, or editing substance properties. The ViewModel ensures that all operations are performed asynchronously using coroutines, providing UI thread safety.

## Classes/Types

### ExperienceViewModel

This is the primary class in the file, extending `AndroidViewModel`. It provides a structured way to encapsulate and manage business logic for handling experience-related data.

#### Properties

- `consumersRepository`: An instance of `ConsumersRepository` used to interact with consumer data.
- `substancesRepository`: An instance of `SubstancesRepository` used to interact with substance data.
- `ingestionsRepository`: An instance of `IngestionsRepository` used to interact with ingestion data.

#### Functions

##### init

Initializes the ViewModel, setting up the necessary repositories and LiveData objects.

##### consumersWithIngestions: LiveData<List<Consumer>>

A LiveData object representing a list of consumers along with their associated ingestions. Observing this LiveData will reflect any updates made to consumer or ingestion data.

##### fetchConsumers()

Asynchronously fetches consumers from the database using `consumersRepository.fetchAll()`.

##### fetchSubstances()

Asynchronously fetches substances from the database using `substancesRepository.fetchAll()`.

##### fetchIngestions()

Asynchronously fetches ingestions from the database using `ingestionsRepository.fetchAll()`.

##### addProperty(substanceId: Long, propertyKey: String, propertyValue: String)

Adds a new property to a substance. The parameters specify the substance ID and the key-value pair of the property to be added.

##### deleteProperty(propertyId: Long)

Deletes a property from the database. The parameter is the ID of the property to be deleted.

##### editProperty(substanceId: Long, propertyKey: String, propertyValue: String)

Edits an existing property for a substance. The parameters specify the substance ID and the updated key-value pair of the property.

##### addInteraction(interaction: Interaction)

Adds a new interaction to the database. The parameter is the `Interaction` object representing the interaction to be added.

##### deleteInteraction(interactionId: Long)

Deletes an interaction from the database. The parameter is the ID of the interaction to be deleted.

##### editInteraction(interactionId: Long, nameA: String, nameB: String, interactionType: InteractionType)

Edits an existing interaction in the database. The parameters specify the interaction ID and the updated details of the interaction.

### IngestionElement

This data class represents an element containing an ingestion with additional properties such as ROA (Route of Administration) duration and number of dots for graphical representation on a timeline.

- `ingestionWithCompanionAndCustomUnit`: An instance of `IngestionWithCompanionAndCustomUnit` representing the substance ingestion.
- `roaDuration`: An instance of `RoaDuration` providing details about the ROA duration, including onset, comeup, peak, offset, and total duration.
- `numDots`: An integer representing the number of dots used for graphical representation on a timeline.

### Interaction

This data class represents an interaction between two substances. It includes:
- `aName`: The name of substance A.
- `bName`: The name of substance B.
- `interactionType`: The type of interaction, which can be classified as safe or unsafe.

## Methods/Functions

The primary methods in the `ExperienceViewModel` are related to fetching and updating data from the repositories. These include:
- Fetching consumers, substances, and ingestions using respective repository methods.
- Adding, deleting, and editing properties of substances.
- Managing drug interactions, including adding, deleting, and editing interaction records.

These methods ensure that all operations are performed asynchronously using coroutines, making them thread-safe for UI use.

