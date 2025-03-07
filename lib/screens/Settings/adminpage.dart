/*import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: const Text('Edit Cafeteria'),
            trailing: const Icon(Icons.edit),
            onTap: () {
              // Add logic to navigate to Cafeteria editing screen
            },
          ),
          ListTile(
            title: const Text('Edit Bus Schedule'),
            trailing: const Icon(Icons.edit),
            onTap: () {
              // Add logic to navigate to Bus Schedule editing screen
            },
          ),
          ListTile(
            title: const Text('Edit Class Schedule'),
            trailing: const Icon(Icons.edit),
            onTap: () {
              // Add logic to navigate to Class Schedule editing screen
            },
          ),
          ListTile(
            title: const Text('Edit Events & Clubs'),
            trailing: const Icon(Icons.edit),
            onTap: () {
              // Add logic to navigate to Events & Clubs editing screen
            },
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildAdminOption(
              context,
              'Edit Cafeteria',
              Icons.fastfood,
                  () {
                // Navigate to Cafeteria editing screen
              },
            ),
            _buildAdminOption(
              context,
              'Edit Bus Schedule',
              Icons.directions_bus,
                  () {
                // Navigate to Bus Schedule editing screen
              },
            ),
            _buildAdminOption(
              context,
              'Edit Class Schedule',
              Icons.access_alarm,
                  () {
                // Navigate to Class Schedule editing screen
              },
            ),
            _buildAdminOption(
              context,
              'Edit Events & Clubs',
              Icons.event,
                  () {
                // Navigate to Events & Clubs editing screen
              },
            ),
            const SizedBox(height: 20),
            // Add other options or logout button
            ElevatedButton.icon(
              onPressed: () {
                // Logic for logging out or any other action
              },
              icon: const Icon(Icons.exit_to_app),
              label: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Red button for logout
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdminOption(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
        onTap: onTap,
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:neo_hackathon/screens/Bus%20Schedule%20Edit%20Screen.dart';
import 'package:neo_hackathon/screens/Cafeteria%20Edit%20Screen.dart';
import 'package:neo_hackathon/screens/Class%20Schedule%20Edit%20Screen.dart';
import 'package:neo_hackathon/screens/Events%20&%20Clubs%20Edit%20Screen.dart';


class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildAdminOption(
              context,
              'Edit Cafeteria',
              Icons.fastfood,
                  () {
                // Navigate to Cafeteria editing screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CafeteriaEditScreen()),
                );
              },
            ),
            _buildAdminOption(
              context,
              'Edit Bus Schedule',
              Icons.directions_bus,
                  () {
                // Navigate to Bus Schedule editing screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BusScheduleScreen()),
                );
              },
            ),
            _buildAdminOption(
              context,
              'Edit Class Schedule',
              Icons.access_alarm,
                  () {
                // Navigate to Class Schedule editing screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ClassScheduleEditPage()),
                );
              },
            ),
            _buildAdminOption(
              context,
              'Edit Events & Clubs',
              Icons.event,
                  () {
                // Navigate to Events & Clubs editing screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EventsClubsEditPage()),
                );
              },
            ),
            const SizedBox(height: 20),
            // Add other options or logout button
            ElevatedButton.icon(
              onPressed: () {
                // Logic for logging out or any other action
              },
              icon: const Icon(Icons.exit_to_app),
              label: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Red button for logout
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdminOption(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
        onTap: onTap,
      ),
    );
  }
}


