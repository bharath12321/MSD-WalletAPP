import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade900,
        body: SafeArea(
            //Welcome Text
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'app_icons/app-icon.png',
                        scale: 5,
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
                    'Please Log In',
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
                              hintText: 'Email',
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
                          'Sign In',
                          style: TextStyle(
                            color: Colors.black54,
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
                    children: const [
                      Text(
                        'Not registered? ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Register now!',
                        style: TextStyle(color: Colors.lightBlueAccent),
                      )
                    ],
                  )
                ]))));
          }
        }
