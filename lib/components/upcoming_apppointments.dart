import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_meet/constants.dart';

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Upcoming Appointment',
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
