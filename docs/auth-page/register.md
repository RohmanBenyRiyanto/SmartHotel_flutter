# Register Page
Register page pada aplikasi smotel kami mengimplementasikan Firebase Authentication, yang dimana memudahkan dalam membuat prosesnya tersendiri. Form disini sudah mengimplementasikan validasi yang dimana memeriksa apakah email dan passoword valid? dan juga memeriksa apabila akun ada atau tidak.

Berikut adalah kode implementasi login dengan firebase
```dart
void signUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.offAllNamed(Routes.NAVBAR);
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
```

Berikut adalah kode validasi yang kami pakai
```dart
String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length <= 8) {
      return "Password must be of 8 character";
    }
    return null;
  }

  String? comparePassword(String value) {
    if (value.isEmpty) {
      return "Password must be confirm";
    } else if (value != passController.text) {
      return "Password confirmation does not match!";
    }
    return null;
  }

  void checkForm() async {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      authController.signUp(emailController.text, passController.text);
    }
    loginFormKey.currentState!.save();
  }
```

Berikut adalah tampilannya:

![image](https://user-images.githubusercontent.com/57904667/144208849-f7c8a0b7-1e8b-4ef1-a440-c20fa5e9a2ff.png)
