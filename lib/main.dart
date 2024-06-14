import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qualidadecompdca/screens/pages/my_home_page.dart';
import 'widgtes/app_state.dart';

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
        title: 'QualidadecomPDCA - Gestão de Procedimentos',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
        ),
        home: MyHomePage()
      ),
    );
  }
}
