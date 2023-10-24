import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_meet/constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      elevation: 4,
      backgroundColor: kPrimaryColour,
      leading: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(color: kSecondaryColour, width: 3),
            color: kPrimaryColour,
            borderRadius: BorderRadius.circular(50)),
        child: ClipOval(
            child: Image.asset(
          'assets/user.jpg',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        )),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Good Morning',
                    style: GoogleFonts.poppins(
                        color: kLightBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  Image.asset(
                    'assets/pngegg.png',
                    height: 20,
                  )
                ],
              ),
              const Icon(
                Icons.menu,
                color: kSecondaryColour,
                size: 30,
              ),
            ],
          ),
          Text(
            'Gokul V',
            style: GoogleFonts.poppins(
                color: kLightBlue, fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
