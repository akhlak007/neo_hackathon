import 'package:flutter/material.dart';

class EventsClubsScreen extends StatelessWidget {
  const EventsClubsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('University Events & Clubs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'University Event Calendar',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            EventCard(
              eventTitle: 'Tech Talk: AI Innovations',
              eventDate: '2025-03-10',
              eventTime: '3:00 PM - 5:00 PM',
              eventDescription: 'Join us for a discussion on the latest in AI.',
              rsvp: true,
            ),
            EventCard(
              eventTitle: 'Annual Cultural Fest',
              eventDate: '2025-03-15',
              eventTime: '10:00 AM - 6:00 PM',
              eventDescription: 'A celebration of cultural diversity and talents.',
              rsvp: true,
            ),
            const SizedBox(height: 24),
            const Text(
              'Student Clubs & Activities',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ClubCard(
              clubName: 'Coding Club',
              activityDescription: 'Weekly coding challenges and workshops.',
            ),
            ClubCard(
              clubName: 'Music Club',
              activityDescription: 'Join us for jam sessions and music events.',
            ),
            ClubCard(
              clubName: 'Drama Society',
              activityDescription: 'Rehearsals for upcoming play productions.',
            ),
            const SizedBox(height: 24),
            const Text(
              'AI-Based Event Recommendations',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Based on your preferences, here are some event suggestions:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            EventRecommendationCard(
              recommendation: 'Attend the Annual Cultural Fest!',
              reason: 'This event matches your interest in cultural activities.',
            ),
            const SizedBox(height: 8),
            EventRecommendationCard(
              recommendation: 'Join the Tech Talk: AI Innovations!',
              reason: 'You showed interest in AI-related topics.',
            ),
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventTitle;
  final String eventDate;
  final String eventTime;
  final String eventDescription;
  final bool rsvp;

  const EventCard({
    required this.eventTitle,
    required this.eventDate,
    required this.eventTime,
    required this.eventDescription,
    required this.rsvp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              eventTitle,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Date: $eventDate'),
            Text('Time: $eventTime'),
            const SizedBox(height: 8),
            Text(eventDescription),
            const SizedBox(height: 8),
            rsvp
                ? ElevatedButton(
              onPressed: () {
                // Handle RSVP
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('RSVP successful!')),
                );
              },
              child: const Text('RSVP'),
            )
                : const Text('No RSVP required'),
          ],
        ),
      ),
    );
  }
}

class ClubCard extends StatelessWidget {
  final String clubName;
  final String activityDescription;

  const ClubCard({
    required this.clubName,
    required this.activityDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              clubName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(activityDescription),
          ],
        ),
      ),
    );
  }
}

class EventRecommendationCard extends StatelessWidget {
  final String recommendation;
  final String reason;

  const EventRecommendationCard({
    required this.recommendation,
    required this.reason,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recommendation,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(reason),
          ],
        ),
      ),
    );
  }
}
