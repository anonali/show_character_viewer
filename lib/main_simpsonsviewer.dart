import 'package:show_characters_viewer/flavors.dart';

import 'package:show_characters_viewer/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.simpsonsviewer;
  await runner.main();
}
