import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/view/profilePage.dart';
import 'package:mobile_wallet_app/view/cryptoPage.dart';
import 'package:mobile_wallet_app/view/generalWalletPage.dart';
import 'package:mobile_wallet_app/view/walletsPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final List<Widget> pages = [
    const WalletsPage(),
    const GeneralWalletPage(),
    const CryptoWalletPage(),
    ProfilePage(),
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
            tabBackgroundColor: Color.fromRGBO(31, 58, 147, 0.7),//Colors.purpleAccent.withOpacity(0.3),
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
                  setState(() {pages[2];});
                  break;
              }
              print(_selectedIndex);
            },
            padding: const EdgeInsets.all(14.0),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.nfc_rounded,
                text: 'General Wallet',
              ),
              GButton(
                icon: CryptoFontIcons.BTC_ALT,
                text: 'Crypto',
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

