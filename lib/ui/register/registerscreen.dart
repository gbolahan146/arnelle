import 'package:arnelle/core/services/validator_service.dart';
import 'package:arnelle/ui/login/loginscreen.dart';
import 'package:arnelle/ui/widgets/customButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

bool _switch = false;
final _formkey = GlobalKey<FormState>();

TextEditingController _usernameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _repeatPasswordController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
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
          "SIGN UP",
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
              "Join us",
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
                                width: 2, color:_passwordController.text.isEmpty? Colors.white.withOpacity(.25): Color(0xffffb76a)),
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
                      height: 27,
                    ),
                    TextFormField(
                      controller: _repeatPasswordController,
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
                                width: 2, color: _repeatPasswordController.text.isEmpty?Colors.white.withOpacity(.25):Color(0xffffb76a)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Color(0xffFF8973)),
                          ),
                          hintText: "Repeat Password",
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
                      controller: _emailController,
                      validator: (s) => ValidatorService.validateEmail(
                        s,
                      ),
                      decoration: InputDecoration(
                          errorStyle: GoogleFonts.montserrat(
                              color: Colors.white.withOpacity(.4)),
                          contentPadding: EdgeInsets.only(left: 20),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 2, color:_emailController.text.isEmpty? Colors.white.withOpacity(.25): Color(0xffffb76a)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Color(0xffFF8973)),
                          ),
                          hintText: "Email address",
                          hintStyle: GoogleFonts.montserrat(
                              color: Color(0xffeeeeee).withOpacity(.3),
                              fontSize: 14,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w500)),
                      style: GoogleFonts.montserrat(color: Colors.white),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 14,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _switch = !_switch;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(0xffE9E9E9).withOpacity(.25),
                                  width: 3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: _switch
                                  ? Icon(
                                      Icons.check,
                                      size: 23.0,
                                      color: Color(0xffffb76a),
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      size: 23.0,
                                      color: Colors.transparent,
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            "AGREE TO OUR",
                            style: GoogleFonts.montserrat(
                              color: Color(0xffaaaaaa),
                              letterSpacing: 3,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 3,
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Colors.white.withOpacity(.50),
                            width: 2.0,
                          ))),
                          child: Text(" TERMS?",
                              style: GoogleFonts.montserrat(
                                color: Color(0xffeeeeee),
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              )),
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
                      title: " Sign Up",
                      onPressed: () {
                        if (!_formkey.currentState.validate()) return;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
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
                        Colors.transparent,
                        Colors.transparent,
                      ],
                      textColor: Colors.white,
                      borderColor: Colors.grey,
                      title: " Log in",
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
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
