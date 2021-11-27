import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smart_hotel/app/modules/signup/controllers/signup_controller.dart';
import 'package:smart_hotel/app/routes/app_pages.dart';
import 'package:smart_hotel/app/widgets/default_button.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:flutter/gestures.dart';

class SignUpForm extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Username *",
                labelStyle: TextStyle(
                    color: color_abu,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
                hintText: "Input Your Username",
                focusColor: color_main,
                hintStyle: TextStyle(
                    color: color_abu,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_abu),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_purple),
                  gapPadding: 10,
                ),
              ),
              controller: controller.usernameController,
            ),
            SizedBox(
              height: 30,
            ),
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
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_abu),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_purple),
                  gapPadding: 10,
                ),
              ),
              controller: controller.emailController,
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
                suffixIcon: Padding(
                  padding:
                      EdgeInsets.only(right: 18, top: 10, bottom: 10, left: 10),
                  child: SvgPicture.asset('assets/svg/show_psswrd.svg'),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_abu),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_purple),
                  gapPadding: 10,
                ),
              ),
              controller: controller.passController,
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Konfirm Password *",
                labelStyle: TextStyle(
                    color: color_abu,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
                hintText: "Confirmasi Your Password",
                focusColor: color_main,
                hintStyle: TextStyle(
                    color: color_abu,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Padding(
                  padding:
                      EdgeInsets.only(right: 18, top: 10, bottom: 10, left: 10),
                  child: SvgPicture.asset('assets/svg/show_psswrd.svg'),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_abu),
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide(color: color_purple),
                  gapPadding: 10,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultButton(
              text: "Sign Up",
              press: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah Punya Akun? ',
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
                      new TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          color: color_purple,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.back();
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
