
import 'package:flutter/material.dart';
import 'package:neo_hackathon/widgets/feature_card.dart';
import 'package:neo_hackathon/widgets/feature_card.dart';
import 'package:neo_hackathon/widgets/sos_button.dart';
//import 'package:university_companion/widgets/feature_card.dart';
//import 'package:university_companion/widgets/sos_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  // Navigate to notifications
                },
              ),
              IconButton(
                icon: const Icon(Icons.person_outline),
                onPressed: () {
                  // Navigate to profile
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
                const FeatureCard(
                  title: 'Cafeteria',
                  icon: Icons.restaurant_outlined,
                  color: Colors.orange,
                ),
                const FeatureCard(
                  title: 'Bus Schedule',
                  icon: Icons.directions_bus_outlined,
                  color: Colors.blue,
                ),
                const FeatureCard(
                  title: 'Class Schedule',
                  icon: Icons.calendar_today_outlined,
                  color: Colors.purple,
                ),
                const FeatureCard(
                  title: 'Events & Clubs',
                  icon: Icons.event_outlined,
                  color: Colors.green,
                ),
                const FeatureCard(
                  title: 'AR Navigation',
                  icon: Icons.map_outlined,
                  color: Colors.red,
                ),
                const FeatureCard(
                  title: 'Settings',
                  icon: Icons.settings_outlined,
                  color: Colors.grey,
                ),
              ]),
            ),
          ),
        ],
      ),
      floatingActionButton: const SOSButton(),
    );
  }
}
