import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/character_shower/character_shower.dart';
import 'package:show_characters_viewer/flavors.dart';
import 'package:show_characters_viewer/l10n/l10n.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: F.theme,
      builder: (context, child) {
        return _Unfocus(
          child: child!,
        );
      },
      home: _flavorBanner(
        child: const DeviceLayout(),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: (settings) {
        if (settings.name == null) {
          return null;
        }
        final split = settings.name!.split('/');
        Widget? result;
        if (settings.name!.startsWith('/characters/') && split.length == 3) {
          result = ProviderScope(
            overrides: [
              selectedCharacterId.overrideWithValue(split.last),
            ],
            child: const CharacterView(),
          );
        }

        if (result == null) {
          return null;
        }
        return MaterialPageRoute<void>(builder: (context) => result!);
      },
      routes: {
        '/character': (c) => const CharacterView(),
      },
    );
  }

  Widget _flavorBanner({
    required Widget child,
    bool show = true,
  }) =>
      show
          ? Banner(
              child: child,
              location: BannerLocation.topStart,
              message: F.name,
              color: Colors.green.withOpacity(0.6),
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.0,
                  letterSpacing: 1.0),
              textDirection: TextDirection.ltr,
            )
          : Container(
              child: child,
            );
}

/// A widget that unfocus everything when tapped.
///
/// This implements the "Unfocus when tapping in empty space" behavior for the
/// entire application.
class _Unfocus extends HookConsumerWidget {
  const _Unfocus({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
