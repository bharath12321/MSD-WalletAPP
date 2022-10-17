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
      body: Center(
        child: Text(
          'Add Wallet',
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
