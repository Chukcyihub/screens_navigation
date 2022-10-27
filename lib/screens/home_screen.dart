import 'package:flutter/material.dart';
import 'package:rechargeme/reusable_functions/reusable.dart';
import 'package:rechargeme/screens/about_screen.dart';
import 'package:rechargeme/screens/profile_screen.dart';
import 'package:rechargeme/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        actions: [
          GestureDetector(
            onTap: () {
              from(context, const Settings());
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() {
                from(context, const AboutScreen());
              }),
              child: const Text("Go to About"),
            ),
            ElevatedButton(
                onPressed: (() {
                  from(context, const Profile());
                }),
                child: const Text("Go to Profile"))
          ],
        ),
      ),
    );
  }
}
