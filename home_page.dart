import 'package:flutter/material.dart';
import 'event.dart';

void main() {
  runApp(EventApp());
}

class EventApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Event> events = [
    Event(
      title: 'Event 1',
      description: 'Description for Event 1',
      date: DateTime(2023, 7, 15),
    ),
    Event(
      title: 'Event 2',
      description: 'Description for Event 2',
      date: DateTime(2023, 7, 16),
    ),
    Event(
      title: 'Event 3',
      description: 'Description for Event 3',
      date: DateTime(2023, 7, 17),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          Event event = events[index];
          return ListTile(
            title: Text(event.title),
            subtitle: Text(event.description),
            trailing: Text(event.date.toString()),
          );
        },
      ),
    );
  }
}
