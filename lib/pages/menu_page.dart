import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              title: Text("Rajat Baviskar"),
              leading: Icon(Icons.person),
              subtitle: Text("rajatbaviskar@example.com"),
            ),
            const Divider(),
            _buildMenuItem(Icons.settings, "Settings"),
            _buildMenuItem(Icons.notifications, "Manage Notifications"),
            _buildMenuItem(Icons.delete, "Recycle Messages"),
            _buildMenuItem(Icons.person, "Account Settings"),
            _buildMenuItem(Icons.lock, "Privacy"),
            _buildMenuItem(Icons.bar_chart, "Statistics"),
            _buildMenuItem(Icons.volume_up, "Advertising"),
            _buildMenuItem(Icons.help, "Help & Support"),
            _buildMenuItem(Icons.power_settings_new, "Logout"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, // Handle Edit Profile button press
              child: const Text("Edit Profile"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // Set this dynamically if needed
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, "Home");
              break;
            case 1:
              Navigator.pushNamed(context, "Analytic");
              break;
            case 2:
              Navigator.pushNamed(context, "Calender");
              break;
            case 3:
              Navigator.pushNamed(context, "Menu");
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ), // Set
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {}, // Handle menu item tap
    );
  }
}
