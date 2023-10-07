import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:healup/screens/auth/create_account_screen.dart';
import 'package:healup/screens/quiz/home_screen.dart';



class AuthController extends GetxController {
  var userAuth = FirebaseAuth.instance;

  Future createAccount({required email, required password, context}) async {
    try {
      await userAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      Get.off(CreateAccountScreen());
    } on FirebaseAuthException catch (e) {
    } catch (e) {}
  }

  Future signIn({required email, required password, context}) async {
    try {
      await userAuth
          .signInWithEmailAndPassword(
              email: email, password: password)
          .then((value) {
        if (value.user != null) {
          Get.off(() =>  HomeScreen());
        }
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {}
    }
  }
}
