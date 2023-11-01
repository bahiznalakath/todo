import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';

import 'ProfilePage.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: tdBGColor,
      shadowColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text("john.doe@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jpeg'),
            ),
            decoration: BoxDecoration(
              color: Colors.grey, // Set the background color to gray
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'), // Add the "About" item
            onTap: () {
              showAboutSnackbar(context);
              Navigator.of(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {

              Navigator.pop(context);

            },
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
          ),
          // Add more list items as needed
        ],
      ),
    );
  }
  void showAboutSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Our ToDo App is a versatile task management tool designed to help you stay organized and productive. With features like task prioritization, due date setting, and reminders, you can easily manage your daily responsibilities. It also offers task categorization, subtasks, and collaboration options, making it suitable for both personal and team use. Whether you need to track work projects or plan your daily life, our ToDo App provides the flexibility and functionality you need to get things done efficiently.'),
        duration: Duration(seconds: 3), // Adjust the duration as needed
      ),
    );
  }
}

