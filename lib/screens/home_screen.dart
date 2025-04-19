import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';
import '../widgets/habit_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HabitHero'),
        actions: [
          IconButton(
            icon: Icon(
              context.watch<ThemeProvider>().isDarkMode
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          HabitCard(
            habitName: 'Morning Meditation',
            streakCount: 7,
            isActive: true,
          ),
          SizedBox(height: 16),
          HabitCard(
            habitName: 'Daily Exercise',
            streakCount: 3,
          ),
          SizedBox(height: 16),
          HabitCard(
            habitName: 'Read 30 Minutes',
            streakCount: 5,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement habit completion
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 