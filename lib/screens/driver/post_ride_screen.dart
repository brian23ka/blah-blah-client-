import 'package:flutter/material.dart';

class PostRideScreen extends StatelessWidget {
  const PostRideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Ride Screen'),
      ),
      body: const Center(
        child: Text('Post a new ride'),
      ),
    );
  }
}
