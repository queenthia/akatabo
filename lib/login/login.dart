import 'package:akatabo/register/register.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../components/auth_button.dart';
import '../components/auth_text_field.dart';
import '../components/media_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: akataboColor,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // image
          const Placeholder(),
          // logi  text
          const Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: akataboWhite,
              fontSize: 36,
            ),
          ),

          // auth text field
          // email
          const AuthTextField(title: "Email"),
          const SizedBox(height: 8),

          // password
          const AuthTextField(title: "Password"),
          const SizedBox(height: 32),

          // login button
          AuthButton(
            text: "Login",
            onTap: () {},
          ),
          const SizedBox(height: 32),
          //the boxes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              MediaBox(
                icon: Icons.facebook,
              ),
              MediaBox(
                icon: Icons.face,
              ),
              MediaBox(
                icon: Icons.person,
              )
            ],
          ),

          Center(
            child: ListTile(
              title: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Register(),
                      ),
                    );
                  },
                  child: Row(
                    children: const [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: akataboWhite),
                      ),
                      Text(
                        "Sign up",
                        style: TextStyle(color: akataboPink),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
