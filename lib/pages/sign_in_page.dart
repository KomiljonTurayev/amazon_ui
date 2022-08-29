import 'package:amazon_ui/animations/fade_anim.dart';
import 'package:amazon_ui/pages/home_page.dart';
import 'package:amazon_ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);
  static const String id = "signin_page";

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  _doSignIn() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Title
          const FadeAnimations(
            1,
            Text(
              'Instagram',
              style: TextStyle(fontSize: 45, fontFamily: 'Billabong'),
            ),
          ),
         // Email
          FadeAnimations(
            1.2,
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: emailController,
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          // Password
          FadeAnimations(
            1.3,
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: passwordController,
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          // Sign up button
          FadeAnimations(
            1.4,
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
              width: double.infinity,
              height: 48,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: _doSignIn,
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          // Sign in text
          FadeAnimations(
            1.4,
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don't have an account"),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, SignUpPage.id);
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
