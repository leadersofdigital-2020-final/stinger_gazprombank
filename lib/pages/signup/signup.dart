import 'package:flutter/material.dart';
import 'background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_input_field.dart';
import '../../widgets/rounded_password_field.dart';
import '../../widgets/already_have_account_check.dart';
import 'or_divider.dart';
import 'social_icon.dart';
import '../login/login.dart';
import '../navbar/navbar.dart';
import '../../fade_animations.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FadeAnimation(0, Text(
                "ЗАРЕГИСТРИРОВАТЬСЯ",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              SizedBox(height: size.height * 0.03),
              FadeAnimation(
                0.2,
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: size.height * 0.35,
                ),
              ),
              FadeAnimation(0.4, RoundedInputField(
                hintText: "Ваш Email",
                onChanged: (value) {},
              ),),
              FadeAnimation(0.6, RoundedPasswordField(
                onChanged: (value) {},
              ),),
              FadeAnimation(0.8, RoundedButton(
                text: "ЗАРЕГИСТРИРОВАТЬСЯ",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Navbar()),
                ),
              ),),
              SizedBox(height: size.height * 0.03),
              FadeAnimation(1, AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),),
              FadeAnimation(1.2, OrDivider(),),
              FadeAnimation(1.4, Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}