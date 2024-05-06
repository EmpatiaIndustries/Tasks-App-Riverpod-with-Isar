import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme.g.dart';

@Riverpod(keepAlive: true)
class SelectedColor extends _$SelectedColor {
  @override
  Color build() => const Color.fromARGB(255, 186, 59, 28);

  void changeColor(Color color) {
    state = color;
  }
}

const scaffoldBackgroundColor = Color(0xFFF8F7F7);

class AppTheme {
  final Color colorSeed;
  final Size deviceSize;

  AppTheme({required this.colorSeed, required this.deviceSize});

  ThemeData getTheme() {
    return ThemeData(
      //  General
      useMaterial3: true,
      colorSchemeSeed: colorSeed,
      scaffoldBackgroundColor: scaffoldBackgroundColor,

      // Texts
      // textTheme: TextTheme(
      //   titleLarge: GoogleFonts.montserratAlternates()
      //       .copyWith(fontSize: 40, fontWeight: FontWeight.bold),
      //   titleMedium: GoogleFonts.montserratAlternates()
      //       .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
      //   titleSmall: GoogleFonts.montserratAlternates().copyWith(fontSize: 20),
      // ),

      // Buttons
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          minimumSize: MaterialStateProperty.all(
            Size(deviceSize.width * 0.4, 50),
          ),
          maximumSize: MaterialStateProperty.all(
            Size(deviceSize.width * 0.8, 50),
          ),
        ),
      ),

      // AppBar
      appBarTheme: const AppBarTheme(
        surfaceTintColor: scaffoldBackgroundColor,
        color: scaffoldBackgroundColor,
        // titleTextStyle: GoogleFonts.montserratAlternates().copyWith(
        //   fontSize: 25,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.black,
        // ),
      ),
    );
  }
}
