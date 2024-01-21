import 'package:animapp/screens/login_screen.dart';
import 'package:animapp/screens/signup_screen.dart';
import 'package:animapp/widgets/custom_scaffold.dart';
import 'package:animapp/widgets/welcome_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: 'Welcome to AnimApp!\n',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text:
                          '\nCreate an account to access our content or log into your account',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ]),
                  ),
                ),
              )),
          const Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(child: WelcomeButton(
                    buttonText: "Login",
                    onTap: LoginScreen(),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                  ),
                  ),
                  Expanded(child: WelcomeButton(
                    buttonText: "Sign up",
                    onTap: SignUpScreen(),
                    color: Colors.white,
                    textColor: Colors.blue,
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
