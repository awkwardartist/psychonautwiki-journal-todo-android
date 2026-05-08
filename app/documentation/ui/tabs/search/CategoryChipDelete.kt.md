# CategoryChipDelete

## Overview

The `CategoryChipDelete` component provides a way to delete a category chip from the UI. It accepts a `CategoryChipModel` object representing the category and a lambda function that will be called when the delete icon is tapped.

This component is likely used in conjunction with other components that display category chips, such as in the `SearchViewModel`.

## Classes/Types

### CategoryChipDelete

Represents the `CategoryChipDelete` composable function.

#### Parameters

- **categoryChipModel**: A `CategoryChipModel` object representing the category to be deleted.
- **onDelete**: A lambda function that will be called when the delete icon is tapped. This function does not take any parameters and returns nothing (`Unit`).

## Methods/Functions

### CategoryChipDelete

A composable function that displays a category chip with a delete icon.

#### Parameters

- **categoryChipModel**: A `CategoryChipModel` object representing the category to be deleted.
- **onDelete**: A lambda function that will be called when the delete icon is tapped. This function does not take any parameters and returns nothing (`Unit`).

#### Implementation

```kotlin
@Composable
fun CategoryChipDelete(
    categoryChipModel: CategoryChipModel,
    onDelete: () -> Unit
) {
    Surface(
        color = if (categoryChipModel.isActive) categoryChipModel.color else Color.Gray,
        contentColor = if (categoryChipModel.isActive) Color.White else Color.Black,
        shape = RoundedCornerShape(8.dp),
        modifier = Modifier.padding(4.dp)
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(text = categoryChipModel.chipName, style = MaterialTheme.typography.body2)
            Spacer(modifier = Modifier.width(8.dp))
            IconButton(onClick = onDelete) {
                Icon(Icons.Filled.Delete, contentDescription = "Delete")
            }
        }
    }
}
```

### Dependencies

- **MaterialTheme**: Used to provide the default text style for the category name.
- **Surface**: Provides a background color and shape for the category chip.
- **Row**: Arranges its children horizontally.
- **Text**: Displays the category name.
- **Spacer**: Adds space between the category name and the delete icon.
- **IconButton**: Provides a button with an icon for deleting the category.
- **Icons.Filled.Delete**: The icon used for the delete action.

