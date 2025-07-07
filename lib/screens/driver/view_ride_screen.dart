import 'package:flutter/material.dart';

class ViewRideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ride = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text("Ride Posted")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pickup: \${ride['pickup']}"),
            Text("Drop-off: \${ride['dropoff']}"),
            Text("Time: \${ride['time']}"),
            Text("Price: \${ride['price']}"),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("View Requests"),
              onPressed: () => Navigator.pushNamed(context, '/driver/requests'),
            ),
          ],
        ),
      ),
    );
  }
}
