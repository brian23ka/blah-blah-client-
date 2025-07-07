import 'package:flutter/material.dart';

class PostRideScreen extends StatefulWidget {
  @override
  _PostRideScreenState createState() => _PostRideScreenState();
}

class _PostRideScreenState extends State<PostRideScreen> {
  final _pickupController = TextEditingController();
  final _dropOffController = TextEditingController();
  final _timeController = TextEditingController();
  final _priceController = TextEditingController();

  @override
  void dispose() {
    _pickupController.dispose();
    _dropOffController.dispose();
    _timeController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  void _postRide() {
    final pickup = _pickupController.text;
    final dropOff = _dropOffController.text;
    final time = _timeController.text;
    final price = _priceController.text;

    if (pickup.isEmpty || dropOff.isEmpty || time.isEmpty || price.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    // Here you can add logic to send the ride data to backend or state management

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Ride posted successfully!')),
    );

    // Optionally clear the fields after posting
    _pickupController.clear();
    _dropOffController.clear();
    _timeController.clear();
    _priceController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post a Ride")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _pickupController, decoration: InputDecoration(labelText: 'Pickup')),
            TextField(controller: _dropOffController, decoration: InputDecoration(labelText: 'Drop-off')),
            TextField(controller: _timeController, decoration: InputDecoration(labelText: 'Time')),
            TextField(controller: _priceController, decoration: InputDecoration(labelText: 'Price')),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Post Ride"),
              onPressed: _postRide,
            ),
          ],
        ),
      ),
    );
  }
}
