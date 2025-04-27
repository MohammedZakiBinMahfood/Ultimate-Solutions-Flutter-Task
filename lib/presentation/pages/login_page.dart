import 'package:flutter/material.dart';
import 'package:uiltimate_solutions_flutter_task/presentation/pages/LanguagePage.dart';
import 'package:uiltimate_solutions_flutter_task/presentation/pages/widget/custom_button.dart';
import 'package:uiltimate_solutions_flutter_task/presentation/pages/widget/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/imgs/Group 3915.svg',
                      height: 50,
                    ),
                    const Icon(Icons.language),
                  ],
                ),
                const SizedBox(height: 50),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Log back into your account",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                const CustomTextField(hintText: "User ID"),
                const SizedBox(height: 16),
                const CustomTextField(hintText: "Password", obscureText: true),
                const SizedBox(height: 8),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Show More",
                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  text: "Log in",
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LanguagePage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    'assets/imgs/delivery.svg',
                    height: 150,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
