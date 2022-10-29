import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/iconWidget.dart';

import '../../model/authenticationService.dart';

//reusable text field
TextField reusableTextField(String text, IconData icon, bool isPassword,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPassword,
    enableSuggestions: !isPassword,
    autocorrect: !isPassword,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white,
      ),
      //labelText: text,
      hintText: text,
      hintStyle: TextStyle(
        color: Colors.white70
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType:
        isPassword ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}

//reusable button
Container signInSignUpButton(bool isLogin, Function onTap) {
  return Container(
    width: 150, //MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.grey.shade400;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          )),
      child: Text(
        isLogin ? 'SIGN IN' : 'REGISTER',
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  );
}

//Log out button
Container logOutButton(Function onTap) {
  return Container(
    width: 150, //MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.grey.shade400;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          )),
      child: const Text(
        'LOG OUT',
        style: TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  );
}

//main button
Container mainButton (String title, Function onTap) {
  return Container(
    width: 150, //MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.grey.shade400;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
          )),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ),
  );
}

//Profile settings tab
Widget buildProfileTab(IconData icon, String text) {
  return GestureDetector(
    onTap: (){
      if(text == 'Email'){
        print('email');
      } else if(text == 'Password'){
        print('password');
      } else if(text == 'Account Settings'){
        print('settings');
      } return;
    },
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        border: Border(
          top: BorderSide(
            color: Colors.white38,
            width: 0.5,
          ),
          bottom: BorderSide(
            color: Colors.white38,
            width: 0.5,
          ),
          right: BorderSide(
            color: Colors.white38,
            width: 0.5,
          ),
          left: BorderSide(
            color: Colors.white38,
            width: 0.5,
          ),
        )
      ),
      height: 50,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  icon,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10.0),
              Text(
                  text,
                  style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 30.0,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}

//card widget - crypto
Widget cardCrypto(
    {double width = double.infinity, double padding = 20, required Widget child}) {
  return Container(
    width: width,
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: child,
  );
}
