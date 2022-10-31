import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class AuthenticationService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }

  Future<String?> signIn({required email, required password, required context}) async {
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return 'Signed in';
    }on FirebaseAuthException catch (e){
      ToastContext().init(context);
      Toast.show(
          e.message.toString(),
          duration: Toast.lengthLong,
          gravity: Toast.top,
          textStyle: const TextStyle(
              color: Colors.redAccent
          )
      );
      return e.message;
    }
  }

  Future<String?> signUp({required email, required password, required context}) async{
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      ToastContext().init(context);
      Toast.show(
          e.message.toString(),
          duration: Toast.lengthLong,
          gravity: Toast.top,
          textStyle: const TextStyle(
              color: Colors.redAccent
          )
      );
      return e.message;
    }

    return null;
  }

}