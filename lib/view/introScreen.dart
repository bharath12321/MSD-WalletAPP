import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/View/IntroScreenPages/introPage1.dart';
import 'package:mobile_wallet_app/View/IntroScreenPages/introPage2.dart';
import 'package:mobile_wallet_app/View/IntroScreenPages/introPage3.dart';
import 'package:mobile_wallet_app/View/logInPage.dart';
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
            children: const [
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
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                  ),
                  //dot indicator
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const WormEffect(
                      dotColor: Colors.white60,
                      activeDotColor: Colors.white
                    ),

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
                    child: const Icon(Icons.arrow_forward_rounded,
                        color: Colors.white, size: 50.0
                    ),
                  ),
                ],
              )),
        ]));
  }
}
