import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:confetti/confetti.dart'; // 👈 Add this
import '../theme/theme_provider.dart';
import '../widgets/habit_card.dart';

<<<<<<< Updated upstream
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
=======
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
>>>>>>> Stashed changes

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void _startConfetti() {
    _confettiController.play();
  }

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
<<<<<<< Updated upstream
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
=======
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: const [
                HabitCard(habitName: 'Morning Run', streak: 5),
                SizedBox(height: 16),
                HabitCard(habitName: 'Read 20 pages', streak: 12),
                SizedBox(height: 16),
                HabitCard(habitName: 'Meditate', streak: 7),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              emissionFrequency: 0.05,
              numberOfParticles: 30,
              gravity: 0.2,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _startConfetti, // 👈 Trigger confetti here!
        label: const Text('Add Habit'),
        icon: const Icon(Icons.add),
>>>>>>> Stashed changes
      ),
    );
  }
} 