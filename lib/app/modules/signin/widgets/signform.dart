import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:smart_hotel/app/routes/app_pages.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/widgets/default_button.dart';
import 'package:smart_hotel/app/widgets/secondary_button_with_image.dart';

import '../controllers/signin_controller.dart';

class SignForm extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email *",
                labelStyle: TextStyle(
                    color: color_abu,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
                hintText: "Input Your Email",
                focusColor: color_main,
                hintStyle: TextStyle(
                    color: color_abu,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_abu),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_purple),
                  gapPadding: 10,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_red),
                  gapPadding: 10,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailController,
              onSaved: (value) => controller.email = value!,
              validator: (value) {
                return controller.validateEmail(value!);
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password *",
                labelStyle: TextStyle(
                    color: color_abu,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
                hintText: "Input Your Password",
                focusColor: color_main,
                hintStyle: TextStyle(
                    color: color_abu,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: IconButton(
                  padding:
                      EdgeInsets.only(right: 18, top: 10, bottom: 10, left: 10),
                  icon: SvgPicture.asset('assets/svg/show_psswrd.svg'),
                  onPressed: () => print('test'),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_abu),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_purple),
                  gapPadding: 10,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_red),
                  gapPadding: 10,
                ),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              controller: controller.passController,
              onSaved: (value) => controller.email = value!,
              validator: (value) {
                return controller.validatePassowrd(value!);
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topRight,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Lupa password?',
                      style: TextStyle(
                        color: color_purple,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(Routes.FORGETPASSWORD);
                        },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultButton(
              text: "Sign in",
              press: () => controller.checkForm(),
            ),
            SizedBox(
              height: 20,
            ),
            Secondary_Button_Img(
              icon: "assets/svg/logo_google.svg",
              text: "Sign in with Google",
              press: () => controller.authController.signInWithGoogle(),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum Punya Akun? ',
                  style: TextStyle(
                    color: color_abu,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: color_purple,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(Routes.SIGNUP);
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
