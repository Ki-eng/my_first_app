import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Me')),
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            SizedBox(height: 16),
            Text(
              "Hi, I'm Kiran!", // ← your name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('I build cross-platform apps with Flutter.'),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('kiransaleem@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('github.com/kiransaleem'),
            ),
          ],
        ),
      ),
    );
  }
}
