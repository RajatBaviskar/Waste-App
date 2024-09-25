import 'package:flutter/material.dart';

class WastePickup extends StatefulWidget {
  const WastePickup({super.key});

  @override
  State<WastePickup> createState() => _WastePickupState();
}

class _WastePickupState extends State<WastePickup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waste Pickup Scheduling'),
        actions: const [
          Icon(Icons.person),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Waste Pickup Scheduling',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            _buildOptionTile(
              icon: Icons.calendar_today,
              title: 'Upcoming Pickup',
              subtitle: 'Your next pickup is scheduled for October 15, 2023.',
            ),
            _buildOptionTile(
              icon: Icons.warning,
              title: 'Missed Pickup',
              subtitle: 'You missed a pickup on October 10, 2023...',
            ),
            _buildOptionTile(
              icon: Icons.refresh,
              title: 'Route Reschedule',
              subtitle: 'Route change for October 20, 2023. Check details.',
            ),
            _buildOptionTile(
              icon: Icons.help,
              title: 'Support',
              subtitle: 'Need help? Contact support.',
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
              ),
              child: const Text(
                '+ Book Pickup',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Support',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildOptionTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}
