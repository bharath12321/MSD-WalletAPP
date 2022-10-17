import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('app_icons/user.png'),
                  backgroundColor: Colors.black,
                ),
                Text(
                  'Bharath',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24.0
                    ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  'bharath@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontStyle: FontStyle.italic
                  ),
                ),
                const SizedBox(height: 20),
                buildProfileTab(Icons.email_rounded, 'Email'),
                const SizedBox(height: 8),
                buildProfileTab(Icons.key_rounded, 'Password'),
                const SizedBox(height: 8),
                buildProfileTab(Icons.settings, 'Settings'),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
