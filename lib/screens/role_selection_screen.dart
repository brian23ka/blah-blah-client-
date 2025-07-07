import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            child: Text('Rider'),
            onPressed: () => Navigator.pushNamed(context, '/rider/home'),
          ),
          ElevatedButton(
            child: Text('Driver'),
            onPressed: () => Navigator.pushNamed(context, '/driver/post'),
          ),
        ],
      ),
    );
  }
}
