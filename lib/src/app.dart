import 'package:flutter/material.dart';

// Mis importaciones
import 'package:contador/src/pages/contador_page.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage(),
      title: 'My first App in Flutter',
    );
  }

}