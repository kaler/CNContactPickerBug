#  CNContactPickerViewController Bug

## Summary

`CNContactPickerPickerViewController` allows us to display the contacts in our Address Book.  It has single selection and multiple selection modes.  These modes are determined based upon which method is conformed to in `CNContactPickerDelegate`.  Multiple selection mode is selected by implementing:

```
func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact])
```

When in multiple selection mode, searching for a contact and then selecting a result does not call the delegate method.

## Steps To Reproduce:

1) Instaniate `CNContactPickerPickerViewController`
2) Set delegate
3) Conform to `didSelect contacts: [CNContact]`
4) `present` the view controller
5) Run
6) Tap search bar and start typing
7) Tap any result

## Expected Results:

View is dismissed and  `didSelect contacts: [CNContact]` is called

## Actual Results:

Nothing happens


## Test App Steps To Reproduce:

1) Tap Go
2) Search for a name in search bar
3) Tap a result

## Configuration:

Xcode 10.1, iOS 12.1, iPhone XS Max


https://openradar.appspot.com/radar?id=5020133273632768
