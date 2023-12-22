import 'package:fako_store/screens/splashs/splashs.dart';
import 'package:fako_store/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Constants.AppName,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: colorPrimary),
            useMaterial3: true,
            textTheme: GoogleFonts.latoTextTheme(),
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
