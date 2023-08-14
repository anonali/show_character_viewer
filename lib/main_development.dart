import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:riverpod_base/app/app.dart';
// import 'package:riverpod_base/app/app_provider_observer.dart';

import 'package:show_characters_viewer/app/app.dart';
import 'package:show_characters_viewer/flavors.dart';

void main() {
  F.appFlavor = Flavor.development;
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
