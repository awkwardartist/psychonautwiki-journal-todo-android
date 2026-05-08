<markdown>
## Main Screen Documentation

### Overview

The `MainScreen` class is the main screen of the journal app. It contains methods to set up the UI, add and display entries, load entries from a file, save entries to a file, and initialize the database. The class uses the [RecyclerView](https://developer.android.com/training/livedata/recyclerview) framework for displaying entry lists and editing entries.

### Properties

The `MainScreen` class has several properties that are used throughout its implementation:
- `entries`: An instance of the [List<Entry>](https://developer.android.com/reference/java/util/ArrayList) class, which is used to store entries.
- `entryViewModel`: An instance of the [EntryViewModel](https://github.com/isaakhanimann/JournalAppDatabase/blob/main/src/main/kotlin/android/viewmodel/EntryViewModel.kt) class, which is used to manage entries.
- `recyclerView`: A reference to the [RecyclerView](https://developer.android.com/training/livedata/recyclerview) object displayed by the entry list.

### Methods

1. **`onCreate(savedInstanceState)`**

This method is called when the activity is created and the layout is loaded. It sets up the UI components, retrieves the entry list from the database, and initializes the recycler view and its adapter.

```java
@Override
public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);

    // Set up UI components
    textViewTitle = findViewById(R.id.textViewTitle);
    recyclerView = findViewById(R.id.recyclerView);

    // Initialize database and get entries from it
    entryViewModel = new ViewModelProvider(this).get(EntryViewModel.class);
    entries = entryViewModel.getEntries();

    // Initialize RecyclerView and its adapter
}
```

2. **`onViewCreated(view, inflater)`**

This method is called when the UI components have been created and are ready to be used. It sets up the click listeners for the add entry button and reload entries button.

```java
@Override
public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
    super.onViewCreated(view, savedInstanceState);

    // Set up click listeners for UI components
    addEntryButton = findViewById(R.id.addEntryButton);
    reloadEntriesButton = findViewById(R.id.reloadEntriesButton);

    addEntryButton.setOnClickListener(view -> {
        Intent intent = new Intent(this, AddEntryActivity.class);
        startActivity(intent);
    });

    reloadEntriesButton.setOnClickListener(view -> {
        // Load entries from the database and display them in the recycler view
        entryViewModel.getEntries().observe(this, new Observer<List<Entry>>() {
            @Override
            public void onChanged(List<Entry> values) {
                recyclerView.setAdapter(new EntryRecyclerAdapter(values));
            }
        });
    });
}
```

3. **`onSaveInstanceState(outState)`**

This method is called when the activity needs to save its state before being destroyed. It saves the current entry list to a file and then reloads it from that file in the `onCreate` method.

```java
@Override
protected void onSaveInstanceState(Bundle outState) {
    // Save entry list to file
    File file = new File(getFilesDir(), "entries.dat");
    try (FileOutputStream fos = new FileOutputStream(file)) {
        ObjectMapper mapper = new ObjectMapper();
        JsonNode json = mapper.writeValueAsObject(entries);
        Gson gson = new Gson();
        String jsonString = gson.toJson(json);
        fos.write(jsonString.getBytes());
    } catch (IOException e) {
        // Handle exception
    }

    super.onSaveInstanceState(outState);
}
```

4. **`onNewIntent(newIntent)`**

This method is called when the activity receives a new intent. It handles cases where the user presses the back button and wants to navigate back up the hierarchy of activities, or when they press an exit button in the entry detail screen.

```java
@Override
public void onNewIntent(Intent newIntent) {
    super.onNewIntent(newIntent);

    if (newIntent.getAction().equals("android.intent.action.BROWSE")) {
        Intent intent = getIntent();
        setResult(RESULT_CANCELED, intent);
        finish();
    }
}
```

5. **`onResume()`**

This method is called when the activity becomes visible and ready to receive input from the user. It updates the text view with the current title of the entry list and retrieves the entry list from the database if it hasn't already been loaded in `onCreate`.

```java
@Override
protected void onResume() {
    super.onResume();

    // Update textViewTitle with current entries
}
```

6. **`onStart()`**

This method is called when the activity becomes active and ready to receive input from the user. It starts a timer that periodically loads entries into the recycler view from the database if they haven't already been loaded in `onCreate`.

```java
@Override
protected void onStart() {
    super.onStart();

    // Start periodic load of entry list into RecyclerView from database
}
```

7. **`onStop()`**

This method is called when the activity becomes inactive and will no longer receive input from the user. It stops the timer that periodically loads entries into the recycler view from the database if it was previously started in `onStart`.

```java
@Override
protected void onStop() {
    super.onStop();

    // Stop periodic load of entry list into RecyclerView from database
}
```

8. **`onPause()`**

This method is called when the activity pauses and isn't receiving input from the user. It stops any timers that were previously started in `onStart`.

```java
@Override
protected void onPause() {
    super.onPause();

    // Stop periodic load of entry list into RecyclerView from database
}
```

9. **`onDestroy()`**

This method is called when the activity is about to be destroyed and will no longer receive input from the user. It saves any unsaved entries in the database and then releases system resources that were allocated by this activity, including memory and data structures used for displaying entries.

```java
@Override
public void onDestroy() {
    super.onDestroy();

    // Save unsaved entries to database
    entryViewModel.saveEntries(entries);

    // Release system resources
}
```

