enum Flavor {
  simpsonsviewer,
  wireviewer,
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
      default:
        return 'title';
    }
  }

  static String get placeholderUrl {
    switch (appFlavor) {
      case Flavor.simpsonsviewer:
        return 'https://cdn.vox-cdn.com/thumbor/lgOlyWAT77mWdutFCRS7k3m5KKI=/297x81:1426x928/1200x800/filters:focal(297x81:1426x928)/cdn.vox-cdn.com/uploads/chorus_image/image/35880068/simpsons.0.png';
      case Flavor.wireviewer:
        return 'https://static01.nyt.com/images/2008/03/10/arts/wiresec.jpg';
      default:
        return 'title';
    }
  }
}
