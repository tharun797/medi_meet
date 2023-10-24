import 'package:flutter/material.dart';
import 'package:medi_meet/components/cards.dart';
import 'package:medi_meet/constants.dart';

class DataBase {
  List<Widget> cards = [
    const Cards(
      boxColour: Colors.black,
      title1: '10 easy ',
      title2: 'Baby',
      title3: ' Skin Care Tips',
      imageBackground: 'assets/baby.jpg',
      buttonColour: kBlack,
      textColour: kWhite,
    ),
    const Cards(
      boxColour: kWhite,
      title1: '5 Food Routine to Control ',
      title2: 'Diabetes',
      title3: '',
      imageBackground: 'assets/diabetes.jpg',
      buttonColour: kWhite,
      textColour: kBlack,
    ),
    const Cards(
      boxColour: kWhite,
      title1: '7 Health Benefits of ',
      title2: 'Grapes',
      title3: '',
      imageBackground: 'assets/grapes.jpg',
      buttonColour: kWhite,
      textColour: kBlack,
    ),
    const Cards(
      boxColour: Colors.orange,
      title1: 'The value of ',
      title2: 'Yoga',
      title3: ' in Our Daily Life',
      imageBackground: 'assets/yoga.jpg',
      buttonColour: Colors.orange,
      textColour: kWhite,
    ),
  ];

  List<List<String>> entSpecialist = [
    [
      'Dr.Jaya Lakshmi',
      'M.S.(ENT), D.L.O',
      'West Mambalam, Chennai',
      '4.5',
      'assets/docf1.jpg'
    ],
    [
      'Dr.Vijay Kumar',
      'M.B.B.S, D.L.O',
      'West Mambalam, Chennai',
      '4.0',
      'assets/docm1.jpg'
    ],
    [
      'Dr.Siva Ram',
      'M.B.B.S, D.L.O',
      'West Mambalam, Chennai',
      '4.2',
      'assets/docm2.jpg'
    ],
    [
      'Dr.Radha Shree',
      'M.S.(ENT)',
      'West Mambalam, Chennai',
      '4.1',
      'assets/docf2.jpg'
    ],
    [
      'Dr.Ravi Kumar',
      'M.B.B.S, D.L.O',
      'West Mambalam, Chennai',
      '4.9',
      'assets/docm3.jpg'
    ],
    [
      'Dr.Abhishek Raaja',
      'M.B.B.S, D.L.O',
      'West Mambalam, Chennai',
      '4.6',
      'assets/docm4.jpg'
    ],
  ];

  List<dynamic> specialistCard = [
    ['Dentist', 'assets/teeth.png', 30.0, kWhite],
    ['Optometrist', 'assets/eye.png', 30.0, kWhite],
    ['ENT', 'assets/ear.png', 32.0, kLightBlue],
    ['Neurologist', 'assets/brain.png', 30.0, kWhite],
    ['Cardiologist', 'assets/heart.png', 32.0, kWhite],
    ['Orthopedic', 'assets/bone.png', 32.0, kWhite],
    ['Pediatrician', 'assets/baby.png', 32.0, kWhite],
    ['Dermatologist', 'assets/skin.png', 32.0, kWhite],
    ['Pulmonologist', 'assets/lungs.png', 32.0, kWhite],
  ];
}
