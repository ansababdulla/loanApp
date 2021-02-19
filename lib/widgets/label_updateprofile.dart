import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateProfileLabel extends StatelessWidget {
  UpdateProfileLabel(this.label);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text('Full Name',
        style: GoogleFonts.montserrat(
          fontSize: 14,
          color: Colors.black,
        ));
  }
}
