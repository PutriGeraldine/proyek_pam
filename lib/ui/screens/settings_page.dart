import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account Settings'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification Preferences'),
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Privacy & Security'),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
            ),
          ],
        ),
      ),
    );
  }
}
