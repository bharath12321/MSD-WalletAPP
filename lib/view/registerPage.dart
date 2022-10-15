import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/View/logInPage.dart';
import 'package:mobile_wallet_app/view/homePage.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';
import 'package:provider/provider.dart';

import '../model/authenticationService.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  //text field controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.purple.shade900,
                      Colors.purple.shade600,
                      Colors.purple,
                      Colors.purple.shade200,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            //Welcome Text
            child: SafeArea(
              child: Center(
                  child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(height: 60),
              Image.asset(
                'app_icons/wallet.png',
                scale: 3,
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Welcome!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                'Please enter your credentials',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                    color: Colors.white70),
              ),
              const SizedBox(
                height: 50,
              ),
              //Username/Email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        border: Border.all(color: Colors.white60),
                        borderRadius: BorderRadius.circular(32.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: reusableTextField("Enter Username", Icons.person_outline, false, usernameController),
                    )),
              ),
              const SizedBox(height: 10),

              //Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        border: Border.all(color: Colors.white60),
                        borderRadius: BorderRadius.circular(32.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: reusableTextField("Enter Email", Icons.email_outlined, false, emailController),
                    )),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        border: Border.all(color: Colors.white60),
                        borderRadius: BorderRadius.circular(32.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: reusableTextField("Enter Password", Icons.lock_outline, true, passwordController),
                    )),
              ),

              const SizedBox(height: 15),

              signInSignUpButton(false, () {
                context.read<AuthenticationService>().signUp(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                );
              }),

              const SizedBox(height: 25),

              // Not a member? Register Now!
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already registered? ',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()),
                        );
                      },
                      child: const Text(
                        'Log in now!',
                        style: TextStyle(color: Colors.cyanAccent),
                      ))
                ],
              )
          ]),
        )),
            )));
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
