import 'package:flutter/material.dart';

import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // to make screen responsive, check if the screen width is greater than or equal to 600 pixels
    final isWideScreen = MediaQuery.of(context).size.width >= 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kiran's Portfolio"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // Wide screen: text and button side by side.
      // Narrow screen: stacked vertically.
      body: Center(
        child: isWideScreen
            ? const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: _WelcomeText()),
                  SizedBox(width: 32),
                  _AboutButton(),
                ],
              )
            : const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _WelcomeText(),
                  SizedBox(height: 24),
                  _AboutButton(),
                ],
              ),
      ),
      floatingActionButton: const _MessageButton(),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome to My Portfolio!',
      style: TextStyle(fontSize: 22),
      textAlign: TextAlign.center,
    );
  }
}

class _AboutButton extends StatelessWidget {
  const _AboutButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AboutScreen()),
        );
      },
      child: const Text('About Me'),
    );
  }
}

class _MessageButton extends StatelessWidget {
  const _MessageButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Hello! Thanks for tapping')),
        );
      },
      child: const Text('Show Message'),
    );
  }
}
