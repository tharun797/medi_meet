import 'package:flutter/material.dart';
import 'package:medi_meet/components/specialist_card.dart';
import 'package:medi_meet/database.dart';

class SpecialistTabList extends StatelessWidget {
  const SpecialistTabList(
      {super.key, required this.db});

  final DataBase db;

  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: db.specialistCard.length,
        itemBuilder: (context, index) => SpecialistCard(
              specialistName: db.specialistCard[index][0],
              image: db.specialistCard[index][1],
              height: db.specialistCard[index][2],
              imageColour: db.specialistCard[index][3],
            ));
  }
}
