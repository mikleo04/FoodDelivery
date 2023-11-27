import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context ) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/bussiness-man.png'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Mikleo Harata',
                style: TextStyle(fontSize: 24, fontFamily: 'Bold'),
              ),
              const SizedBox(height: 8),
              const Text(
                'mikleo.harata@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.grey, fontFamily: 'Medium'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: Text('Edit Profile'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text('Change Password'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text('Logout'),
              ),
            ],
          ),
        ),
    );
  }
}