import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateProfileLabel extends StatelessWidget {
  UpdateProfileLabel(this.label);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: GoogleFonts.montserrat(
            fontSize: 14,
            color: Color(0xFF676C6D),
            fontWeight: FontWeight.w600));
  }
}
