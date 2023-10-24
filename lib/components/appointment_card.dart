import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_meet/constants.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.boxColour});

  final Color boxColour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
            color: boxColour, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/docm5.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Dr. Senthil Durai',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'B.D.S., M.D.S',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 6,
                              letterSpacing: 0.5),
                        )
                      ],
                    ),
                    subtitle: Text(
                      'Dentist',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 25,
                  ),
                )
              ],
            ),
            kSizedBoxH10,
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kSecondaryColour,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Feb 20, 2023',
                              style: GoogleFonts.poppins(
                                  color: kWhite, fontSize: 12),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.alarm,
                              color: Colors.white,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '6:00 PM - 6:30 PM',
                              style: GoogleFonts.poppins(
                                  color: kWhite, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: kWhite,
                  size: 20,
                ),
                const SizedBox(
                  width: 1,
                ),
                Text(
                  'No:42, Aryagowda Road, West Mambalam, chennai-33',
                  style: GoogleFonts.poppins(
                      color: kWhite,
                      fontSize: 9,
                      decoration: TextDecoration.underline,
                      letterSpacing: 0.1),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
