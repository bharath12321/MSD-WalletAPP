import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_wallet_app/View/IntroScreens/introPage1.dart';
import 'package:mobile_wallet_app/View/IntroScreens/introPage2.dart';
import 'package:mobile_wallet_app/View/IntroScreens/introPage3.dart';
import 'package:mobile_wallet_app/View/logInPage.dart';
import 'package:mobile_wallet_app/View/registerPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => IntroPageState();
}

class IntroPageState extends State<IntroPage> {
  //pageController to keep track of page
  PageController pageController = PageController();

  //check last page
  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          PageView(
            controller: pageController,
            onPageChanged: (index){
              setState(() {
                lastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          //dot indicator
          Container(
              alignment: Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip button
                  GestureDetector(
                    onTap: (){
                      pageController.jumpToPage(2);
                      },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  //dot indicator
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                  ),
                  //next or done button
                  lastPage ?
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return LogInPage();
                      } ));
                    },
                    child: const Icon(Icons.check,
                        color: Colors.white, size: 50.0
                    ),
                  ) :GestureDetector(
                      onTap: (){
                        pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeIn);
                    },
                    child: Icon(Icons.arrow_forward_rounded,
                        color: Colors.white, size: 50.0
                    ),
                  ),
                ],
              )),
        ]));
  }
}
