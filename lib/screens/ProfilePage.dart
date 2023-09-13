import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/images/avatar.jpeg'), // Replace with your image path
            ),
            const SizedBox(height: 20),
            const Text(
              'John Doe', // Replace with the user's name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'john.doe@example.com', // Replace with the user's email
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality for editing profile
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
              ),
              child: const Text('Edit Profile',style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
