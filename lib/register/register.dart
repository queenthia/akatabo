
import 'package:akatabo/login/login.dart';
import 'package:akatabo/screens/home.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import 'package:akatabo/components/auth_button.dart';
import '../components/auth_text_field.dart';
import '../components/media_box.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: akataboColor,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // image
          const Placeholder(),
          // Register  text
          const Text(
            "Signup",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: akataboWhite,
              fontSize: 36,
            ),
          ),

          // auth text field
          // user name
          const AuthTextField(title: "User Name"),
          const SizedBox(height: 8),


          // email
          const AuthTextField(title: "Email"),
          const SizedBox(height: 8),

          // password
          const AuthTextField(title: "Password"),
          const SizedBox(height: 8),

          // confirm password
          const AuthTextField(title: "Confirm Password"),
          const SizedBox(height: 32),

          // register button
          AuthButton(
            text: "Signup",
            onTap: () {},
          ),
          const SizedBox(height: 32),
          //the line with a text
          Row(children: const [Divider (
            color: akataboWhite,
            
            endIndent: 300,
          ),
          Text("Or signup with",style: TextStyle(color: akataboPink),),
          Divider (
            color: akataboPink,
            
            //indent: 300,
          ),],),

          const SizedBox(height: 20),
          
          //the media boxes
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
                        builder: (context) =>  GetStarted(),
                      ),
                    );
                  },
                  child: Center(
                    child: Row(
                      children: const [
                        Text(
                          "Already have an account!",
                          style: TextStyle(color: akataboWhite),
                        ),
                        Text(
                          "Login",
                          style: TextStyle(color: akataboPinkDark
                        
                          ),
                        ),
                      ],
                    ),
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
