import 'package:flutter/material.dart';

class RiderHomeScreen extends StatefulWidget {
  @override
  _RiderHomeScreenState createState() => _RiderHomeScreenState();
}

class _RiderHomeScreenState extends State<RiderHomeScreen> {
  final _pickupController = TextEditingController();
  final _dropOffController = TextEditingController();

  @override
  void dispose() {
    _pickupController.dispose();
    _dropOffController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find a Ride")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _pickupController,
              decoration: InputDecoration(labelText: "Pickup Location"),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _dropOffController,
              decoration: InputDecoration(labelText: "Drop-off Location"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Search"),
              onPressed: () {
                Navigator.pushNamed(context, '/rider/list', arguments: {
                  'pickup': _pickupController.text,
                  'dropoff': _dropOffController.text,
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
