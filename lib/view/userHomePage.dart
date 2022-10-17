import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/authenticationService.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.blueGrey.shade900,
                  Colors.grey.shade900
                  //Colors.black,
                  // Colors.purple.shade900,
                  // Colors.purple.shade600,
                  // Colors.purple,
                  // Colors.purple.shade200,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HOME',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38.0,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
