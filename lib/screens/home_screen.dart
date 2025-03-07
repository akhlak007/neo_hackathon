/*import 'package:flutter/material.dart';
import 'package:neo_hackathon/screens/ARNavigationScreen.dart';
import 'package:neo_hackathon/screens/BusScheduleScreen.dart';
import 'package:neo_hackathon/screens/CafeteriaScreen.dart';
import 'package:neo_hackathon/screens/ClassScheduleScreen.dart';
import 'package:neo_hackathon/screens/EventsClubsScreen.dart';
import 'package:neo_hackathon/screens/SettingsScreen.dart';
import 'package:neo_hackathon/widgets/feature_card.dart';
import 'package:neo_hackathon/widgets/sos_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = [
      {
        'name': 'Computer Science 101',
        'time': '09:00 AM - 10:30 AM',
        'location': 'Room 302, Building A',
        'professor': 'Dr. Smith'
      },
      {
        'name': 'Data Structures',
        'time': '11:00 AM - 12:30 PM',
        'location': 'Room 405, Building B',
        'professor': 'Prof. Johnson'
      },
      {
        'name': 'Artificial Intelligence',
        'time': '02:00 PM - 03:30 PM',
        'location': 'Lab 201, Building C',
        'professor': 'Dr. Williams'
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('University Companion'),
              background: Image.network(
                'https://images.unsplash.com/photo-1562774053-701939374585',
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person_outline),
                onPressed: () {},
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              delegate: SliverChildListDelegate([
                FeatureCard(
                  title: 'Cafeteria',
                  icon: Icons.restaurant_outlined,
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CafeteriaScreen()));
                  },
                ),
                FeatureCard(
                  title: 'Bus Schedule',
                  icon: Icons.directions_bus_outlined,
                  color: Colors.blue,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BusScheduleScreen()));
                  },
                ),
                FeatureCard(
                  title: 'Class Schedule',
                  icon: Icons.calendar_today_outlined,
                  color: Colors.purple,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ClassScheduleScreen()));
                  },
                ),
                FeatureCard(
                  title: 'Events & Clubs',
                  icon: Icons.event_outlined,
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const EventsClubsScreen()));
                  },
                ),
                FeatureCard(
                  title: 'AR Navigation',
                  icon: Icons.map_outlined,
                  color: Colors.red,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ARNavigationScreen()));
                  },
                ),
                FeatureCard(
                  title: 'AIAssistant',
                  icon: Icons.chat,
                  color: Colors.grey,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AIAssistantScreen()));
                  },
                ),
              ]),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final classData = classes[index];
                return ListTile(
                  title: Text(classData['name']!),
                  subtitle: Text('${classData['time']} • ${classData['location']}'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                );
              },
              childCount: classes.length,
            ),
          ),
        ],
      ),
      floatingActionButton: const SOSButton(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:neo_hackathon/screens/ARNavigationScreen.dart';
import 'package:neo_hackathon/screens/BusScheduleScreen.dart';
import 'package:neo_hackathon/screens/CafeteriaScreen.dart';
import 'package:neo_hackathon/screens/ClassScheduleScreen.dart';
import 'package:neo_hackathon/screens/EventsClubsScreen.dart';
import 'package:neo_hackathon/screens/NotificationsScreen.dart';
import 'package:neo_hackathon/screens/Settings.dart';
import 'package:neo_hackathon/screens/SettingsScreen.dart';
import 'package:neo_hackathon/widgets/feature_card.dart';
import 'package:neo_hackathon/widgets/sos_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = [
      {
        'name': 'Computer Science 101',
        'time': '09:00 AM - 10:30 AM',
        'location': 'Room 302, Building A',
        'professor': 'Dr. Smith'
      },
      {
        'name': 'Data Structures',
        'time': '11:00 AM - 12:30 PM',
        'location': 'Room 405, Building B',
        'professor': 'Prof. Johnson'
      },
      {
        'name': 'Artificial Intelligence',
        'time': '02:00 PM - 03:30 PM',
        'location': 'Lab 201, Building C',
        'professor': 'Dr. Williams'
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('University Companion'),
              background: Image.network(
                'https://images.unsplash.com/photo-1562774053-701939374585',
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            actions: [
              // Notifications Icon Button - Navigates to Notifications screen
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {
                  // Navigate to notifications screen (create NotificationsScreen if needed)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NotificationsScreen()), // Replace with NotificationsScreen if you have one
                  );
                },
              ),
              // Profile Icon Button - Navigates to Profile screen
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Navigate to profile screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()), // Replace with ProfileScreen if you have one
                  );
                },
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              delegate: SliverChildListDelegate([
                FeatureCard(
                  title: 'Cafeteria',
                  icon: Icons.restaurant_outlined,
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CafeteriaScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Bus Schedule',
                  icon: Icons.directions_bus_outlined,
                  color: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BusScheduleScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Class Schedule',
                  icon: Icons.calendar_today_outlined,
                  color: Colors.purple,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ClassScheduleScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Events & Clubs',
                  icon: Icons.event_outlined,
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EventsClubsScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'AR Navigation',
                  icon: Icons.map_outlined,
                  color: Colors.red,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ARNavigationScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'AIAssistant',
                  icon: Icons.chat,
                  color: Colors.grey,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AIAssistantScreen()), // Replace with correct screen if needed
                    );
                  },
                ),
              ]),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final classData = classes[index];
                return ListTile(
                  title: Text(classData['name']!),
                  subtitle: Text('${classData['time']} • ${classData['location']}'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // You can add action on class item tap, like opening a detailed class page
                  },
                );
              },
              childCount: classes.length,
            ),
          ),
        ],
      ),
      floatingActionButton: const SOSButton(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:neo_hackathon/screens/ARNavigationScreen.dart';
import 'package:neo_hackathon/screens/BusScheduleScreen.dart';
import 'package:neo_hackathon/screens/CafeteriaScreen.dart';
import 'package:neo_hackathon/screens/ClassScheduleScreen.dart';
import 'package:neo_hackathon/screens/EventsClubsScreen.dart';
import 'package:neo_hackathon/screens/NotificationsScreen.dart';
import 'package:neo_hackathon/screens/Settings.dart';
import 'package:neo_hackathon/screens/SettingsScreen.dart';
import 'package:neo_hackathon/widgets/feature_card.dart';
import 'package:neo_hackathon/widgets/sos_button.dart';
//import 'package:neo_hackathon/screens/AIAssistantScreen.dart'; // Import the AI Assistant screen
import 'package:neo_hackathon/screens/FacultyChatScreen.dart'; // Import the Faculty Chat screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = [
      {
        'name': 'Computer Science 101',
        'time': '09:00 AM - 10:30 AM',
        'location': 'Room 302, Building A',
        'professor': 'Dr. Smith'
      },
      {
        'name': 'Data Structures',
        'time': '11:00 AM - 12:30 PM',
        'location': 'Room 405, Building B',
        'professor': 'Prof. Johnson'
      },
      {
        'name': 'Artificial Intelligence',
        'time': '02:00 PM - 03:30 PM',
        'location': 'Lab 201, Building C',
        'professor': 'Dr. Williams'
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('University Companion'),
              background: Image.network(
                'https://images.unsplash.com/photo-1562774053-701939374585',
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NotificationsScreen()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()),
                  );
                },
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              delegate: SliverChildListDelegate([
                FeatureCard(
                  title: 'Cafeteria',
                  icon: Icons.restaurant_outlined,
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CafeteriaScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Bus Schedule',
                  icon: Icons.directions_bus_outlined,
                  color: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BusScheduleScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Class Schedule',
                  icon: Icons.calendar_today_outlined,
                  color: Colors.purple,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ClassScheduleScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Events & Clubs',
                  icon: Icons.event_outlined,
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EventsClubsScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'AR Navigation',
                  icon: Icons.map_outlined,
                  color: Colors.red,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ARNavigationScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'AIAssistant',
                  icon: Icons.chat,
                  color: Colors.grey,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AIAssistantScreen()),
                    );
                  },
                ),
              ]),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final classData = classes[index];
                return ListTile(
                  title: Text(classData['name']!),
                  subtitle: Text('${classData['time']} • ${classData['location']}'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                );
              },
              childCount: classes.length,
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          // Chat button for AI Assistant
          Positioned(
            bottom: 80,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AIAssistantScreen()),
                );
              },
              child: const Icon(Icons.chat),
              backgroundColor: Colors.blue,
            ),
          ),
          // Chat button for Faculty Chat
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FacultyChatScreen()),
                );
              },
              child: const Icon(Icons.message),
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:neo_hackathon/screens/ARNavigationScreen.dart';
import 'package:neo_hackathon/screens/BusScheduleScreen.dart';
import 'package:neo_hackathon/screens/CafeteriaScreen.dart';
import 'package:neo_hackathon/screens/ClassScheduleScreen.dart';
import 'package:neo_hackathon/screens/EventsClubsScreen.dart';
import 'package:neo_hackathon/screens/NotificationsScreen.dart';
import 'package:neo_hackathon/screens/Settings.dart';
import 'package:neo_hackathon/screens/SettingsScreen.dart';
import 'package:neo_hackathon/widgets/feature_card.dart';
import 'package:neo_hackathon/widgets/sos_button.dart'; // Import SOS button widget
//import 'package:neo_hackathon/screens/AIAssistantScreen.dart'; // Import the AI Assistant screen
import 'package:neo_hackathon/screens/FacultyChatScreen.dart'; // Import the Faculty Chat screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final classes = [
      {
        'name': 'Computer Science 101',
        'time': '09:00 AM - 10:30 AM',
        'location': 'Room 302, Building A',
        'professor': 'Dr. Smith'
      },
      {
        'name': 'Data Structures',
        'time': '11:00 AM - 12:30 PM',
        'location': 'Room 405, Building B',
        'professor': 'Prof. Johnson'
      },
      {
        'name': 'Artificial Intelligence',
        'time': '02:00 PM - 03:30 PM',
        'location': 'Lab 201, Building C',
        'professor': 'Dr. Williams'
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('University Companion'),
              background: Image.network(
                'https://images.unsplash.com/photo-1562774053-701939374585',
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NotificationsScreen()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()),
                  );
                },
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1,
              ),
              delegate: SliverChildListDelegate([
                FeatureCard(
                  title: 'Cafeteria',
                  icon: Icons.restaurant_outlined,
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CafeteriaScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Bus Schedule',
                  icon: Icons.directions_bus_outlined,
                  color: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BusScheduleScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Class Schedule',
                  icon: Icons.calendar_today_outlined,
                  color: Colors.purple,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ClassScheduleScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'Events & Clubs',
                  icon: Icons.event_outlined,
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EventsClubsScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'AR Navigation',
                  icon: Icons.map_outlined,
                  color: Colors.red,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ARNavigationScreen()),
                    );
                  },
                ),
                FeatureCard(
                  title: 'AIAssistant',
                  icon: Icons.chat,
                  color: Colors.grey,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AIAssistantScreen()),
                    );
                  },
                ),
              ]),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final classData = classes[index];
                return ListTile(
                  title: Text(classData['name']!),
                  subtitle: Text('${classData['time']} • ${classData['location']}'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                );
              },
              childCount: classes.length,
            ),
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          // Chat button for AI Assistant
          Positioned(
            bottom: 80,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AIAssistantScreen()),
                );
              },
              child: const Icon(Icons.chat),
              backgroundColor: Colors.blue,
            ),
          ),
          // Chat button for Faculty Chat
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FacultyChatScreen()),
                );
              },
              child: const Icon(Icons.message),
              backgroundColor: Colors.green,
            ),
          ),
          // SOS button
          Positioned(
            bottom: 150,
            right: 16,
            child: SOSButton(), // Add the SOS button here
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}



