import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_meet/constants.dart';

class ChooseSpecialist extends StatelessWidget {
  const ChooseSpecialist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Choose your specialist',
          style: GoogleFonts.poppins(
              color: kSecondaryColour,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        Text(
          'see all',
          style: GoogleFonts.poppins(
              color: kSecondaryColour,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
