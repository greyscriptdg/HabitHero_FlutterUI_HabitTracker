import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
<<<<<<< Updated upstream
=======
import 'package:confetti/confetti.dart';
>>>>>>> Stashed changes
import '../theme/theme_provider.dart';
import '../widgets/habit_card.dart';
import '../widgets/badge_popup.dart'; // 👈 new import for badge popup

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
<<<<<<< Updated upstream
=======
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ConfettiController _confettiController;
  bool _showBadge = false;

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

  void _unlockBadge() {
    setState(() {
      _showBadge = true;
    });
  }

  @override
>>>>>>> Stashed changes
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HabitHero'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
<<<<<<< Updated upstream
      body: Padding(
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Add Habit'),
        icon: const Icon(Icons.add),
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
          if (_showBadge)
            BadgePopup(
              badgeName: 'Consistency Hero 🦸',
              onClose: () {
                setState(() {
                  _showBadge = false;
                });
              },
            ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.extended(
            heroTag: 'add_habit',
            onPressed: _startConfetti,
            label: const Text('Add Habit'),
            icon: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          FloatingActionButton.extended(
            heroTag: 'unlock_badge',
            backgroundColor: Colors.deepPurple,
            onPressed: _unlockBadge,
            label: const Text('Unlock Badge'),
            icon: const Icon(Icons.emoji_events),
          ),
        ],
>>>>>>> Stashed changes
      ),
    );
  }
}
