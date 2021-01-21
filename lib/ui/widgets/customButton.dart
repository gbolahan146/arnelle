import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final List<Color> backgroundColor;
  final Color textColor;
  final FocusNode focusNode;
  final Color borderColor;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;
  final double height;

  const CustomButton({
    Key key,
    this.title,
    this.onPressed,
    this.borderColor,
    this.backgroundColor,
    this.textColor,
    this.focusNode,
    this.width = 373.0,
    this.fontSize = 13.0,
    this.fontWeight = FontWeight.w500,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 2),
          gradient: LinearGradient(
              colors: backgroundColor,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 1]),
          borderRadius: BorderRadius.circular(25)),
      child: FlatButton(
        focusNode: focusNode,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.montserrat(
                letterSpacing:1,
                  fontSize: fontSize ?? 13, fontWeight: fontWeight ?? FontWeight.w500, color: textColor),
            ),
          ],
        ),
        // color: backgroundColor,
        textColor: Colors.white,
      ),
    );
  }
}

class CustomFacebookBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xff546AF2),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            )
          ]),
      child: Text(
        "Login with Facebook",
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 13,
        ),
      ),
    );
  }
}
