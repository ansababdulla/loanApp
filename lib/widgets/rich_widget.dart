import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextWidget extends StatelessWidget {
  RichTextWidget(this.label);
  final String label;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: label,
          style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black),
          children: [
            TextSpan(
              text: ' *',
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ]),
    );
  }
}
