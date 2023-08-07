
# Show Character Viewer

A casual "TV show character" browsing app that securely deploys onto both iOS and Android using different build configurations & flavors 

## Features

- Ability to choose between a "Simpsons Character Viewer" and "The Wire Character Viewer"
- Both apps share the same codebase, but have differing API endpoints and unique properties (such as the show name, placeholder images, and some very light themeing)
- Search bar built using Flutter Portal, with flagging functionality (in the case user taps on a tappable gesture item when trying to lose focus from the search bar)
- Two unique app experiences based on device type. If mobile, tapping on a list item generates a new route, if tablet, tap selection populates the side-screen, 
- Sliver listview supports refreshing, just drag down on the list and then release.
- When a list is fetched, it is cached until no longer needed.
- Repository to handle all the networking, including services to process data before showing to user as APIs do not return clean and clear data. 
-Includes some light tests. Priority was given to testing the get request and checking the error handling of the repository. Additional tests to come in the future. 




## Installation

Just download the repo and choose either from a simpsonsviewer or wireviewer configuration in vs code. Alternatively you may also run the following in your console:

```dart
flutter run --flavor simpsonsviewer -t lib/main_simpsonsviewer.dart --dart-define-from-file=config_simpsons_viewer.json
```
or 
```dart
flutter run --flavor wireviewer -t lib/main_wireviewer.dart --dart-define-from-file=config_wire_viewer.json
```


## Troubleshooting
If you encounter issues, run these steps in order:
```dart
flutter clean
```
```dart
flutter pub get
```
```dart
cd ios
```
```dart
pod deintegrate 
```
```dart
pod install
```
```dart
cd ..
```
```dart
dart run build_runner build
```
```dart
dart run flutter_flavoriz
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
