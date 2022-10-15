import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/model/authenticationService.dart';
import 'package:provider/provider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  //Colors.black,
                  Colors.purple.shade900,
                  Colors.purple.shade600,
                  Colors.purple,
                  Colors.purple.shade200,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HOME',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 38.0,
                  ),),
                ElevatedButton(
                  onPressed: (){
                    context.read<AuthenticationService>().signOut();
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
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
          child: GNav(
            curve: Curves.easeInCubic,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade900,//Colors.purpleAccent.withOpacity(0.3),
            gap: 6.0,
            padding: const EdgeInsets.all(14.0),
            tabs: const [
              GButton(
                  icon: Icons.home,
                  text: 'Home',
              ),
              GButton(
                  icon: Icons.wallet,
                  text: 'My Wallets',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
              GButton(
                  icon: Icons.person,
                  text: 'Profile',
              ),
            ],
          ),
        ),
      ),

    );
  }
}
