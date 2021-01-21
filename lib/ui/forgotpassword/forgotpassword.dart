import 'package:arnelle/core/services/validator_service.dart';
import 'package:arnelle/ui/login/loginscreen.dart';
import 'package:arnelle/ui/widgets/customButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

bool _switch = false;
final _formkey = GlobalKey<FormState>();

TextEditingController _emailController = TextEditingController();

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
          "FORGOT PASSWORD",
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
              height: 160,
            ),
            Text(
              "Forgot Password?",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Text(
                "Integer quis dictum tellus, a auctor lorem. Cras in blandit leo. Suspendisse mauris fringilla id lorem sem.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    color: Color(0xff989898),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 13),
              child: Column(
                children: [
                  Container(
                    height: 6,
                    width: MediaQuery.of(context).size.width / 9,
                    color: Colors.white.withOpacity(.75),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: TextFormField(
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
                                      width: 2,
                                      color: _emailController.text.isEmpty
                                          ? Colors.white.withOpacity(.25)
                                          : Color(0xffffb76a)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xffFF8973)),
                                ),
                                hintText: "Email address",
                                hintStyle: GoogleFonts.montserrat(
                                    color: Color(0xffeeeeee).withOpacity(.3),
                                    fontSize: 14,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w500)),
                            style: GoogleFonts.montserrat(color: Colors.white),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            child: Image.asset(
                          "assets/images/send.png",
                          scale: 2.8,
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 14,
                  ),
                  SizedBox(
                    height: 23,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
