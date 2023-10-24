import 'package:flutter/material.dart';
import 'package:medi_meet/components/specialist_tile.dart';
import 'package:medi_meet/database.dart';

class SpecialistList extends StatelessWidget {
  SpecialistList({
    super.key,
  });

  final db = DataBase();

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => SpecialistTile(
                docImage: db.entSpecialist[index][4],
                docArea: db.entSpecialist[index][2],
                docEdu: db.entSpecialist[index][1],
                docName: db.entSpecialist[index][0],
                docRating: db.entSpecialist[index][3],
              ),
          childCount: db.entSpecialist.length),
    );
  }
}
