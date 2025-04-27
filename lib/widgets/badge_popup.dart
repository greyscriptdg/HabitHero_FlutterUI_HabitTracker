import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BadgePopup extends StatelessWidget {
  final String badgeName;
  final VoidCallback onClose;

  const BadgePopup({
    super.key,
    required this.badgeName,
    required this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.black54,
        child: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'assets/animations/badge_celebration.json', // <-- you can replace with your Lottie file
                width: 150,
                height: 150,
                repeat: false,
              ),
              const SizedBox(height: 20),
              Text(
                'Badge Unlocked!',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                badgeName,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: onClose,
                child: const Text('Awesome!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
