import 'package:flutter/material.dart';
import 'package:waste_management/pages/analytic_page.dart';
import 'package:waste_management/pages/calendar.dart';
import 'package:waste_management/pages/home_page.dart';
import 'package:waste_management/pages/menu_page.dart';
import 'package:waste_management/pages/waste_pickup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waste Management App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "Home",
      routes: {
        "Home": (context) => const HomePage(),
        "Waste": (context) => const WastePickup(),
        "Analytic": (context) => const AnalyticPage(),
        "Calender": (context) => CalendarPage(),
        "Menu": (context) => const MenuScreen(),
      },
    );
  }
}
