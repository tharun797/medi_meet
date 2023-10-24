import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_meet/constants.dart';
import 'package:medi_meet/screens/home_page.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/doctor.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'MediMeet',
                      style: GoogleFonts.lobster(
                          color: Colors.white, fontSize: 45, letterSpacing: 5),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: kPrimaryColour,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Get Started',
                            style: GoogleFonts.poppins(
                                color: kSecondaryColour,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
