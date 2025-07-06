import 'package:flutter/material.dart';

class RideDetailScreen extends StatelessWidget {
  const RideDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride Detail Screen'),
      ),
      body: const Center(
        child: Text('Details of a ride'),
      ),
    );
  }
}
