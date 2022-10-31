import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';

class CryptoWalletPage extends StatefulWidget {
  const CryptoWalletPage({Key? key}) : super(key: key);

  @override
  State<CryptoWalletPage> createState() => _CryptoWalletPageState();
}

class _CryptoWalletPageState extends State<CryptoWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black,
                Colors.blueGrey.shade900,
                Colors.grey.shade900
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SafeArea(
        child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Column(
                  children: [
                    Text(
                      'My Crypto',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            cryptoWalletBalance(context,
                                total: '\$39.589',
                                totalCrypto: '7.251332 BTC',
                                precent: 7.999),
                            cryptoWalletBalance(context,
                                total: '\$43.589',
                                totalCrypto: '5.251332 ETH',
                                precent: -2.999),
                          ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sorted by higher %',
                              style: TextStyle(color: Colors.white)),
                          Row(children: [
                            Text(
                              '24H',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors.white),
                          ])
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              listCryptoItem(
                                iconUrl:
                                'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Bitcoin-icon.png',
                                myCrypto: '3.529020 BTC',
                                myBalance: '\$ 5.441',
                                myProfit: '\$19.153',
                                precent: 4.32,
                              ),
                              listCryptoItem(
                                iconUrl:
                                'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Ethereum-icon.png',
                                myCrypto: '12.83789 ETH',
                                myBalance: '\$ 401',
                                myProfit: '\$4.822',
                                precent: 3.97,
                              ),
                              listCryptoItem(
                                iconUrl:
                                'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Ripple-icon.png',
                                myCrypto: '1911.6374736 XRP',
                                myBalance: '\$ 0.45',
                                myProfit: '\$859',
                                precent: -13.55,
                              ),
                            ],
                          ),
                        ),),
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}

