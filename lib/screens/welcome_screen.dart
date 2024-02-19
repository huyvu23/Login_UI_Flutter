import 'package:flutter/material.dart';
import 'package:login_ui_flutter/screens/signin_screen.dart';
import 'package:login_ui_flutter/screens/signup_screen.dart';
import 'package:login_ui_flutter/theme/theme.dart';
import 'package:login_ui_flutter/widgets/custom_scaffold.dart';
import 'package:login_ui_flutter/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                child: Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: [
                          TextSpan(
                              text: 'Welcome back!\n',
                              style: TextStyle(
                                  fontSize: 45.0, fontWeight: FontWeight.w600)),
                          TextSpan(
                              text:
                                  '\nEnter personal details to your employee account',
                              style: TextStyle(fontSize: 20.0))
                        ]))),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign in',
                    onTap: SignInScreen(),
                    color: Colors.transparent,
                    textColor: Colors.white,
                  )),
                  Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign up',
                    onTap: const SignUpScreen(),
                    color: Colors.white,
                    textColor: lightColorScheme.primary,
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// Expanded là một widget trong Flutter giúp bạn chia đều không gian còn lại trong một container cho các widget con của nó.