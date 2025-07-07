import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Get Started'),
          onPressed: () {
            Navigator.pushNamed(context, '/role');
          },
        ),
      ),
    );
  }
}
