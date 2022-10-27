import 'package:flutter/material.dart';
import 'package:rechargeme/reusable_functions/reusable.dart';
import 'package:rechargeme/screens/profile_screen.dart';
import 'package:rechargeme/screens/settings_screen.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (() {
                  from(context, const Profile());
                }),
                child: const Text("Go to Profile")),
            ElevatedButton(
                onPressed: (() {
                  from(context, const Settings());
                }),
                child: const Text("Go to Settings"))
          ],
        ),
      ),
    );
  }
}
