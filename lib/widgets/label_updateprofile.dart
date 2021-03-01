import 'package:flutter/material.dart';


class UpdateProfileLabel extends StatelessWidget {
  UpdateProfileLabel(this.label);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontFamily: "Montserrat",
          fontSize: 14,
          color: Color(0xFF676C6D),
          fontWeight: FontWeight.w600),
      // style: GoogleFonts.montserrat(
      //     fontSize: 14,
      //     color: Color(0xFF676C6D),
      //     fontWeight: FontWeight.w600)
    );
  }
}
