import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Page 1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
