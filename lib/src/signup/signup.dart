import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:parkway_projects_task/src/components/rounded_button.dart';
import 'package:parkway_projects_task/src/root_page.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  static const routeName = 'signup';

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Let\'s start here ',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Gap(10),
            Text(
              'Fill in your details to begin',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: const Color(0xFF7A7A7A), letterSpacing: -.2),
            ),
            const Gap(20),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    initialValue: 'Cristian',
                    decoration: InputDecoration(
                        labelText: 'Fullname',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(height: 6)),
                  ),
                  const Gap(20),
                  TextFormField(
                    initialValue: 'Cristiandeb13@gmail.com',
                    decoration: InputDecoration(
                        labelText: 'E-mail',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(height: 6)),
                  ),
                  const Gap(20),
                  TextFormField(
                    initialValue: 'obinnahere',
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.visibility_off,
                              size: 18,
                              color: Color(0xFFAEAEB2),
                            ),
                            onPressed: () {}),
                        labelText: 'Password',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(height: 6)),
                  ),
                  const Gap(20)
                ],
              ),
            ),
            loading
                ? RoundedButtonWidget(
                    label: 'Sign up',
                    onTap: () {},
                    loading: true,
                  )
                : RoundedButtonWidget(
                    key: const ValueKey('signUpButton'),
                    label: 'Sign up',
                    onTap: () {
                      setState(() {
                        loading = true;
                      });

                      Future.delayed(const Duration(seconds: 2), () {
                        Navigator.pushNamed(context, RootPage.routeName);
                        setState(() {
                          loading = false;
                        });
                      });
                    }),
            const Spacer(),
            Center(
              child: Text.rich(
                TextSpan(
                    text: 'By signing in, I agree with',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        ?.copyWith(color: const Color(0xFFB0B0B0)),
                    children: [
                      TextSpan(
                        text: ' Terms of Use',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => log('tapped'),
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyText2?.color),
                      ),
                      const TextSpan(
                        text: ' and',
                      ),
                      TextSpan(
                        text: ' Privacy Policy',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => log('tapped'),
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyText2?.color),
                      ),
                    ]),
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(20)
          ],
        ),
      )),
    );
  }
}
