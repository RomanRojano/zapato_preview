import 'package:flutter/material.dart';
import 'package:zapato_preview/src/pages/zapato_page.dart';
import 'package:zapato_preview/src/pages/zapato_page_variable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShoesApp',
      debugShowCheckedModeBanner: false,
      home:ZapatoPageVariable()
    );
  }
}

