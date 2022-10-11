import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_wallet_app/View/logInPage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            //Welcome Text
            child: Center(
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
              const SizedBox(height: 60),
              Image.asset(
                  'app_icons/app-icon.png',
                  scale: 4,
              ),
              const SizedBox(
                  height: 50,
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
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                          ),
                        ),
                      )),
              ),
              const SizedBox(height: 10),

              //Password
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      )),
              ),
              const SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      )),
              ),

              const SizedBox(height: 15),
              //Login
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
              ),
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
                            MaterialPageRoute(builder: (context) => const LogInPage()),
                          );
                        },
                        child: const Text(
                          'Log in now!',
                          style: TextStyle(color: Colors.lightBlueAccent),
                        ))
                  ],
              )
            ]),
                ))));
  }
}
