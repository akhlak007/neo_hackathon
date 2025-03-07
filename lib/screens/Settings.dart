import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Profile Settings'),
              leading: const Icon(Icons.person),
              onTap: () {
                // Add functionality to navigate to profile settings page
              },
            ),
            ListTile(
              title: const Text('Privacy Settings'),
              leading: const Icon(Icons.lock),
              onTap: () {
                // Add functionality to navigate to privacy settings page
              },
            ),
            ListTile(
              title: const Text('Notifications'),
              leading: const Icon(Icons.notifications),
              onTap: () {
                // Add functionality to navigate to notification settings
              },
            ),
            ListTile(
              title: const Text('General Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {
                // Add functionality for general settings
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                // Add functionality for logging out
              },
            ),
          ],
        ),
      ),
    );
  }
}
