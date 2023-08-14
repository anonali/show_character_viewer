import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/app/app.dart';
import 'package:show_characters_viewer/flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.staging;
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
