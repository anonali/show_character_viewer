// ignore_for_file: no_default_cases

import 'package:flutter/material.dart';

enum Flavor {
  simpsonsviewer,
  wireviewer,
  development,
  production,
  staging,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.simpsonsviewer:
        return 'Simpsons Character Viewer';
      case Flavor.wireviewer:
        return 'The Wire Character Viewer';
      case Flavor.development:
        return 'The Wire Character Viewer';
      case Flavor.production:
        return 'The Wire Character Viewer';
      case Flavor.staging:
        return 'The Wire Character Viewer';
      default:
        return 'title';
    }
  }

  static String get placeholderUrl {
    switch (appFlavor) {
      case Flavor.simpsonsviewer:
        return 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo_GAhF3dWD9XAUCnXj7CW7q95OaHHO9O7B7sXtHdr-tWK9FYdWkanAhx1HXpK_g_64NI&usqp=CAU';
      case Flavor.wireviewer:
        return 'https://static01.nyt.com/images/2008/03/10/arts/wiresec.jpg';
      default:
        return 'https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png';
    }
  }

  static ThemeData get theme {
    switch (appFlavor) {
      case Flavor.simpsonsviewer:
        return ThemeData(primarySwatch: Colors.yellow);
      case Flavor.wireviewer:
        return ThemeData(primarySwatch: Colors.grey);
      default:
        return ThemeData(primarySwatch: Colors.blue); // Fallback theme
    }
  }

  static String get searchHint {
    switch (appFlavor) {
      case Flavor.simpsonsviewer:
        return 'Homer Simpson...';
      case Flavor.wireviewer:
        return 'Omar Little...';
      default:
        return 'Enter a selection...';
    }
  }
}
