import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:medi_meet/components/appointment_card.dart';
import 'package:medi_meet/components/bottom_nav_bar.dart';
import 'package:medi_meet/components/choose_specialist.dart';
import 'package:medi_meet/components/specialist_list.dart';
import 'package:medi_meet/components/specialist_tab_list.dart';
import 'package:medi_meet/components/top_bar.dart';
import 'package:medi_meet/components/upcoming_apppointments.dart';
import 'package:medi_meet/database.dart';
import 'package:medi_meet/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final db = DataBase();

  final pageController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SizedBox(
        height: 80,
        child: BottomNavBar(),
      ),
      backgroundColor: kPrimaryColour,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const TopBar(),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          height: 170,
                          child: PageView.builder(
                            itemCount: db.cards.length,
                            itemBuilder: (context, index) => db.cards[index],
                            onPageChanged: (value) {
                              setState(() {
                                currentIndex = value;
                              });
                            },
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 5,
                          child: DotsIndicator(
                            dotsCount: 4,
                            position: currentIndex,
                            decorator: const DotsDecorator(
                              size: Size.square(8.0),
                              activeColor: kSecondaryColour,
                              color: kPrimaryColour,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const UpcomingAppointments(),
                    kSizedBoxH10,
                    const AppointmentCard(boxColour: kLightBlue),
                    const SizedBox(
                      height: 10,
                    ),
                    const ChooseSpecialist(),
                    kSizedBoxH10,
                    SizedBox(
                      height: 80,
                      child: SpecialistTabList(db: db),
                    ),
                  ],
                ),
              ),
              SpecialistList()
            ],
          ),
        ),
      ),
    );
  }
}
