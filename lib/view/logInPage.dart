import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/View/registerPage.dart';
import 'package:mobile_wallet_app/view/reusableWidgets/reusable_widget.dart';
import 'package:provider/provider.dart';
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
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'app_icons/wallet.png',
                            scale: 3,
                          ),
                      const SizedBox(height: 35,),
                      const Text(
                        'WELCOME',
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
                      const SizedBox(
                        height: 60,
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
                              child: reusableTextField("Enter Email", Icons.person_outline, false, emailController),
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
                              child: reusableTextField("Enter Password", Icons.lock_outline, true, passwordController),
                            )),
                      ),
                      const SizedBox(height: 18),

                      //Sign In
                      signInSignUpButton(true, () {
                        context.read<AuthenticationService>().signIn(
                            email: emailController.text.trim(),
                        password: passwordController.text.trim());
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
                                Navigator.push(
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
