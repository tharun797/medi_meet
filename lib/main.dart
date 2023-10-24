import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:medi_meet/screens/first_screen.dart';
import 'package:medi_meet/screens/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  final androidInfo = await DeviceInfoPlugin().androidInfo;
  final sdkVersion = androidInfo.version.sdkInt;
  final androidOverscrollIndicator = sdkVersion > 30
      ? AndroidOverscrollIndicator.stretch
      : AndroidOverscrollIndicator.glow;
  runApp(MyApp(
    androidOverscrollIndicator: androidOverscrollIndicator,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.androidOverscrollIndicator = AndroidOverscrollIndicator.glow,
  });
  final AndroidOverscrollIndicator androidOverscrollIndicator;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        androidOverscrollIndicator: androidOverscrollIndicator,
      ),
      home: const Firstscreen(),
    );
  }
}
