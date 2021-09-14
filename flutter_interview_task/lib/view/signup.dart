import 'package:flutter/material.dart';
import 'package:flutter_interview_task/view/constants.dart';
import 'package:flutter_interview_task/view/home.dart';
import 'package:flutter_interview_task/view/onboarding.dart';

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
                    text: 'Sign up',
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                    ),
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
    this.suffixIcon,
  }) : super(key: key);
  final String label;
  final bool obscureText;
  final Widget? suffixIcon;
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
        suffixIcon: suffixIcon,
        fillColor: const Color.fromRGBO(240, 240, 240, 1),
      ),
    );
  }
}
