<markdown>


**SearchRepository.kt**:
```kotlin
// File: SearchRepository.kt
package com.isaakhanimann.journal.data.substances

import androidx.lifecycle.MutableLiveData

class SearchRepository {
    // ... (other class members)

    private lateinit var searchTerm: MutableLiveData<String> = MutableLiveData.create()
    private lateinit var substanceSearchDataSource: SubstanceSearchDataSource getter = null

    val searchTerm: MutableLiveData<String> get() = searchTerm
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

interface SubstanceSearchDataSource {
    fun get(searchTerm: String): Completable

    fun save(substance: Substance, id?: String): Completable
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class SubstanceSearchDataSourceImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceSearchDataSource {

    override fun get(searchTerm: String): Completable {
        return apiClient.querySubstanceByName(searchTerm)
    }

    override fun save(substance: Substance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class SubstanceFactory {
    // ... (other class members)

    @JvmStatic fun substanceByName(name: String): MutableLiveData<Substance> get() = MutableLiveData.create()
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun substanceByName(name: String): MutableLiveData<Substance> {
    val substance = Material.INSTANCE.findByName(name) ?: throw Exception("Substance not found")
    return SubstanceFactory.instance().substanceByName(name).observeForever()
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun saveSubstance(substance: Substance, id?: String): Completable {
    // ... (implementation details omitted for brevity)
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class JournalDataStore {
    // ... (other class members)

    private val substanceSearchRepository: SubstanceSearchRepository get() = SubstanceSearchRepositoryImpl(
        substanceFactory = MaterialSubstanceFactory(),
        substanceSearchDataSource = SubstanceSearchDataSourceImpl(
            apiClient = ApiClientImpl(),
            substanceFactory = MaterialSubstanceFactory()
        )
    )

    val substanceSearchRepository: SubstanceSearchRepository get() = substanceSearchRepository
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceFactory {
    // ... (other class members)

    @JvmStatic fun create(): Substance {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun create(): Substance {
    // ... (implementation details omitted for brevity)
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class ApiClientImpl {
    // ... (other class members)

    @JvmStatic fun querySubstanceByName(searchTerm: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class SubstanceFactory {
    // ... (other class members)

    @JvmStatic fun findByName(name: String): MaterialSubstance? {
        return MaterialSubstance::INSTANCE.findByName(name) ?: null
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun findByName(name: String): MaterialSubstance? {
    return MaterialSubstance::INSTANCE.findByName(name) ?: throw Exception("Substance not found")
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun create(): MaterialSubstance {
    // ... (implementation details omitted for brevity)
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstance {
    // ... (other class members)

    override fun toString(): String {
        return "MaterialSubstance(id: $id, name: $name)"
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceFactory {
    // ... (other class members)

    @JvmStatic fun create(): MaterialSubstance {
        return MaterialSubstance(id = "some-id", name = "some-name")
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun create(): MaterialSubstance {
    return MaterialSubstance(id = "some-id", name = "some-name")
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    MaterialSubstance {

    // ... (other class members)

    override fun toString(): String {
        return "MaterialSubstanceImpl(id: ${id}, name: ${name})"
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class ApiClientImpl {
    // ... (other class members)

    @JvmStatic fun querySubstanceByName(searchTerm: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class SubstanceFactory {
    // ... (other class members)

    @JvmStatic fun findByName(name: String): MaterialSubstance? {
        return MaterialSubstance::INSTANCE.findByName(name) ?: null
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun findByName(name: String): MaterialSubstance? {
    return MaterialSubstance::INSTANCE.findByName(name) ?: throw Exception("Substance not found")
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceFactory {
    // ... (other class members)

    @JvmStatic fun create(): MaterialSubstance {
        return MaterialSubstance(id = "some-id", name = "some-name")
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun create(): MaterialSubstance {
    return MaterialSubstance(id = "some-id", name = "some-name")
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    MaterialSubstance {

    // ... (other class members)

    override fun toString(): String {
        return "MaterialSubstanceImpl(id: ${id}, name: ${name})"
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    MaterialSubstance {

    // ... (other class members)

    override fun toString(): String {
        return "MaterialSubstanceImpl(id: ${id}, name: ${name})"
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class ApiClientImpl {
    // ... (other class members)

    @JvmStatic fun querySubstanceByName(searchTerm: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class SubstanceFactory {
    // ... (other class members)

    @JvmStatic fun findByName(name: String): MaterialSubstance? {
        return MaterialSubstance::INSTANCE.findByName(name) ?: null
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun findByName(name: String): MaterialSubstance? {
    return MaterialSubstance::INSTANCE.findByName(name) ?: throw Exception("Substance not found")
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    MaterialSubstance {

    // ... (other class members)

    override fun toString(): String {
        return "MaterialSubstanceImpl(id: ${id}, name: ${name})"
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun create(): MaterialSubstance {
    return MaterialSubstance(id = "some-id", name = "some-name")
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    MaterialSubstance {

    // ... (other class members)

    override fun toString(): String {
        return "MaterialSubstanceImpl(id: ${id}, name: ${name})"
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class ApiClientImpl {
    // ... (other class members)

    @JvmStatic fun querySubstanceByName(searchTerm: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class SubstanceFactory {
    // ... (other class members)

    @JvmStatic fun findByName(name: String): MutableLiveData<Substance> get() = MutableLiveData.create()
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

interface SubstanceRepository {
    fun get(id: String): Completable

    fun save(substance: Substance, id?: String): Completable
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class JournalDataStore {
    // ... (other class members)

    @JvmStatic fun createSubstanceRepository(): SubstanceRepository get() = MaterialSubstanceRepositoryImpl(
        apiClient = ApiClientImpl(),
        substanceFactory = MaterialSubstanceFactory()
    )
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun createSubstanceRepository(): SubstanceRepository get() = MaterialSubstanceRepositoryImpl(
    apiClient = ApiClientImpl(),
    substanceFactory = MaterialSubstanceFactory()
)
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class JournalDataStore {
    // ... (other class members)

    @JvmStatic fun createSubstanceRepository(): SubstanceRepository get() = MaterialSubstanceRepositoryImpl(
        apiClient: ApiClient,
        substanceFactory: SubstanceFactory
    )
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

fun createSubstanceRepository(): SubstanceRepository get() = MaterialSubstanceRepositoryImpl(
    apiClient: ApiClient,
    substanceFactory: SubstanceFactory
)
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Completable {
        return Completable.create { subscriber ->
            // ... (implementation details omitted for brevity)
            subscriber.onComplete()
        }
    }

    override fun save(substance: MaterialSubstance, id?: String): Completable {
        // ... (implementation details omitted for brevity)
    }
}
```


**SearchRepository.kt (continued)**:
```kotlin
// File: SearchRepository.kt (continued)
package com.isaakhanimann.journal.data.substances

class MaterialSubstanceRepositoryImpl(private val apiClient: ApiClient, private val substanceFactory: SubstanceFactory):
    SubstanceRepository {

    override fun get(id: String): Com

