import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatelessWidget {
  const Cards(
      {super.key,
      required this.boxColour,
      required this.title1,
      required this.title3,
      required this.imageBackground,
      required this.buttonColour,
      required this.textColour,
      required this.title2});

  final Color boxColour;
  final String title1;
  final String title2;
  final String title3;
  final String imageBackground;
  final Color buttonColour;
  final Color textColour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageBackground),
              fit: BoxFit.cover,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: RichText(
                  text: TextSpan(
                    text: title1,
                    style: GoogleFonts.poppins(
                      color: boxColour,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: title2,
                        style: GoogleFonts.poppins(
                          color: boxColour,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: title3,
                        style: GoogleFonts.poppins(
                          color: boxColour,
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: buttonColour,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Read More',
                        style: GoogleFonts.poppins(
                            color: textColour,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.2)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
