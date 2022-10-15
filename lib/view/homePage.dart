import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/model/authenticationService.dart';
import 'package:mobile_wallet_app/view/profilePage.dart';
import 'package:mobile_wallet_app/view/settingsPage.dart';
import 'package:mobile_wallet_app/view/userHomePage.dart';
import 'package:mobile_wallet_app/view/walletsPage.dart';
import 'package:provider/provider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final List<Widget> pages = [
    const UserHomePage(),
    const WalletsPage(),
    const ProfilePage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
          child: GNav(
            curve: Curves.easeInCubic,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.white.withOpacity(0.1),//Colors.purpleAccent.withOpacity(0.3),
            gap: 6.0,
            onTabChange: (selectedIndex){
              this._selectedIndex = selectedIndex;
              switch(selectedIndex){
                case 0:
                  setState(() {pages[0];});
                  break;
                case 1:
                  setState(() {pages[1];});
                  break;
                case 2:
                  setState(() {pages[2];});
                  break;
                case 3:
                  setState(() {pages[3];});
                  break;
              }
              // if(selectedIndex == 3){
              //   Navigator.push(
              //       context,
              //     MaterialPageRoute(
              //         builder: (context) => const SettingsPage()),
              //   );
              // }
              print(_selectedIndex);
            },
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
                icon: Icons.person,
                text: 'Profile',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),

    );
  }
}

