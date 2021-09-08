import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-colors.dart';
import 'package:task/constants/app-fonts.dart';
import 'package:task/constants/app-images.dart';
import 'package:task/constants/widgets/custom-button.dart';
import 'package:task/views/onboarding/widgets/center_line.dart';
import 'package:task/views/onboarding/widgets/slider_circle.dart';
import 'package:task/views/register/screen.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100.withOpacity(0.1),
      body: Stack(
        children: [ 
          Image.asset(AppImages.onboarding, fit: BoxFit.cover, height: size.height * 0.8,),
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05, top: size.height * 0.08),
                  child: Image.asset(AppImages.logo, fit: BoxFit.cover, height: SizeConfig.imageSizeMultiplier! * 8,),
                ),
                Container(
                  height: size.height * 0.35,
                  padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier!, top: SizeConfig.heightMultiplier!),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: <Color>[
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.3)
                      ],
                    ),
                    // color: Colors.black.withOpacity(0.3)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SliderCircle(color: Colors.white, progressNumber: 1,),
                          CenterLine(),
                          SliderCircle(color: Colors.grey.withOpacity(0.5), progressNumber: 2,),
                          CenterLine(),
                          SliderCircle(color: Colors.grey.withOpacity(0.5), progressNumber: 3,),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: SizeConfig.heightMultiplier! * 2),
                        width: size.width * 0.7,
                        child: Text(
                          'Too tired to walk your dog? \nLet’s help you!', 
                          style: AppFonts.heading3white,
                          textAlign: TextAlign.center,
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier! * 4),
                        child: CustomButton(
                          text: 'Join Our Community', 
                          width: size.width * 0.8, 
                          onpressed: () => Navigator.of(context).pushNamed(RegisterScreen.routeName)
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already a member?', style: AppFonts.bodywhite),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Sign in', 
                            style: TextStyle(color: AppColors.PRIMARY_COLOR, fontSize: SizeConfig.textMultiplier! * 1.9,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Poppins',)),
                          )
                        ]
                      )
                   ],
                  ),
                )
              ],
            )
        
          ),
        ]
      )
    );
  }
}