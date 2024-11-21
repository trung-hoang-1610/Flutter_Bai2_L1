import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_switch_app/theme_provider.dart';
import 'package:theme_switch_app/theme_switch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://st3.depositphotos.com/9998432/13335/v/450/depositphotos_133352156-stock-illustration-default-placeholder-profile-icon.jpg',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            Text(
              'Flutter Theme Switcher',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showDialog(context);
              },
              child: const Text('Show Dialog'),
            ),
            const SizedBox(height: 20),
            ThemeSwitch(isDarkMode: themeProvider.isDarkMode),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog'),
          content: const Text('This is a simple dialog box.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
