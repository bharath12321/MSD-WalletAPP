import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/View/registerPage.dart';
import 'package:mobile_wallet_app/view/homePage.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';
import '../model/authenticationService.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage> {

  //text field controllers
   final emailController = TextEditingController();
   final passwordController = TextEditingController();
   String? errorMessage = '';


   Future<void> signIn() async {
     try{
       await AuthenticationService().signIn(email: emailController.text.trim(), password: passwordController.text.trim(), context: context);
       setState(() {
         HomePage();
       });
     } on FirebaseAuthException catch(e){
       setState(() {
         errorMessage = e.message;
       });

     }
   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.blueGrey.shade900,
                      Colors.grey.shade900
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            //Welcome Text
            child: SafeArea(
              child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'app_icons/wallet.png',
                            scale: 3,
                          ),
                      const SizedBox(height: 35,),
                      const Text(
                        'Welcome',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      const Text(
                        'Please Log In',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18.0,
                            color: Colors.white70),
                      ),
                      const SizedBox(height: 60),
                      //Username/Email
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                border: Border.all(color: Colors.white60),
                                borderRadius: BorderRadius.circular(32.0)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: reusableTextField("Enter Email", Icons.email_outlined, false, emailController),
                            )),
                      ),
                      const SizedBox(height: 10),

                      //Password
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.3),
                                border: Border.all(color: Colors.white60),
                                borderRadius: BorderRadius.circular(32.0)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: reusableTextField("Enter Password", Icons.lock_outline, true, passwordController),
                            )),
                      ),
                      const SizedBox(height: 18),

                      //Sign In
                      signInSignUpButton(true, () {
                        signIn();
                      }),

                      // Not a member? Register Now!
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                                );
                              },
                              child: const Text(
                                'Register now!',
                                 style: TextStyle(color: Colors.cyanAccent),
                              )

                          )
                        ],
                      )
                    ]),
                  )),
            )));
  }


   @override
   void dispose(){
     emailController.dispose();
     passwordController.dispose();
     super.dispose();
   }
}

