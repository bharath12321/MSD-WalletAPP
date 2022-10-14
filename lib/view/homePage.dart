import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/View/logInPage.dart';
import 'package:mobile_wallet_app/model/authenticationService.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HOME',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
              ),),
            ElevatedButton(
              onPressed: (){
                context.read<AuthenticationService>().signOut().then((value) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogInPage()));
                });
              },
              child: const Text(
                'Sign Out',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
