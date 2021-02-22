import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/appcolors.dart';

class RichTextWidget extends StatelessWidget {
  RichTextWidget(this.label);
  final String label;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: label,
          style: GoogleFonts.montserrat(
              fontSize: 14,
              color: AppColors.textLabelGrey,
              fontWeight: FontWeight.w600),
          children: [
            TextSpan(
              text: ' *',
              style: TextStyle(color: AppColors.textLabelGrey, fontSize: 16.0),
            ),
          ]),
    );
  }
}
