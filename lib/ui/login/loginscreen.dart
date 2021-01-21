import 'package:arnelle/core/services/validator_service.dart';
import 'package:arnelle/ui/forgotpassword/forgotpassword.dart';
import 'package:arnelle/ui/register/registerscreen.dart';
import 'package:arnelle/ui/widgets/customButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

bool _switch = false;
final _formkey = GlobalKey<FormState>();

TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "LOGIN",
          style: GoogleFonts.montserrat(
              color: Colors.white,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              fontSize: 11),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff111111).withOpacity(.75),
          Color(0xff111111).withOpacity(.98),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 90,
            ),
            Text(
              "Login",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      validator: (s) => ValidatorService.validateInput(
                          s, "Username cannot be empty"),
                      decoration: InputDecoration(
                          errorStyle: GoogleFonts.montserrat(
                              color: Colors.white.withOpacity(.4)),
                          contentPadding: EdgeInsets.only(left: 20),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: _usernameController.text.isEmpty
                                    ? Colors.white.withOpacity(.25)
                                    : Color(0xffffb76a)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Color(0xffFF8973)),
                          ),
                          hintText: "Username",
                          hintStyle: GoogleFonts.montserrat(
                              color: Color(0xffeeeeee).withOpacity(.3),
                              fontSize: 14,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w500)),
                      style: GoogleFonts.montserrat(color: Colors.white),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      validator: (s) => ValidatorService.validatePassword(
                        s,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20),
                          errorStyle: GoogleFonts.montserrat(
                              color: Colors.white.withOpacity(.4)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: _passwordController.text.isEmpty
                                    ? Colors.white.withOpacity(.25)
                                    : Color(0xffffb76a)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Color(0xffFF8973)),
                          ),
                          hintText: "Password",
                          hintStyle: GoogleFonts.montserrat(
                              color: Color(0xffeeeeee).withOpacity(.3),
                              fontSize: 14,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w500)),
                      style: GoogleFonts.montserrat(color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ForgotPasswordScreen())),
                          child: Text(
                            "Forgot Password?".toUpperCase(),
                            style: GoogleFonts.montserrat(
                                color: Color(0xffeeeeee),
                                fontSize: 10,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 14,
                    ),
                    Row(
                      children: [
                        FlutterSwitch(
                          width: 45.0,
                          activeColor: Color(0xffFF8973),
                          height: 25.0,
                          inactiveColor: Color(0xff636363),
                          valueFontSize: 12.0,
                          toggleSize: 18.0,
                          value: _switch,
                          onToggle: (val) {
                            setState(() {
                              _switch = val;
                            });
                          },
                        ),
                        SizedBox(width: 16),
                        Text(
                          "Remember me?".toUpperCase(),
                          style: GoogleFonts.montserrat(
                              color: Color(0xffeeeeee),
                              fontSize: 12,
                              letterSpacing: 3,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    CustomButton(
                      backgroundColor: [Color(0xffFFAC53), Color(0xffFE4980)],
                      textColor: Colors.white,
                      borderColor: Colors.transparent,
                      title: " Login",
                      onPressed: () {
                        if (!_formkey.currentState.validate()) return;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 83,
                          color: Colors.white.withOpacity(.25),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "OR",
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(.45)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 3,
                          width: 83,
                          color: Colors.white.withOpacity(.25),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      backgroundColor: [
                        Color(0xff5469F0),
                        Color(0xff3d4daf),
                      ],
                      textColor: Colors.white,
                      borderColor: Colors.transparent,
                      fontSize: 13,
                      title: "Login with Facebook",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      backgroundColor: [
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      textColor: Colors.white,
                      borderColor: Colors.grey,
                      title: " Sign up",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
