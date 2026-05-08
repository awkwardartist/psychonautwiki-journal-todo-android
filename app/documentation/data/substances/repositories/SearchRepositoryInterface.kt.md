https://github.com/isaakhanimann/Journal-App/blob/main/app/src/main/java/com/isaakhanimann/journal/data/substances/repositories/SearchRepositoryInterface.kt?raw=true

Raw data:
```java
package com.isaakhanimann.journal.data.substances;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

import java.util.List;

public interface SearchRepositoryInterface {

    LiveData<List<SearchResult>> getAllSearchResults();
    LiveData<List<SearchResult>> getSearchResultsByName(String searchQuery);
    LiveData<List<SearchResult>> getSearchResultsBySynonym(String searchQuery);
    LiveData<List<SearchResult>> getSearchResultsByAlcoholicContent(String searchQuery);
}
```

