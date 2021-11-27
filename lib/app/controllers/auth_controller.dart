import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smart_hotel/app/routes/app_pages.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void signUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAllNamed(Routes.HOME);
      // UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      //   email: email,
      //   password: password,
      // );
      // if (userCredential.user!.emailVerified) {
      //   Get.offAllNamed(Routes.HOME);
      // } else {
      //   Get.snackbar(
      //     'Verify Email',
      //     'Kamu perlu verifikasi email terlebih dahulu',
      //     snackPosition: SnackPosition.BOTTOM,
      //   );
      // }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void signIn(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAllNamed(Routes.HOME);
      // if (userCredential.user!.emailVerified) {
      //   Get.offAllNamed(Routes.HOME);
      // } else {
      //   Get.snackbar(
      //     'Verify Email',
      //     'Kamu perlu verifikasi email terlebih dahulu',
      //     // snackPosition: SnackPosition.BOTTOM,
      //   );
      // }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  void signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    // await auth.signInWithCredential(credential);
    try {
      await auth.signInWithCredential(credential);
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
