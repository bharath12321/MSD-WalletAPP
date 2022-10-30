import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';
import 'package:provider/provider.dart';

import '../model/authenticationService.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.black,
        Colors.blueGrey.shade900,
        Colors.grey.shade900
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SafeArea(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Home',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0
                                  ),
                                )
                              ],
                            ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 2.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.person, color: Colors.white),
                                      SizedBox(width: 10),
                                      Text(
                                        'Identity Wallet',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 21.0
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 30),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:EdgeInsets.only(top: 1.0, bottom: 1.0, left: 6.0),
                                          child: Text(
                                            'View All',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.0
                                            ),
                                          ),
                                        ),
                                        Icon(Icons.chevron_right_rounded, color: Colors.black, size: 25.0,)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              identityCard('Drivers License', Icons.directions_car, 'Bharath Thirunahari', '18/08/2001', 'DV338H90T'),
                              identityCard('Student ID', Icons.school, 'Jackie Chan', '29/02/1959', 'JF7825F690')

                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
          ),
        )
    );
  }
}
