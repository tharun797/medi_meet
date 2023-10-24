import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_meet/constants.dart';

class SpecialistTile extends StatelessWidget {
  const SpecialistTile(
      {super.key,
      required this.docArea,
      required this.docEdu,
      required this.docName,
      required this.docImage,
       
      required this.docRating});

  final String docName;
  final String docEdu;
  final String docArea;
  final String docRating;
  final String docImage;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 1),
              blurRadius: 1,
              spreadRadius: 0.2,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(0, 1),
                            blurRadius: 1,
                            spreadRadius: 0,
                          )
                        ], borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            docImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            docName,
                            style: GoogleFonts.poppins(
                                color: kBlack, fontSize: 12),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(docEdu,
                              style: GoogleFonts.poppins(
                                  color: kBlack, fontSize: 8))
                        ],
                      ),
                      subtitle: const Text(
                        'ENT Specialist',
                        style: TextStyle(
                            color: Colors.black,
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
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow.shade700,
                        ),
                        Text(
                          docRating,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          docArea,
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.underline),
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.grey.shade600,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
