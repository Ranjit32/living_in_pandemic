import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:living_in_pandemic/Rescue/Screens/registration_form.dart';
import 'package:living_in_pandemic/Rescue/Screens/signup_screen.dart';
import 'package:living_in_pandemic/Rescue/constants.dart';
import 'package:living_in_pandemic/Rescue/widgets/image_stack.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var _value = false;
  Widget _buildTextFormField({IconData icon, String text}) {
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
      height: ScreenUtil().setHeight(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      width: 360.0,
      height: 730.0,
      allowFontScaling: true,
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ImageStack(),
              Card(
                margin: EdgeInsets.all(12),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Login",
                          style: kLoginTextStyle,
                        ),
                      ),
                      _sizedBox(),
                      _buildTextFormField(icon: Icons.email, text: "Username"),
                      _sizedBox(),
                      _buildTextFormField(
                          icon: Icons.vpn_key, text: "Password"),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: MaterialButton(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _value,
                    onChanged: (newValue) {
                      print(newValue);
                      setState(() {
                        _value = newValue;
                      });
                    },
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Spacer(),
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
                        "Login",
                        style: kLoginTextStyle,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RegistrationForm.routeName);
                      },
                    ),
                  ),
                ],
              ),
              Divider(),
              Text(
                "------  Social Login  -------",
                style: kTextStyle,
              ),
              _sizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/facebook.png",
                    height: 50,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(15),
                  ),
                  Image.asset(
                    "images/google.jpg",
                    height: 50,
                  ),
                ],
              ),
              _sizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "New User?",
                    style: kText1Style,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(15),
                  ),
                  InkWell(
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, SignUpScreen.routeName);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
