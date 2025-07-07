import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final Map<String, String> user = {
    'name': 'Frank',
    'email': 'frank@example.com',
    'role': 'Driver',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            SizedBox(height: 16),
            Text("Name: \${user['name']}"),
            Text("Email: \${user['email']}"),
            Text("Role: \${user['role']}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
              child: Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
