import 'package:flutter/material.dart';

class ViewRequestsScreen extends StatelessWidget {
  final requests = [
    {'rider': 'Eugene', 'status': 'Pending'},
    {'rider': 'Alice', 'status': 'Confirmed'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ride Requests")),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final req = requests[index];
          return ListTile(
            title: Text("Rider: \${req['rider']}"),
            subtitle: Text("Status: \${req['status']}"),
            trailing: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Action for \${req['rider']}"),
                ));
              },
              child: Text("Respond"),
            ),
          );
        },
      ),
    );
  }
}
