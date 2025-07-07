import 'package:flutter/material.dart';

class RideDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ride = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text("Ride Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Driver: \${ride['driver']}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text("Time: \${ride['time']}"),
            SizedBox(height: 8),
            Text("Price: \${ride['price']}"),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text("Book Ride"),
              onPressed: () {
                // You can show confirmation or send to backend
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Ride booked successfully!"),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
