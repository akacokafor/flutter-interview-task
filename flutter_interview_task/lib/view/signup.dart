import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_interview_task/widgets/bottomnavBAr.dart';
import 'package:flutter_interview_task/constants.dart';
import 'package:flutter_interview_task/view/home.dart';
import 'package:flutter_interview_task/view/onboarding.dart';
import 'package:flutter_interview_task/view/profile.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'chat.dart';
import 'chatting.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
              sizedBox20,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Let’s start here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Fill in your details to begin",
                    style: TextStyle(
                      color: textGreyColor,
                    ),
                  ),
                ],
              ),
              sizedBox20,
              Column(
                children: [
                  const RoundedTextField(
                    label: "Fullname",
                    obscureText: false,
                  ),
                  sizedBox20,
                  const RoundedTextField(
                    label: "Email",
                    obscureText: false,
                  ),
                  sizedBox20,
                  const RoundedTextField(
                    label: "Password",
                    obscureText: true,
                    suffixIcon: Icon(Icons.lock),
                  ),
                  sizedBox20,
                  RoundedButton(
                    primaryCcolor: primaryCcolor,
                    height: 54,
                    width: 320,
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () async {
                      Response response = await http.post(
                          Uri.parse("https://hookb.in/mZZ8pmBdk6ilzXNNzQGp"),
                          headers: {'Content-Type': 'application/json'});
                      log(response.statusCode.toString());
                      if (response.statusCode == 404) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNavBAr(
                              pages: [Home(), Chatting(), Chat(), Profile()],
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Expanded(
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "By signing in, I agree with Terms of Use",
                          style: TextStyle(color: textGreyColor, fontSize: 13),
                        ),
                        TextSpan(
                          text: "\nand Privacy Policy",
                          style: TextStyle(color: primaryCcolor, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key? key,
    required this.label,
    required this.obscureText,
    this.helperText,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);
  final String label;
  final String? helperText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        filled: true,
        labelStyle: const TextStyle(color: textGreyColor),
        labelText: label,
        hintText: helperText,
        hintStyle: const TextStyle(color: textGreyColor),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: const Color.fromRGBO(240, 240, 240, 1),
      ),
    );
  }
}
