import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('New messages'),
              subtitle: Text('You have 5 new messages.'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('System updates'),
              subtitle: Text('There are updates available.'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Promotions'),
              subtitle: Text('Check out our new offers!'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Activity alerts'),
              subtitle: Text('Someone liked your post.'),
            ),
          ],
        ),
      ),
    );
  }
}
