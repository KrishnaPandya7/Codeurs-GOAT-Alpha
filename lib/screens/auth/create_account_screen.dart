import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healup/screens/auth/login_screen.dart';
import 'package:healup/widgets/custom_text_form_field.dart';

import '../../controllers/auth_controller.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({Key? key}) : super(key: key);
  final authCon = Get.put(AuthController());
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  _createAccount(BuildContext context) {
    authCon.createAccount(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 187, 255),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create account",
              style: TextStyle(fontSize: 40),
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
            const SizedBox(height: 20),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      print(_emailController);
                      print(_passwordController);
                      _createAccount(context);
                    },
                    child: const Text("Submit"))),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Get.to(() => LoginScreen());
              },
              child: const Text(
                'Login in',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
