import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:interview/widgets/custom_button.dart';
import 'package:interview/widgets/custom_input.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16).copyWith(bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lets start here',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2B2B2B),
              ),
            ),
            Text(
              'Fill in your details to begin',
              style: TextStyle(
                  color: Color(0xFF7A7A7A),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            SizedBox(
              height: 22,
            ),
            CustomInput(
              label: 'Fullname',
              hint: 'Cristian',
            ),
            SizedBox(
              height: 22,
            ),
            CustomInput(
               label: 'E-mail',
              hint: 'Cristiandeb13@gmail.com',
            ),
            SizedBox(
              height: 22,
            ),
            CustomInput(label: 'Password', hint: 'Password',),
            SizedBox(
              height: 22,
            ),
            CustomButton(
              ontap: () {},
              name: 'Sign up',
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text.rich(
                TextSpan(
                  text: 'By signing in, I agree with ',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    height: 1.8,
                    color: Color(0xFFB0B0B0),
                  ),
                  children: [
                    TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
