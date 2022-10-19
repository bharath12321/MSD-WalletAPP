import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class WalletsPage extends StatelessWidget {
  const WalletsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      itemCount: 3,
                      itemWidth: MediaQuery.of(context).size.width,
                      itemHeight: MediaQuery.of(context).size.height - 550,
                      layout: SwiperLayout.TINDER,
                      itemBuilder: (context, index){
                        return Container(
                          width: 80,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.blueGrey.shade700,
                                  Colors.white,
                                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                          ),
                        );
                      },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
