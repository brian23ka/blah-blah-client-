import 'package:flutter/material.dart';

class RiderHomeScreen extends StatelessWidget {
  const RiderHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rider Home Screen'),
      ),
      body: const Center(
        child: Text('Rider Home Screen Content'),
      ),
    );
  }
}
