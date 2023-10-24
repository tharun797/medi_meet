import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_meet/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      iconSize: 25,
      selectedLabelStyle:
          GoogleFonts.poppins(fontSize: 10, color: Colors.white),
      unselectedLabelStyle:
          GoogleFonts.poppins(fontSize: 10, color: Colors.white),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: kSecondaryColour),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.medication),
          label: 'Prescription',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
      ],
      currentIndex: 0,
      selectedItemColor: kLightBlue,
      onTap: (v) {},
    );
  }
}
