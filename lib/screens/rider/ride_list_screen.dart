import 'package:flutter/material.dart';

class RideListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    // Placeholder ride data
    final rides = [
      {'driver': 'Frank', 'time': '8:00 AM', 'price': 'KES 200'},
      {'driver': 'Anna', 'time': '9:00 AM', 'price': 'KES 250'},
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Available Rides")),
      body: ListView.builder(
        itemCount: rides.length,
        itemBuilder: (context, index) {
          final ride = rides[index];
          return ListTile(
            title: Text("Driver: ${ride['driver']}"),
            subtitle: Text("${ride['time']} - ${ride['price']}"),
            onTap: () => Navigator.pushNamed(context, '/rider/detail', arguments: ride),
          );
        },
      ),
    );
  }
}
