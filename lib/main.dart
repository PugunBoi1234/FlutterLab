import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // Remove debug
      debugShowCheckedModeBanner: false,

      // Theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),

      // Dark Theme & Light

      initialRoute: '/profile',

      // Routes
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
      },

      // home: HomeScreen(),

      // debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      // home: HomeScreen(),
    ); // MaterialApp
  }
}