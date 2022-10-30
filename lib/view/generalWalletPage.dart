import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';

class GeneralWalletPage extends StatefulWidget {
  const GeneralWalletPage({Key? key}) : super(key: key);

  @override
  State<GeneralWalletPage> createState() => _GeneralWalletPageState();
}

class _GeneralWalletPageState extends State<GeneralWalletPage> {
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
                                  'General Wallet',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0
                                  ),
                                )
                              ],
                            ),
                        ),
                        SizedBox(height: 15),
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
                        ),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 2.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.nfc_rounded, color: Colors.white),
                                      SizedBox(width: 10),
                                      Text(
                                        'Smartkey Wallet',
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
                        //smart keys start here
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              smartCard('House Key', Icons.house_rounded, 'Address: ', '18 House Avenue', '1235864'),
                              smartCard('Car Key', Icons.directions_car_outlined, 'License Plate: ', 'EDQ969', '256FED6')

                            ],
                          ),
                        ),
                        SizedBox(height: 100,)
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
