import 'package:flutter/material.dart';

class WalletsPage extends StatelessWidget {
  const WalletsPage({Key? key}) : super(key: key);

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
        child: Center(
          child: Text(
            'My Wallets',
            style: TextStyle(fontSize: 50.0),
          ),
        ),
      ),
    );
  }
}
