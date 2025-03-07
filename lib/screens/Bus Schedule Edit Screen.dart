/*import 'package:flutter/material.dart';

class BusScheduleEditPage extends StatelessWidget {
  const BusScheduleEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Bus Schedule'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Bus Schedule Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Bus Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Route',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Departure Time',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Save or update bus schedule information
              },
              child: const Text('Save Changes'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(vertical: 14),
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
}*/
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class BusScheduleScreen extends StatefulWidget {
  const BusScheduleScreen({super.key});

  @override
  _BusScheduleScreenState createState() => _BusScheduleScreenState();
}

class _BusScheduleScreenState extends State<BusScheduleScreen> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();
    _initializeNotifications();
    _simulateBusDelay();
  }

  void _initializeNotifications() {
    final AndroidInitializationSettings initializationSettingsAndroid =
    AndroidInitializationSettings('app_icon');
    final InitializationSettings initializationSettings =
    InitializationSettings(android: initializationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void _simulateBusDelay() {
    // Simulate a random delay in bus schedule after 5 seconds
    Future.delayed(const Duration(seconds: 5), () {
      _sendNotification(
          "Bus 101 is delayed by 15 minutes", "New bus departure at 08:15 AM");
    });
  }

  void _sendNotification(String title, String body) async {
    const AndroidNotificationDetails androidDetails =
    AndroidNotificationDetails(
      'bus_schedule_channel',
      'Bus Schedule Notifications',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    const NotificationDetails notificationDetails =
    NotificationDetails(android: androidDetails);

    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      notificationDetails,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> busSchedule = [
      {
        'busNumber': '101',
        'route': 'Gulshan 1 → Banani → Dhaka University → Shahbagh → Building A → Cafeteria',
        'departureTime': '08:00 AM',
        'locations': [
          'Gulshan 1',
          'Banani',
          'Dhaka University',
          'Shahbagh',
          'Building A',
          'Cafeteria'
        ],
      },
      {
        'busNumber': '102',
        'route': 'Mohammadpur → Dhanmondi → Shahbagh → Building B → Library',
        'departureTime': '09:00 AM',
        'locations': [
          'Mohammadpur',
          'Dhanmondi',
          'Shahbagh',
          'Building B',
          'Library'
        ],
      },
      {
        'busNumber': '103',
        'route': 'Mirpur 10 → Khamar Bari → Farmgate → Building C → Sports Complex',
        'departureTime': '10:00 AM',
        'locations': [
          'Mirpur 10',
          'Khamar Bari',
          'Farmgate',
          'Building C',
          'Sports Complex'
        ],
      },
      {
        'busNumber': '104',
        'route': 'Motijheel → Paltan → Shahbagh → Building A → Sports Complex',
        'departureTime': '11:00 AM',
        'locations': [
          'Motijheel',
          'Paltan',
          'Shahbagh',
          'Building A',
          'Sports Complex'
        ],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Schedule'),
        actions: [
          IconButton(
            icon: const Icon(Icons.admin_panel_settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdminPanelScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: busSchedule.length,
        itemBuilder: (context, index) {
          final bus = busSchedule[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text('Bus ${bus['busNumber']}'),
              subtitle: Text('${bus['route']}'),
              trailing: Text(bus['departureTime'] ?? 'N/A'), // Handle null
              onTap: () {
                // Ensure bus['locations'] is a valid list and not null
                final List<dynamic> locations = bus['locations'] ?? [];
                final route = locations.isNotEmpty ? locations[0] : 'Unknown Location';
                _sendNotification(
                    "Bus ${bus['busNumber']} is on time", "Next stop: $route");
              },
            ),
          );
        },
      ),
    );
  }
}

class AdminPanelScreen extends StatefulWidget {
  const AdminPanelScreen({super.key});

  @override
  _AdminPanelScreenState createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
  final TextEditingController busNumberController = TextEditingController();
  final TextEditingController routeController = TextEditingController();
  final TextEditingController departureTimeController = TextEditingController();
  final TextEditingController locationsController = TextEditingController();

  void _addBusSchedule() {
    final busNumber = busNumberController.text;
    final route = routeController.text;
    final departureTime = departureTimeController.text;
    final locations = locationsController.text.split(',');

    // Add the bus schedule to the list
    if (busNumber.isNotEmpty && route.isNotEmpty && departureTime.isNotEmpty) {
      // Add to busSchedule (can use a database or state management)
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add New Bus Schedule',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: busNumberController,
              decoration: const InputDecoration(
                labelText: 'Bus Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: routeController,
              decoration: const InputDecoration(
                labelText: 'Route',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: departureTimeController,
              decoration: const InputDecoration(
                labelText: 'Departure Time',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: locationsController,
              decoration: const InputDecoration(
                labelText: 'Locations (comma separated)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addBusSchedule,
              child: const Text('Add Bus Schedule'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

