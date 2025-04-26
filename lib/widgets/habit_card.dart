import 'package:flutter/material.dart';

class HabitCard extends StatelessWidget {
  final String habitName;
  final int streak;

  const HabitCard({
    super.key,
    required this.habitName,
    required this.streak,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        title: Text(
          habitName,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [Colors.purpleAccent, Colors.deepPurple],
            ),
          ),
          child: Text(
            '$streak🔥',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
