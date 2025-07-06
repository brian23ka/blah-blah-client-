import 'package:flutter/material.dart';

class ViewRideScreen extends StatelessWidget {
  const ViewRideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Ride Screen'),
      ),
      body: const Center(
        child: Text('View ride details'),
      ),
    );
  }
}
