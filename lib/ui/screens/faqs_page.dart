import 'package:flutter/material.dart';

class FAQsPage extends StatelessWidget {
  const FAQsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frequently Asked Questions'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('How to change my password?'),
              subtitle: Text('Go to Settings > Account > Change Password.'),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('How to update my profile picture?'),
              subtitle: Text('Go to Settings > Profile > Upload Photo.'),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('How to contact support?'),
              subtitle: Text('You can contact support via the Help section in Settings.'),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('What is the app\'s privacy policy?'),
              subtitle: Text('You can find the privacy policy in Settings > Privacy & Security.'),
            ),
          ],
        ),
      ),
    );
  }
}
