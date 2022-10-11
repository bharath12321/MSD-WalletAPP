import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/View/introScreen.dart';
import 'package:mobile_wallet_app/View/registerPage.dart';
import 'View/logInPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Model/firebase_options.dart';

void main() {
  runApp(const Home());
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}


