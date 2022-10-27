import 'package:flutter/material.dart';
import 'package:rechargeme/reusable_functions/reusable.dart';
import 'package:rechargeme/screens/settings_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (() {
              from(context, const Settings());
            }),
            child: const Text("Go to Settings")),
      ),
    );
  }
}
