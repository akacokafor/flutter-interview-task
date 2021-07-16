import 'package:flutter/material.dart';
import 'package:woo_dog/utils/colors.dart';
import 'package:woo_dog/utils/constants.dart';
import 'package:woo_dog/utils/size-config.dart';
import 'index.dart';

class SignUp extends StatefulWidget {

  const SignUp({Key key}) : super(key: key);

  static const String id = 'sign_up_page';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  /// A [GlobalKey] to hold the form state of my form widget for form validation
  final _formKey = GlobalKey<FormState>();

  /// A [TextEditingController] to control the input text for the user's full name
  TextEditingController _nameController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's email
  TextEditingController _emailController = TextEditingController();

  /// A [TextEditingController] to control the input text for the user's password
  TextEditingController _passwordController = TextEditingController();

  /// A boolean variable to hold whether the password should be shown or hidden
  bool _obscurePassTextLogin = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus){
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 28,
              color: kBlackColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(16, 22, 16, 57),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Let’s  start here',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                        letterSpacing: -0.0041,
                      )
                  ),
                  Text(
                      'Fill in your details to begin',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: kLightBlackColor,
                        letterSpacing: -0.0041,
                      )
                  ),
                  SizedBox(height: 22),
                  _buildForm(),
                  SizedBox(height: 22),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Index.id);
                    },
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        gradient: LinearGradient(
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                          colors: [
                            kDeepOrangeColor,
                            kLightOrangeColor,
                          ],
                          stops: [0.764, 1.0],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: (){

                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'By signing in, I agree with ',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      color: Color(0xFFB0B0B0),
                      letterSpacing: -0.0041,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Poppins",
                          color: kBlackColor,
                          letterSpacing: -0.0041,
                        ),
                      ),
                      TextSpan(
                        text: '\nand ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Color(0xFFB0B0B0),
                          letterSpacing: -0.0041,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Poppins",
                          color: kBlackColor,
                          letterSpacing: -0.0041,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// This function returns a widget that builds the form where user fill
  /// in their details
  Widget _buildForm(){
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
              child: Center(
                child: TextFormField(
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    letterSpacing: -0.0041,
                  ),
                  keyboardType: TextInputType.name,
                  controller: _nameController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter your full name';
                    }
                    return null;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Fullname',
                    labelStyle: TextStyle(
                      color: Color(0xFFAEAEB2),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      letterSpacing: -0.0041,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
              child: Center(
                child: TextFormField(
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    letterSpacing: -0.0041,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter your email';
                    }
                    if (value.length < 3 || !value.contains("@")){
                      return 'Invalid Email Address';
                    }
                    return null;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Color(0xFFAEAEB2),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      letterSpacing: -0.0041,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 22),
            Container(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
              child: Center(
                child: TextFormField(
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    letterSpacing: -0.0041,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obscurePassTextLogin,
                  controller: _passwordController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter your password';
                    }
                    return null;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color(0xFFAEAEB2),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      letterSpacing: -0.0041,
                    ),
                    suffixIcon: InkWell(
                      onTap: _togglePassLogin,
                      child: Icon(
                        _obscurePassTextLogin
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Color(0xFFAEAEB2),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// A function to toggle if to show the password or not by
  /// changing [_obscurePassTextLogin] value
  void _togglePassLogin() {
    setState(() {
      _obscurePassTextLogin = !_obscurePassTextLogin;
    });
  }

}
