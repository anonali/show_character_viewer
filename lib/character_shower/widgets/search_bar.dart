import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:show_characters_viewer/character_shower/character_shower.dart'
    hide Icon;

// Define the appearance and behavior of the search bar when focused and unfocused.
class _SearchTheme {
  const _SearchTheme({
    required this.width,
    // ignore: unused_element, blocked by https://github.com/dart-lang/linter/issues/3232
    this.height = 300,
    required this.searchDecoration,
    required this.iconPadding,
    required this.searchMargin,
  });

  final double width;
  // Maximum height of the search hints dropdown.
  final double height;
  final BoxDecoration searchDecoration;
  final EdgeInsets iconPadding;
  final EdgeInsets searchMargin;
}

// Static configurations for the focused and unfocused themes.
const _kFocusedTheme = _SearchTheme(
  width: 300,
  searchDecoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  iconPadding: EdgeInsets.only(right: 8),
  searchMargin: EdgeInsets.only(right: 10),
);

const _kUnfocusedTheme = _SearchTheme(
  width: 40,
  searchDecoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  iconPadding: EdgeInsets.zero,
  searchMargin: EdgeInsets.only(right: 10),
);

// StateNotifier to track the focus state of the search bar.
class FocusNotifier extends StateNotifier<bool> {
  FocusNotifier() : super(false);

  void focusChanged(bool isFocused) {
    state = isFocused;
  }
}

// Provider to get the focus state of the search bar.
final searchBarFocusProvider =
    StateNotifierProvider<FocusNotifier, bool>((ref) => FocusNotifier());

// StateNotifier to determine if navigation should be prevented.
class PreventNavigationNotifier extends StateNotifier<bool> {
  PreventNavigationNotifier() : super(false);

  void toggle(bool value) {
    state = value;
  }
}

final preventNavigationProvider =
    StateNotifierProvider<PreventNavigationNotifier, bool>(
        (ref) => PreventNavigationNotifier());

// The primary search bar widget.
class SearchBar extends HookConsumerWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// Whether the widget is focused or not determines if the widget
    /// is currently searching or in idle state.
    final searchFocusNode = useFocusNode();

    useListenable(searchFocusNode);

    final theme = searchFocusNode.hasFocus ? _kFocusedTheme : _kUnfocusedTheme;

    final textFocusNode = useFocusNode();
    final textEditingController = useTextEditingController();
    useEffect(() {
      void handleFocusChange() {
        if (!searchFocusNode.hasFocus) {
          textEditingController.clear();
          // Setting the flag to true for a short duration when search bar loses focus
          ref.read(preventNavigationProvider.notifier).toggle(true);
          Future.delayed(const Duration(milliseconds: 500), () {
            ref.read(preventNavigationProvider.notifier).toggle(false);
          });
        }
        ref
            .read(searchBarFocusProvider.notifier)
            .focusChanged(searchFocusNode.hasFocus);
      }

      searchFocusNode.addListener(handleFocusChange);
      return () => searchFocusNode.removeListener(handleFocusChange);
    }, [searchFocusNode]);
    // Animation for showing and hiding search hints.
    final hints = TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 150),
      tween: Tween(
        begin: 0,
        end: searchFocusNode.hasFocus ? 1 : 0,
      ),
      builder: (context, opacity, child) {
        return Opacity(
          opacity: opacity,
          child: child,
        );
      },
      child: _SearchHintContainer(
        theme: theme,
        child: _SearchHints(textEditingController: textEditingController),
      ),
    );

    // Main view of the search bar.
    final searchField = _SearchbarView(
      theme: theme,
      isFocused: searchFocusNode.hasFocus,
      textEditingController: textEditingController,
      textFocusNode: textFocusNode,
    );

    return Focus(
      focusNode: searchFocusNode,
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 150),
        tween: Tween(end: theme.width),
        builder: (context, width, _) {
          return Center(
            child: SizedBox(
              width: width,
              child: PortalTarget(
                visible: width > 40 || searchFocusNode.hasFocus,
                anchor: const Aligned(
                    follower: Alignment.topCenter,
                    target: Alignment.bottomCenter),
                portalFollower: SizedBox(width: width, child: hints),
                child: searchField,
              ),
            ),
          );
        },
      ),
    );
  }
}

// Widget to display search hints based on the user's query.
class _SearchHints extends HookConsumerWidget {
  const _SearchHints({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  String _shortenDescription(String description) {
    if (description.length > 80) {
      // Change 80 to any number you prefer
      return '${description.substring(0, 77)}...';
    }
    return description;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = useValueListenable(textEditingController).text;

    final count = ref.watch(charactersCount(search));
    final deviceService = ref.read(deviceServiceProvider);

    if (count == 0) {
      return const Center(child: Text("No characters found"));
    }

    return ListView.separated(
      shrinkWrap: true,
      itemCount: count,
      separatorBuilder: (context, _) => const Divider(height: 1),
      itemBuilder: (context, index) {
        return HookConsumer(
          builder: (context, ref, child) {
            final character = ref.watch(characterAtOffset(
              CharacterOffset(offset: index, text: search),
            ));

            return ListTile(
              onTap: () {
                FocusScope.of(context).unfocus();
                if (!deviceService.isMobileDevice()) {
                  ref
                      .read(selectedCharacterProvider.notifier)
                      .selectCharacter(character.hash ?? '');
                } else {
                  Navigator.pushNamed(context, '/characters/${character.hash}');
                }
              },
              title: Text(
                character.name ?? '',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                _shortenDescription(character.description ?? ''),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            );
          },
        );
      },
    );
  }
}

// TODO: Update queries and filter the list based on names being queries first in the list and then queries containing matching data in description after
class _SearchHintContainer extends StatelessWidget {
  const _SearchHintContainer({
    Key? key,
    required this.theme,
    required this.child,
  }) : super(key: key);

  final _SearchTheme theme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: theme.height,
      ),
      margin: theme.searchMargin,
      child: Material(
        elevation: 16,
        borderRadius: theme.searchDecoration.borderRadius,
        clipBehavior: Clip.hardEdge,
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxHeight: theme.height,
          maxWidth: 300,
          child: child,
        ),
      ),
    );
  }
}

class _SearchbarView extends StatelessWidget {
  const _SearchbarView({
    Key? key,
    required this.theme,
    required this.isFocused,
    required this.textEditingController,
    required this.textFocusNode,
  }) : super(key: key);

  final _SearchTheme theme;
  final bool isFocused;
  final TextEditingController textEditingController;
  final FocusNode textFocusNode;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        GestureDetector(
          // Don't unfocus when tapping the searchbar
          behavior: HitTestBehavior.opaque,
          onTap: () {},
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            width: theme.width,
            height: 35,
            margin: theme.searchMargin,
            decoration: theme.searchDecoration,
          ),
        ),
        Positioned.fill(
          left: 12,
          right: 50,
          child: ExcludeSemantics(
            excluding: !isFocused,
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextField(
                controller: textEditingController,
                focusNode: textFocusNode,
                scrollController: ScrollController(),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Homer Simpson',
                ),
              ),
            ),
          ),
        ),
        AnimatedTheme(
          data: isFocused //
              ? ThemeData.light()
              : ThemeData.dark(),
          child: AnimatedPadding(
            duration: const Duration(milliseconds: 150),
            padding: theme.iconPadding,
            child: IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Search by name or description',
              onPressed: textFocusNode.requestFocus,
            ),
          ),
        ),
      ],
    );
  }
}
