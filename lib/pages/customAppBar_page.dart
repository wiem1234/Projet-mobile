import 'package:cv/pages/theme_provider_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return AppBar(
      actions: [
        Switch(
          value: themeMode == ThemeMode.dark,
          onChanged: (_) {
            final newThemeMode =
            themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
            ref.read(themeModeProvider.notifier).setThemeMode(newThemeMode);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
