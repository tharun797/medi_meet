import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_meet/constants.dart';

class SpecialistCard extends StatelessWidget {
  const SpecialistCard(
      {super.key,
      required this.specialistName,
      required this.image,
      required this.imageColour,
      required this.height});

  final String specialistName;
  final String image;
  final double height;
  final Color imageColour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
            color: kSecondaryColour, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: height,
              color: imageColour,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              specialistName,
              style: GoogleFonts.poppins(fontSize: 8, color: imageColour),
            )
          ],
        ),
      ),
    );
  }
}
