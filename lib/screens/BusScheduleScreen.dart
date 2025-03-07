/*import 'package:flutter/material.dart';

class BusScheduleScreen extends StatelessWidget {
  const BusScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Schedule'),
      ),
      body: Center(
        child: const Text('Bus Schedule Details'),
      ),
    );
  }
}
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
    final busSchedule = [
      {
        'busNumber': '101',
        'route': 'Building A → Building B → Cafeteria',
        'departureTime': '08:00 AM',
      },
      {
        'busNumber': '102',
        'route': 'Building B → Building C → Library',
        'departureTime': '09:00 AM',
      },
      {
        'busNumber': '103',
        'route': 'Building C → Cafeteria → Sports Complex',
        'departureTime': '10:00 AM',
      },
      {
        'busNumber': '104',
        'route': 'Building A → Building B → Sports Complex',
        'departureTime': '11:00 AM',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Schedule'),
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
              trailing: Text(bus['departureTime']!),
              onTap: () {
                // Simulate schedule changes or delays
                _sendNotification(
                    "Bus ${bus['busNumber']} is on time", "Next stop: ${bus['route']}");
              },
            ),
          );
        },
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



