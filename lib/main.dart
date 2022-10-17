import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:mobile_wallet_app/model/authenticationService.dart';
import 'package:mobile_wallet_app/view/homePage.dart';
import 'package:mobile_wallet_app/view/userHomePage.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'View/logInPage.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Home());
}
//Navigator key
final navigatorKey = GlobalKey<NavigatorState>();

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    navigatorKey: navigatorKey;
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance)
        ),
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanges, initialData: null,
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Nunito',
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          )
        ),
        debugShowCheckedModeBanner: false,
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if(firebaseUser != null){
      return HomePage();
    } else{
      return LogInPage();
    }
  }
}