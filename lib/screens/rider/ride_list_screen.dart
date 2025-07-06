import 'package:flutter/material.dart';

class RideListScreen extends StatelessWidget {
  const RideListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride List Screen'),
      ),
      body: const Center(
        child: Text('List of rides for rider'),
      ),
    );
  }
}
