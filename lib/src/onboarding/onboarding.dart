import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:parkway_projects_task/src/components/rounded_button.dart';
import 'package:parkway_projects_task/src/components/stepper.dart';
import 'package:parkway_projects_task/src/signup/signup.dart';
import 'package:sizer/sizer.dart';

/// Displays detailed information about a SampleItem.
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  static const routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF202020),
            image: DecorationImage(
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/onboarding_picture.png'),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.5.h, horizontal: 4.3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [Image.asset('assets/images/app_logo.png')],
                ),
                const Spacer(),
                const StepperComponent(),
                const Gap(20),
                Text.rich(
                  TextSpan(
                      text: 'Too tired to walk your dog?',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: Colors.white),
                      children: const [
                        TextSpan(
                          text: 'Let\'s help you!',
                        )
                      ]),
                  textAlign: TextAlign.center,
                ),
                const Gap(20),
                RoundedButtonWidget(
                    key: const ValueKey('joinKey'),
                    onTap: () => Navigator.pushNamed(context, Signup.routeName),
                    label: 'Join our community'),
                const Gap(20),
                Text.rich(
                  TextSpan(
                      text: 'Already a member?',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: Colors.white),
                      children: [
                        TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.primary))
                      ]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
