import 'package:first_app/screens/list_view_screen.dart';
import 'package:first_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',

      // Remove debug
      debugShowCheckedModeBanner: false,

      // Theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      // Dark Theme & Light

      initialRoute: '/listview',

      // Routes
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/login': (context) => LoginScreen(),
        '/listview': (context) => ListViewScreen(),
      },

      // home: HomeScreen(),

    ); // MaterialApp
  }
}