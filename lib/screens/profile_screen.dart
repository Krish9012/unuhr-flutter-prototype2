import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userName = 'John Doe';
    final userEmail = 'john@example.com';
    final userRole = 'Job Seeker';

    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: $userName', style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text('Email: $userEmail', style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text('Role: $userRole', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
