import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/iconWidget.dart';

import '../../model/authenticationService.dart';



//reusable text field
TextFormField reusableTextField(String text, IconData icon, bool isPassword,
    TextEditingController controller) {
  return TextFormField(
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

//ID card
Widget identityCard(String idType, IconData idIcon, String fullname, String dob, String idNumber){
  return Padding(
    padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
    child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 4, 40, 1.0),
                Color.fromRGBO(0, 78, 146, 1.0),
              ],begin: Alignment.topCenter, end: Alignment.bottomRight),
          border: const Border(
            top: BorderSide(color: Colors.white30, width: 0.9),
            right: BorderSide(color: Colors.white30, width: 0.9),
            bottom: BorderSide(color: Colors.white30, width: 0.9),
            left: BorderSide(color: Colors.white30, width: 0.9),
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        height: 220,
        width: 375,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    idType,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                  ),
                  Icon(idIcon, color: Colors.white, size: 40,),
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                children: [
                  Text(
                    'Full Name:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    fullname,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    'D.O.B:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    dob,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              // Text(
              //     'License Type:'
              // ),
              SizedBox(height: 30.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  idNumber,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        )
    ),
  );
}

//smart key card
Widget smartCard(String idType, IconData idIcon, String cardName, String cardNameData, String cardNumber){
  return Padding(
    padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
    child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 4, 40, 1.0),
                Color.fromRGBO(0, 78, 146, 1.0),
              ],begin: Alignment.topCenter, end: Alignment.bottomRight),
          border: const Border(
            top: BorderSide(color: Colors.white30, width: 0.9),
            right: BorderSide(color: Colors.white30, width: 0.9),
            bottom: BorderSide(color: Colors.white30, width: 0.9),
            left: BorderSide(color: Colors.white30, width: 0.9),
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        height: 220,
        width: 375,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    idType,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                  ),
                  Icon(idIcon, color: Colors.white, size: 40,),
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                children: [
                  Text(
                    cardName,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    cardNameData,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              SizedBox(height: 10.0),
              // Text(
              //     'License Type:'
              // ),
              SizedBox(height: 50.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  cardNumber,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        )
    ),
  );
}

//card widget - crypto
Widget reusableCard(
    {double width = double.infinity, double padding = 20, required Widget child}) {
  return Container(
    width: width,
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(20, 30, 48, 1.0),
            Color.fromRGBO(36, 59, 85, 1.0),
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        border: const Border(
          top: BorderSide(color: Colors.white30, width: 0.9),
          right: BorderSide(color: Colors.white30, width: 0.9),
          bottom: BorderSide(color: Colors.white30, width: 0.9),
          left: BorderSide(color: Colors.white30, width: 0.9),
        ),
    ),
    child: child,
  );
}

//Crypto Wallets
Widget cryptoWalletBalance(BuildContext context,
    {required String total, totalCrypto, required double precent}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: reusableCard(
      width: MediaQuery.of(context).size.width - 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: Material(
                  color: Colors.blueAccent.withOpacity(0.6),
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.white,
                          size: 25.0,
                        )),
                    onTap: () {},
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text('Total Wallet Balance',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.0)),
              ),
              Row(
                children: [
                  Text(
                    'USD',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.white)
                ],
              )
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$total',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                decoration: BoxDecoration(
                    color: precent >= 0 ? Colors.green : Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text(
                  precent >= 0 ? '+ $precent %' : '$precent %',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            '$totalCrypto',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white.withOpacity(0.8)),
          ),
          Center(
            child: Icon(Icons.keyboard_arrow_down,
                size: 30, color: Colors.white),
          )
        ],
      ),
    ),
  );
}


//Crypto items
Widget listCryptoItem(
    {required String iconUrl,
      double precent = 0,
      required String myCrypto,
      myBalance,
      myProfit}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20),
    child: reusableCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            '$iconUrl',
            width: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$myCrypto',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  '$myProfit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$myBalance',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                precent >= 0 ? '+ $precent %' : '$precent %',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: precent >= 0 ? Colors.green : Colors.pink,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


