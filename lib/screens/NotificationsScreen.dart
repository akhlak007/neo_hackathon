import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 10, // For example, 10 notifications
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: const Icon(Icons.notifications),
                title: Text('Notification #${index + 1}'),
                subtitle: const Text('This is the description of the notification'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add functionality for navigating to detailed notification page
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
