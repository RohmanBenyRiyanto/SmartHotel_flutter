# Login Page
Login page pada aplikasi smotel kami mengimplementasikan Firebase Authentication, yang dimana memudahkan dalam membuat prosesnya tersendiri. Form disini sudah mengimplementasikan validasi yang dimana memeriksa apakah email dan passoword valid? dan juga memeriksa apabila akun ada atau tidak.

Berikut adalah kode implementasi login dengan firebase
```dart
void signIn(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offAllNamed(Routes.NAVBAR);
      Get.snackbar(
        "Succesfully Signed in",
        "Signed in succesfully as " +
            userCredential.user!.displayName.toString(),
        snackPosition: SnackPosition.BOTTOM,
        colorText: color_white,
        backgroundColor: color_black,
        margin: EdgeInsets.all(15),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // print('No user found for that email.');
        Get.snackbar(
          "User not found",
          "No user found for that email",
          snackPosition: SnackPosition.BOTTOM,
          colorText: color_white,
          backgroundColor: color_red,
          margin: EdgeInsets.all(15),
        );
      } else if (e.code == 'wrong-password') {
        // print('Invalid password.');
        Get.snackbar(
          "Wrong Password",
          "Wrong password provided for that user",
          snackPosition: SnackPosition.BOTTOM,
          colorText: color_white,
          backgroundColor: color_red,
          margin: EdgeInsets.all(15),
        );
        // Get.defaultDialog();
      }
    } catch (e) {
      print(e);
    }
}
```

Berikut adalah kode implementasi login google dengan firebase
```dart
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
    try {
      await auth.signInWithCredential(credential);
      Get.offAllNamed(Routes.NAVBAR);
      Get.snackbar(
        "Succesfully Signed in",
        "Signed in succesfully as " + googleUser!.displayName.toString(),
        snackPosition: SnackPosition.BOTTOM,
        colorText: color_white,
        backgroundColor: color_black,
        margin: EdgeInsets.all(15),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
```

Berikut adalah kode validasi yang kami pakai
```dart
String? validateEmail(String value) {
  if (!GetUtils.isEmail(value)) {
    return "Provide valid Email";
  }
  return null;
}

String? validatePassowrd(String value) {
  if (value.isEmpty) {
    return "Password required";
  }
  return null;
}

void checkForm() async {
  final isValid = loginFormKey.currentState!.validate();
  if (!isValid) {
    return;
  } else {
    authController.signIn(emailController.text, passController.text);
  }
  loginFormKey.currentState!.save();
}
```

Berikut adalah tampilannya:

