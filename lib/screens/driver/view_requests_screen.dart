import 'package:flutter/material.dart';

class ViewRequestsScreen extends StatelessWidget {
  const ViewRequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Requests Screen'),
      ),
      body: const Center(
        child: Text('View ride requests'),
      ),
    );
  }
}
