import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/role_selection_screen.dart';
// Import other screens...
import 'screens/rider/home_screen.dart';
import 'screens/rider/ride_list_screen.dart';
import 'screens/rider/ride_detail_screen.dart';
import 'screens/driver/post_ride_screen.dart';
import 'screens/driver/view_ride_screen.dart';
import 'screens/driver/view_requests_screen.dart';
import 'screens/shared/profile_screen.dart';
import 'screens/shared/chat_screen.dart';
import 'screens/shared/notifications_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carpooling App',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/role': (context) => RoleSelectionScreen(),
        '/rider/home': (context) => RiderHomeScreen(),
        '/rider/list': (context) => RideListScreen(),
        '/rider/detail': (context) => RideDetailScreen(),
        '/driver/post': (context) => PostRideScreen(),
        '/driver/view': (context) => ViewRideScreen(),
        '/driver/requests': (context) => ViewRequestsScreen(),
        '/profile': (context) => ProfileScreen(),
        '/chat': (context) => ChatScreen(),
        '/notifications': (context) => NotificationsScreen(),
      },
    );
  }
}
