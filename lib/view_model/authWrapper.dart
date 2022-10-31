import 'package:mobile_wallet_app/model/authenticationService.dart';
import 'package:mobile_wallet_app/view/homePage.dart';
import 'package:mobile_wallet_app/view/logInPage.dart';
import 'package:flutter/material.dart';

class AuthenticationWrapper extends StatefulWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  State<AuthenticationWrapper> createState() => _AuthenticationWrapperState();
}

class _AuthenticationWrapperState extends State<AuthenticationWrapper> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthenticationService().authStateChanges,
      builder: (context, snapshot){
        if(snapshot.hasData){
          return HomePage();
        }
        else{
          return LogInPage();
        }
      }
    );
  }
}
