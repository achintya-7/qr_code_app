import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qr_code_app/features/qr_code_scanners/pages/qr_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.greenAccent,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),
      ),
      home: const QRCodePage(),
    );
  }
}
