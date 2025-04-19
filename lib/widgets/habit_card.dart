import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HabitCard extends StatelessWidget {
  final String habitName;
  final int streakCount;
  final bool isActive;

  const HabitCard({
    Key? key,
    required this.habitName,
    required this.streakCount,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  habitName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Chip(
                  label: Text(
                    '$streakCount 🔥',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: 0.7,
              backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    )
        .animate(
          target: isActive ? 1 : 0,
        )
        .shimmer(
          duration: 2.seconds,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        );
  }
} 