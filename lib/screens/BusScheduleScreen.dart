import 'package:flutter/material.dart';

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
