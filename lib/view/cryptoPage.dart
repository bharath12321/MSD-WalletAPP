import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';
import 'package:mobile_wallet_app/view/userHomePage.dart';

class CryptoWalletPage extends StatefulWidget {
  const CryptoWalletPage({Key? key}) : super(key: key);

  @override
  State<CryptoWalletPage> createState() => _CryptoWalletPageState();
}

class _CryptoWalletPageState extends State<CryptoWalletPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              SizedBox(
                width: 20,
              ),
              _cardWalletBalance(context,
                    total: '\$39.589',
                    totalCrypto: '7.251332 BTC',
                    precent: 7.999),
              _cardWalletBalance(context,
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
                    style: TextStyle(color: Colors.black45)),
                Row(children: [
                  Text(
                    '24H',
                    style: TextStyle(color: Colors.black45),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: Colors.black45),
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
                    _listCryptoItem(
                      iconUrl:
                      'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Bitcoin-icon.png',
                      myCrypto: '3.529020 BTC',
                      myBalance: '\$ 5.441',
                      myProfit: '\$19.153',
                      precent: 4.32,
                    ),
                    _listCryptoItem(
                      iconUrl:
                      'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Ethereum-icon.png',
                      myCrypto: '12.83789 ETH',
                      myBalance: '\$ 401',
                      myProfit: '\$4.822',
                      precent: 3.97,
                    ),
                    _listCryptoItem(
                      iconUrl:
                      'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Ripple-icon.png',
                      myCrypto: '1911.6374736 XRP',
                      myBalance: '\$ 0.45',
                      myProfit: '\$859',
                      precent: -13.55,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _cardWalletBalance(BuildContext context,
      {required String total, totalCrypto, required double precent}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: cardCrypto(
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
                    color: Colors.black87,
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
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ),
                Row(
                  children: [Text(
                    'USD',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ), Icon(Icons.keyboard_arrow_down)],
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
                      color: Colors.black87),
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
                  color: Colors.black38),
            ),
            Center(
              child: Icon(Icons.keyboard_arrow_down,
                  size: 30, color: Colors.black45),
            )
          ],
        ),
      ),
    );
  }

  Widget _listCryptoItem(
      {required String iconUrl,
        double precent = 0,
        required String myCrypto,
        myBalance,
        myProfit}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: cardCrypto(
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
                      color: Colors.black45,
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
    // return Scaffold(
    //   body: Container(
    //     decoration: BoxDecoration(
    //         gradient: LinearGradient(
    //             colors: [
    //               Colors.black,
    //               Colors.blueGrey.shade900,
    //               Colors.grey.shade900
    //               //Colors.black,
    //               // Colors.purple.shade900,
    //               // Colors.purple.shade600,
    //               // Colors.purple,
    //               // Colors.purple.shade200,
    //             ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    //     child: Center(
    //       child: Text(
    //         'Crypto Wallet',
    //         style: TextStyle(fontSize: 50.0),
    //       ),
    //     ),
    //   ),
    // );
  }
}
