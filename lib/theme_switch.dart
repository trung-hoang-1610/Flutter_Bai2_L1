import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_switch_app/theme_provider.dart';

class ThemeSwitch extends StatelessWidget {
  final bool isDarkMode;

  const ThemeSwitch({required this.isDarkMode, super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Light Mode'),
        Switch(
          value: isDarkMode,
          onChanged: (_) => themeProvider.toggleTheme(),
        ),
        const Text('Dark Mode'),
      ],
    );
  }
}
