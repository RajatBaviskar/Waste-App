import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Waste Management'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Map Section
            Container(
              height: 200,
              child: Image.asset('assets/map.png'),
            ),
            SizedBox(height: 16),
            // Real-Time Truck Tracking Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Real-Time Truck Tracking',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.recycling),
                        label: Text('Recycling'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        label: Text('Waste'),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.reduce_capacity),
                        label: Text('Reduction'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.insights),
                        label: Text('Impact'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // User Statistics Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('User Statistics',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Text(
                    'Your recycling efforts have significantly contributed to waste reduction in your community. Keep up the good work! Remember to sort your waste properly and follow the recycling guidelines to maximize your...',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "Waste");
                    },
                    child: Text('Schedule Waste Pickup'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Quick Access Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Quick Access',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/schedule_pickup.png'),
                            SizedBox(height: 8),
                            Text('Schedule Pickup',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text('Set a date and time...',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/recycling_guide.png'),
                            SizedBox(height: 8),
                            Text('Recycling Guide',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text('Learn how to recycle...',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/community_events.png'),
                            SizedBox(height: 8),
                            Text('Community Events',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text('Join local clean-up...',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/progress_tracker.png'),
                            const SizedBox(height: 8),
                            const Text('Progress Tracker',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 4),
                            const Text('Monitor your recydi...',
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.home),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "Analytic");
                        },
                        icon: Icon(Icons.analytics),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "Calender");
                        },
                        icon: Icon(Icons.calendar_month),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "Menu");
                        },
                        icon: Icon(Icons.person),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
