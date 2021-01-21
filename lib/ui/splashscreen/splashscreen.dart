import 'package:arnelle/ui/login/loginscreen.dart';
import 'package:arnelle/ui/register/registerscreen.dart';
import 'package:arnelle/ui/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
              height: 20,
            ),
            Center(
              child: Container(
                child: Image.asset(
                  "assets/images/logo.png",
                  scale: 5,
                ),
              ),
            ),
            Text(
              "ARNELLE",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "The Golden rule... Gold awlays rules.",
                textAlign: TextAlign.center,
                style: GoogleFonts.italianno(
                  fontSize: 48,
                  color: Colors.white.withOpacity(.5),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Container(
                    height: 6,
                    width: MediaQuery.of(context).size.width / 8,
                    color: Colors.white.withOpacity(.75),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height/9,
                  ),
                  CustomButton(
                    backgroundColor: [Color(0xffFFAC53), Color(0xffFE4980)],
                    textColor: Colors.white,
                    borderColor: Colors.transparent,
                    title: " Login",
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 4,
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
                        height: 4,
                        width: 83,
                        color: Colors.white.withOpacity(.25),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    backgroundColor: [
                      Colors.transparent,
                      Colors.transparent,
                    ],
                    textColor: Colors.white,
                    borderColor: Colors.grey,
                    title: " Sign up",
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white.withOpacity(.25),
                  ),
                  SizedBox(height: 19,),
                  Text("Made by Royalz, V 1.0", textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(color: Colors.white,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
