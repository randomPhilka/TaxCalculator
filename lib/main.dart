import 'package:flutter/material.dart';
import 'package:tax_calculator/src/screens/login/login_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
        ],
      supportedLocales: S.delegate.supportedLocales,
      home: LoginScreen(),
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryColorLight: const Color(0xFFEBEEF5),
        primaryColorDark:  const Color(0xFF303749),
      ),
    );
  }
}