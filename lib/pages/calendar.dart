import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart'; // To format dates

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // Sample list of events
  final List<Map<String, dynamic>> _events = [
    {
      'title': '50kg iron pick up scheduled',
      'date': DateTime(2024, 10, 15),
    },
    {
      'title': 'Meeting with supplier',
      'date': DateTime(2024, 10, 17),
    },
    {
      'title': 'Warehouse inventory check',
      'date': DateTime(2024, 11, 5),
    },
    {
      'title': 'Project milestone review',
      'date': DateTime(2024, 11, 12),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime(2000),
              lastDay: DateTime(2100),
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // update `_focusedDay` here as well
                });
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),

            // Section for scheduled events
            const SizedBox(height: 20),
            const Text(
              "Scheduled Events",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _events.length,
                itemBuilder: (context, index) {
                  final event = _events[index];
                  String formattedDate =
                      DateFormat.yMMMMd().format(event['date']);
                  return ListTile(
                    leading: const Icon(Icons.event),
                    title: Text(event['title']),
                    subtitle: Text("Scheduled for: $formattedDate"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
