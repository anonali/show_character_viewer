import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:riverpod_base/app/app.dart';
// import 'package:riverpod_base/app/app_provider_observer.dart';

import 'package:show_characters_viewer/app/app.dart';

import 'package:show_characters_viewer/flavors.dart';

void main() {
  F.appFlavor = Flavor.simpsonsviewer;
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(
      ProviderScope(
        observers: [ProviderLogger()],
        child: const App(),
      ),
    ),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

// import 'package:show_characters_viewer/flavors.dart';

// import 'package:show_characters_viewer/main.dart' as runner;

// Future<void> main() async {
//   F.appFlavor = Flavor.simpsonsviewer;
//   await runner.main();
// }
