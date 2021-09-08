import 'package:flutter/material.dart';
import 'package:task/config/size-config.dart';
import 'package:task/constants/app-colors.dart';
import 'package:task/constants/app-fonts.dart';
import 'package:task/constants/widgets/custom-button.dart';
import 'package:task/constants/widgets/custom-input.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _registerFormKey = GlobalKey<FormState>();
  bool obsecurePassword = true;
  Map<String, dynamic> _registerData = {
    'fullname': '',
    'email': '',
    'password': '',
  };

   String? _emailValidator(value) {
    if (value.isEmpty) {
      return 'Please enter email';
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Invalid Email';
    }
    return null;
  }

  String? _passwordValidator(value) {
    if (value.isEmpty) {
      return 'Please enter password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8';
    }
    return null;
  }

  String? _nameValidator(value) {
    if (value.isEmpty) {
      return 'Please enter name';
    }
    return null;
  }

  Future<void> _register() async {
    if (!_registerFormKey.currentState!.validate()) {
      // Invalid !
      return;
    }
    _registerFormKey.currentState!.save();
    Navigator.of(context).pop();
    // Navigator.of(context).popAndPushNamed();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Let\'s start here', style: AppFonts.heading1),
                  SizedBox(
                    height: SizeConfig.heightMultiplier!,
                  ),
                  Text('Fill in your details to begin', style: AppFonts.body1),
                  SizedBox(
                    height: SizeConfig.heightMultiplier! * 7,
                  ),
                  Form(
                    key: _registerFormKey,
                    child: Column(
                      children: [
                        CustomInput(
                          hint: 'Dion',
                          label: 'Full Name',
                          onSaved: (value) {
                            _registerData['firstname'] = value!;
                          },
                          validator: _nameValidator,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier! * 3,
                        ),
                        CustomInput(
                          hint: 'example@gmail.com',
                          label: 'Email',
                          validator: _emailValidator,
                          onSaved: (value) {
                            _registerData['email'] = value!;
                          },
                        ),
                        SizedBox(
                          height: SizeConfig.textMultiplier! * 3,
                        ),
                        CustomInput(
                          obsecure: obsecurePassword,
                          hint: '*********',
                          label: 'Password',
                          onSaved: (value) {
                            _registerData['password'] = value!;
                          },
                          suffixIcon: IconButton(
                            icon: Icon(
                              obsecurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: AppColors.PRIMARY_COLOR,
                            ),
                            onPressed: () {
                              setState(() {
                                obsecurePassword = !obsecurePassword;
                              });
                            },
                          ),
                          validator: _passwordValidator,
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier! * 4,
                        ),
                        CustomButton(
                          text: 'Sign up',
                          onpressed: _register,
                        ),
                      ],
                    ),
                  ),
                   
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('By signing in, I agree with ', style: AppFonts.body1,),
                        Text('Terms of Use ', style: AppFonts.heading4),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('and ', style: AppFonts.body1,),
                        Text('Privacy Policy', style: AppFonts.heading4,),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}