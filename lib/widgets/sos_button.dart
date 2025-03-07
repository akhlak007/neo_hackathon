
import 'package:flutter/material.dart';

class SOSButton extends StatelessWidget {
  const SOSButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        // Implement SOS functionality
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Emergency SOS'),
            content: const Text(
              'This will alert campus security and emergency services. '
              'Are you sure you want to proceed?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  // Implement emergency alert
                  Navigator.pop(context);
                },
                child: const Text(
                  'Send Alert',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        );
      },
      backgroundColor: Colors.red,
      icon: const Icon(Icons.emergency_outlined),
      label: const Text('SOS'),
    );
  }
}
