import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:healup/fitness_app/fitness_app_home_screen.dart';
import 'package:healup/screens/auth/create_account_screen.dart';
import 'package:healup/widgets/custom_text_form_field.dart';

import '../../controllers/auth_controller.dart';
import '../quiz/quiz_screen.dart';

class LoginScreen extends StatelessWidget {
  final authCon = Get.put(AuthController());

  LoginScreen({Key? key}) : super(key: key);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  _signIn(BuildContext context) {
    authCon.signIn(
      email: _emailController.text,
      password: _passwordController.text,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/logo.png",
          scale: 7.0,
        ),
        Scaffold(
          // backgroundColor: const Color.fromARGB(255, 247, 151, 216),
          body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 239, 187, 255),
                  Color.fromARGB(255, 239, 187, 255),
                  Color.fromARGB(255, 239, 187, 255),
                  Color.fromARGB(255, 239, 187, 255),
                  Color.fromARGB(255, 239, 187, 255),
                ],
                stops: [.1, .4, .6, .8, 1],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            // Padding(
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60, left: 103, right: 50),
                  child: Text(
                    "Login In",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextFormField(
                  controller: _emailController,
                  label: "Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 10),
                CustomTextFormField(
                  controller: _passwordController,
                  label: "Password",
                  obscureText: true,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            _signIn(context);
                            Get.off(() => QuizScreen());
                          },
                          child: const Text("Login"))),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Get.to(() => CreateAccountScreen());
                  },
                  //         child: ElevatedButton(
                  // onPressed: () {

                  // },
                  // child: const Text("fitnessapp home"),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 162),
                    child: Text(
                      'sign in',
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
