import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/iconWidget.dart';

import '../../model/authenticationService.dart';


//reusable text field
TextField reusableTextField(String text, IconData icon, bool isPassword, TextEditingController controller){
  return TextField(
    controller: controller,
    obscureText: isPassword,
    enableSuggestions: !isPassword,
    autocorrect: !isPassword,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(prefixIcon: Icon(icon, color: Colors.white70,),
      //labelText: text,
      hintText: text,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPassword
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

//reusable button
Container signInSignUpButton(bool isLogin, Function onTap){
  return Container(
    width: 150,//MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if(states.contains(MaterialState.pressed)){
            return Colors.grey.shade400;
          }
          return Colors.white;
        }),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
      )
      ), child: Text(
      isLogin ? 'SIGN IN' : 'REGISTER',
      style: const TextStyle(
        color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
    ),
    ),
  );
}

//log out settings
Widget buildLogout() => SimpleSettingsTile(
  title: 'Log Out',
  subtitle: "",
  leading: const IconWidget(icon: Icons.logout, color: Colors.lightBlueAccent),
  onTap: () {
    FirebaseAuth.instance.signOut();
    print('Clicked logout');
  },

);

//Delete Account Settings
Widget buildDeleteAccount() => SimpleSettingsTile(
  title: 'Delete Account',
  subtitle: "",
  leading: const IconWidget(icon: Icons.delete, color: Colors.redAccent),
  onTap: () {
    print('Clicked Delete Account');
  },

);