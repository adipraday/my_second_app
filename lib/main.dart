import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_second_app/features/app/splash_screen/splash_screen.dart';
import 'package:my_second_app/features/user_auth/presentation/pages/home_page.dart';
import 'package:my_second_app/features/user_auth/presentation/pages/login_page.dart';
import 'package:my_second_app/features/user_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCz43V1KAuFCWpFeo0TJuQxEU-8QS1qom4",
            appId: "1:1048541086484:web:4bc359066fce3012e57801",
            messagingSenderId: "1048541086484",
            projectId: "mysecondapp-68fae"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
