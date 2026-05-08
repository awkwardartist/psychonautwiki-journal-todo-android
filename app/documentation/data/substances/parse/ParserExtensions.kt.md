## Overview

The file `ParserExtensions.kt` provides utility functions to simplify parsing operations within a Kotlin codebase. These functions are designed to handle JSON data by providing methods for safely accessing values without throwing exceptions if they do not exist. This is particularly useful when dealing with APIs or configurations that may return null values.

This overview will focus on the `ParserExtensions.kt` file, detailing the extension functions provided and their usage in parsing operations.

## Classes/Types

The file does not contain any custom classes or types. Instead, it provides utility functions as extensions to existing Kotlin classes such as `JSONObject`, `JSONArray`, and others.

## Methods/Functions

### getOptionalString(JSONObject, String)

```kotlin
fun JSONObject.getOptionalString(key: String): String?
```

- **Description**: Retrieves a string value from the JSON object using the specified key. If the key does not exist or its value is not a string, it returns `null`.
- **Parameters**:
  - `key`: The key used to retrieve the value.
- **Return Value**: A nullable string representing the value associated with the key.

### getOptionalDouble(JSONObject, String)

```kotlin
fun JSONObject.getOptionalDouble(key: String): Double?
```

- **Description**: Retrieves a double value from the JSON object using the specified key. If the key does not exist or its value is not a number, it returns `null`.
- **Parameters**:
  - `key`: The key used to retrieve the value.
- **Return Value**: A nullable double representing the value associated with the key.

### getOptionalBoolean(JSONObject, String)

```kotlin
fun JSONObject.getOptionalBoolean(key: String): Boolean?
```

- **Description**: Retrieves a boolean value from the JSON object using the specified key. If the key does not exist or its value is not a boolean, it returns `null`.
- **Parameters**:
  - `key`: The key used to retrieve the value.
- **Return Value**: A nullable boolean representing the value associated with the key.

### getOptionalInt(JSONObject, String)

```kotlin
fun JSONObject.getOptionalInt(key: String): Int?
```

- **Description**: Retrieves an integer value from the JSON object using the specified key. If the key does not exist or its value is not a number, it returns `null`.
- **Parameters**:
  - `key`: The key used to retrieve the value.
- **Return Value**: A nullable integer representing the value associated with the key.

### getOptionalJSONArray(JSONObject, String)

```kotlin
fun JSONObject.getOptionalJSONArray(key: String): JSONArray?
```

- **Description**: Retrieves a JSON array from the JSON object using the specified key. If the key does not exist or its value is not an array, it returns `null`.
- **Parameters**:
  - `key`: The key used to retrieve the value.
- **Return Value**: A nullable JSONArray representing the value associated with the key.

### getOptionalJSONObject(JSONObject, String)

```kotlin
fun JSONObject.getOptionalJSONObject(key: String): JSONObject?
```

- **Description**: Retrieves a JSON object from the JSON object using the specified key. If the key does not exist or its value is not an object, it returns `null`.
- **Parameters**:
  - `key`: The key used to retrieve the value.
- **Return Value**: A nullable JSONObject representing the value associated with the key.

## Usage Context

These utility functions are particularly useful in scenarios where you need to parse JSON data and handle potential null values gracefully. By using these methods, developers can avoid unnecessary exceptions and make their code more robust and easier to maintain.

