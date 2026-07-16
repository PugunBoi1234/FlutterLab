import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // Constructor as private

  static const Color primary = Color(0xFF1565C0);
  static const Color secondary = Color.fromARGB(255, 193, 217, 243);
  static const Color accent = Color.fromARGB(255, 255, 199, 117);

  // Bg Colors
  static const Color bgPrimary = Color.fromARGB(255, 255, 255, 255);
  static const Color bgSecondary = Color.fromARGB(255, 240, 230, 230);

  // Text Colors
  static const Color textPrimary = Color.fromARGB(255, 2, 2, 2);
  static const Color textSecondary = Color.fromARGB(255, 205, 205, 205);
  static const Color textLight = Color.fromARGB(255, 253, 253, 253);

  // Status Colors
  static const Color success = Color.fromARGB(255, 1, 154, 39);
  static const Color warning = Color.fromARGB(255, 246, 192, 117);
  static const Color danger = Color.fromARGB(255, 254, 2, 27);
  static const Color info = Color.fromARGB(255, 1, 187, 255);
}