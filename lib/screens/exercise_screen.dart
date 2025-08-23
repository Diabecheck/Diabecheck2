import 'package:flutter/material.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                color: Color(0xFF4CAF50),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.fitness_center, color: Colors.white, size: 36),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Exercise & Fitness', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                            Text('Stay Active, Stay Healthy', style: TextStyle(color: Colors.white, fontSize: 16)),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.timer, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              // Exercise Categories
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _ExerciseCategory(icon: Icons.directions_run, label: 'Cardio'),
                    _ExerciseCategory(icon: Icons.fitness_center, label: 'Strength'),
                    _ExerciseCategory(icon: Icons.accessibility_new, label: 'Flexibility'),
                    _ExerciseCategory(icon: Icons.pool, label: 'Swimming'),
                  ],
                ),
              ),
              // Today's Workout
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Today\'s Workout Plan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF4CAF50))),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFE8F5E8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Morning Cardio Session', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFF4CAF50))),
                    SizedBox(height: 8),
                    Text('• 30 minutes walking', style: TextStyle(color: Color(0xFF4CAF50))),
                    Text('• 15 minutes stretching', style: TextStyle(color: Color(0xFF4CAF50))),
                    Text('• 10 minutes yoga', style: TextStyle(color: Color(0xFF4CAF50))),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF4CAF50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: Text('Start Workout'),
                    ),
                  ],
                ),
              ),
              // Exercise History
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text('Recent Activities', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF4CAF50))),
                    Spacer(),
                    Text('View all...', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              const _ExerciseItem(title: 'Morning Walk', duration: '30 min', calories: '150 cal'),
              const _ExerciseItem(title: 'Yoga Session', duration: '20 min', calories: '80 cal'),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExerciseCategory extends StatelessWidget {
  final IconData icon;
  final String label;
  const _ExerciseCategory({required this.icon, required this.label});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFFE8F5E8),
          child: Icon(icon, color: Color(0xFF4CAF50)),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class _ExerciseItem extends StatelessWidget {
  final String title, duration, calories;
  const _ExerciseItem({required this.title, required this.duration, required this.calories});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        
      ),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Color(0xFF4CAF50)),
          SizedBox(width: 12),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF4CAF50))),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(duration, style: TextStyle(color: Color(0xFF4CAF50), fontWeight: FontWeight.bold)),
              Text(calories, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
