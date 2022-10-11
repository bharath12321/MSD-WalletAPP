import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_wallet_app/View/IntroScreens/introPage1.dart';
import 'package:mobile_wallet_app/View/IntroScreens/introPage2.dart';
import 'package:mobile_wallet_app/View/IntroScreens/introPage3.dart';
import 'package:mobile_wallet_app/View/registerPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewUserPage extends StatefulWidget{
  const NewUserPage({Key? key}) : super (key : key);

  @override
  State<NewUserPage> createState() => NewUserPageState();
}

class NewUserPageState extends State<NewUserPage> {

  //pageController to keep track of page
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          //dot indicator
          Container(
              alignment: Alignment(0,0.85),
              child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,

              )),
        ]
      )
    );
  }
}