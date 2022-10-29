import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';
import 'package:mobile_wallet_app/view_model/walletViewModel.dart';

class WalletsPage extends StatelessWidget {
  const WalletsPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int index2 = 0;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
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
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                   Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'My Wallets',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0
                            ),
                          ),
                        ],
                      ),
                  ),
                  Swiper(
                      onIndexChanged: (index) {
                        // setState((){
                        //   index2 = index;
                        // });
                      },
                      itemCount: cards.length,
                      itemWidth: MediaQuery.of(context).size.width,
                      itemHeight: MediaQuery.of(context).size.height - 600,
                      layout: SwiperLayout.TINDER,
                      itemBuilder: (context, index){
                        return Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(0, 4, 40, 1.0),
                                  Color.fromRGBO(0, 78, 146, 1.0),
                                ], begin: Alignment.topCenter, end: Alignment.bottomRight),
                            border: const Border(
                                top: BorderSide(color: Colors.white30, width: 0.9),
                                right: BorderSide(color: Colors.white30, width: 0.9),
                                bottom: BorderSide(color: Colors.white30, width: 0.9),
                                left: BorderSide(color: Colors.white30, width: 0.9),
                        )),
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Balance:',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0
                                        ),
                                      ),
                                      //Icon(Icons.account_balance, color: Colors.white,),
                                      Image.asset(cards[index].bankLogo, scale: 5),
                                    ],
                                  ),
                                  Text(
                                    cards[index].balance,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25
                                    ),
                                  ),
                                   const Spacer(),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      cards[index].cardNumber,
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  )
                                ],
                            ),
                          ),
                        );
                      },
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width,
                  height: height * 0.48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    color: Colors.black.withOpacity(0.3)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
                    child: Card(
                      margin: EdgeInsets.only(top: 10.0),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0),
                        )
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Transactions',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.sort, size: 30, color: Colors.white,),
                                    Text('Sort', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Expanded(
                                child: ListView.builder(
                                  itemCount: cards[index2].expenses.length,
                                  itemBuilder: (context, index){
                                    return Padding(
                                      padding: const EdgeInsets.fromLTRB(1.0, 2.0, 2.0, 2.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(15.0),
                                            decoration: BoxDecoration(
                                              //color: Colors.black,
                                              borderRadius: BorderRadius.circular(40.0),
                                            ),
                                            child: Icon(cards[index2].expenses[index].icon, size: 30, color: Colors.white54,),
                                          ),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                cards[index2].expenses[index].eventType,
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              Text(
                                                cards[index2].expenses[index].time,
                                              )
                                            ],
                                          ),
                                          Spacer(),
                                          Text(
                                            cards[index2].expenses[index].expense,
                                            style: TextStyle(
                                              color: Colors.red.shade400
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  })
                            ),
                            //view all button
                            mainButton('View All', (){print('Clicked view all');})
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
