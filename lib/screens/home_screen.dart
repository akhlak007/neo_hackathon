import 'package:flutter/material.dart';
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
                  title: 'Settings',
                  icon: Icons.settings_outlined,
                  color: Colors.grey,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen()));
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
