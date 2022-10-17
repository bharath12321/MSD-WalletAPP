import 'package:flutter/material.dart';

class AddWalletPage extends StatefulWidget {
  const AddWalletPage({Key? key}) : super(key: key);

  @override
  State<AddWalletPage> createState() => _AddWalletPageState();
}

class _AddWalletPageState extends State<AddWalletPage> {
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
            'Add Wallet',
            style: TextStyle(fontSize: 50.0),
          ),
        ),
      ),
    );
  }
}
