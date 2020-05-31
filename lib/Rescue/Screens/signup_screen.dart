import 'package:flutter/material.dart';
import 'package:living_in_pandemic/Rescue/Screens/welcome_Screen.dart';
import 'package:living_in_pandemic/Rescue/widgets/image_stack.dart';

import '../constants.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "signup_screen";
  Widget _buildTextForm({IconData icon, String text}) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.black,
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.black),
        ),
        hintText: text,
        // labelText: "Username",
        labelStyle: TextStyle(
          color: Colors.black,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget _sizedBox() {
    return SizedBox(
      height: 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ImageStack(),
              Text("Create Your Account!", style: kLoginTextStyle),
              Card(
                margin: EdgeInsets.all(15),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      _buildTextForm(icon: Icons.person, text: " Full Name"),
                      _sizedBox(),
                      _buildTextForm(icon: Icons.email, text: "Email Address"),
                      _sizedBox(),
                      _buildTextForm(icon: Icons.vpn_key, text: "Password"),
                      _sizedBox(),
                      _buildTextForm(
                          icon: Icons.vpn_key, text: "Confirm Password"),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.37,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.lightBlue,
                      Colors.cyan,
                      Colors.purple,
                    ],
                    // begin: Alignment.topCenter,
                    // end: Alignment.bottomCenter,
                  ),
                ),
                child: MaterialButton(
                  child: Text(
                    "Sign Up",
                    style: kLoginTextStyle,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, WelcomeScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
