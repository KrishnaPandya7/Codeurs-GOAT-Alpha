import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healup/screens/auth/login_screen.dart';
// import 'package:healup/screens/home_screen.dart';
import 'package:healup/screens/quiz/quiz_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 231, 127, 162)),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return QuizScreen();
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Text("loding....."),
            );
          }
          return LoginScreen();
        },
      ),
    );
  }
}
