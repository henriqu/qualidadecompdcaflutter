import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qualidadecompdca/screens/pages/my_home_page.dart';
import 'package:qualidadecompdca/widgtes/app_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'QualiFlow - Gestão de Procedimentos',
        theme: ThemeData(
          useMaterial3: true,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: MyHomePage(),
      ),
    );
  }
}