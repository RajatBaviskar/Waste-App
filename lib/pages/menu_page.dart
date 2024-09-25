import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {}, // Handle back button press
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              title: Text("Rajat Baviskar"),
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
        currentIndex: 1, // Set the active tab index
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
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
