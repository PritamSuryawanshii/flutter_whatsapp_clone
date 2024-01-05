import 'package:flutter/material.dart';
import 'package:userinterface/colors.dart';
import 'package:userinterface/responsive/responsive_layout.dart';
import 'package:userinterface/responsive/screens/mobile_screen_layout.dart';
import 'package:userinterface/responsive/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        // ignore: deprecated_member_use
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
