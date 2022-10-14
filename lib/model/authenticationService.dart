import 'package:mobile_wallet_app/main.dart';
import 'package:path/path.dart' as Path;

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_wallet_app/View/logInPage.dart';

class AuthenticationService{
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }

  Future<String?> signIn({email, password}) async {
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return 'Signed in';
    }on FirebaseAuthException catch (e){
      return e.message;
    }
  }

  Future<String?> signUp({email, password}) async{
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
    //navigatorKey.currentState!.popUntil((route) => route.isFirst);


    //signIn(email: email, password: password);
    return null;
  }

}