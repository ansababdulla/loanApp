import 'package:flutter/material.dart';
import '../utils/appcolors.dart';

class RichTextWidget extends StatelessWidget {
  RichTextWidget(this.label);
  final String label;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: label,
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: AppColors.textLabelGrey,
              fontWeight: FontWeight.w600),
          children: [
            TextSpan(
              text: ' *',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: AppColors.textLabelGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0),
            ),
          ]),
    );
  }
}
