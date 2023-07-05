import 'package:blog/app/app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {

  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
    color: Colors.amber,
    child: Center(
      child: Text(
        details.exceptionAsString(),
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Blog());
}