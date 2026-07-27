import 'package:flutter/material.dart';
import 'package:first_app/constants/app_text_styles.dart';
import 'package:first_app/constants/app_colors.dart';
import 'package:first_app/screens/profile_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Welcome msg
            Text('Welcome to Sign-in', style: AppTextStyles.topic),
            const SizedBox(height: 20),
            Text(
              'Sign in to continue to your account',
              style: AppTextStyles.subTopic,
            ),

            // Email Field
            const SizedBox(height: 25),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'example@email.com',
                prefixIcon: const Icon(Icons.email_outlined),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: AppColors.info),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: AppColors.danger, width: 2),
                ),
              ),
            ),

            // Password Field
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: isPasswordHidden,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.lock_clock_outlined),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordHidden = !isPasswordHidden;
                    });
                  },
                  icon: Icon(
                    isPasswordHidden ? Icons.visibility_off : Icons.visibility_outlined
                  )),
                  
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: AppColors.info),
                ), 
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: AppColors.danger, width: 2),
                ),
              ),
            ),

            SizedBox(height: 25,),

            // Login Button
            ElevatedButton(
              onPressed: () {
                debugPrint('Email: ${emailController.text}' );
                debugPrint('Password: ${passwordController.text}' );

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                elevation: 0,
                shadowColor: Colors.transparent,
              ),
              child: Text('Sign in', style: AppTextStyles.topic),
            ),

          ],
        ),
      ),
    );
  }
}
