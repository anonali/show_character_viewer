import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/character_shower/character_shower.dart';

class TabletLayout extends HookConsumerWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCharacter = ref.watch(selectedCharacterProvider);

    return Row(
      children: [
        const Expanded(child: Home()), // The main home widget on the left side.
        const VerticalDivider(),
        // If a character is selected, show the character view on the right. Otherwise, show a placeholder.
        Expanded(
          child: selectedCharacter != null
              ? ProviderScope(
                  overrides: [
                    selectedCharacterId.overrideWithValue(selectedCharacter),
                  ],
                  child: const CharacterView(),
                )
              : const Center(
                  child: Scaffold(
                    body: Center(child: Text("Please select a character")),
                  ),
                ),
        ),
      ],
    );
  }
}
