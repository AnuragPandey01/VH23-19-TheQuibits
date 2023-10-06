import 'package:flutter/material.dart';
import 'package:studycate/constants.dart';
import 'package:studycate/widgets/btn.dart';
import 'package:studycate/widgets/txtField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.chevron_left, color: textColor),
        ),
      ),
      backgroundColor: bgColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: size.height * 0.09,
          left: 30.0,
          right: 30.0,
          bottom: 30.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Color(0xFFB7B7B7),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TxtField(
              name: "Email",
              hintText: "Enter your email address",
              toggle: false,
              controller: email,
            ),
            const SizedBox(
              height: 20,
            ),
            TxtField(
              name: "Password",
              hintText: "Enter your password",
              toggle: true,
              controller: password,
            ),
            const SizedBox(
              height: 40,
            ),
            const Btn(text: "Log In"),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: textColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                    child: const Text(
                      "Sign Up!",
                      style: TextStyle(
                        color: themeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
