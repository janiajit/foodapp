import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 400,
            // color: Colors.red,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Sign in to Continue'),
                const Text(
                  "aps",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.green,
                  ),
                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.Apple,
                      text: "Sign in with Appl",
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: "Sign in with Google",
                      onPressed: () {},
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'By Signing in you are agreeing to our',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                    Text(
                      'Terms and Privacy Policy',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
