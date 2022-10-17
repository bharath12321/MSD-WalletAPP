import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_wallet_app/model/authenticationService.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage('app_icons/user.png'),
                        backgroundColor: Colors.white10,
                      ),
                      Text(
                        'Bharath',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 28.0
                          ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'bharath@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontStyle: FontStyle.italic
                        ),
                      ),
                      const SizedBox(height: 20),
                      buildProfileTab(Icons.email_rounded, 'Email'),
                      const SizedBox(height: 8),
                      buildProfileTab(Icons.key_rounded, 'Password'),
                      const SizedBox(height: 8),
                      buildProfileTab(Icons.settings, 'Account Settings'),
                      const SizedBox(height: 15),
                      logOutButton((){
                        context.read<AuthenticationService>().signOut();
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
