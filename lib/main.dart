import 'package:flutter/material.dart';
import 'package:lab_seis/screens/listview1_screen.dart';
import 'package:lab_seis/screens/listview2_screen.dart';
import 'package:lab_seis/screens/listview3_screen.dart';
import 'package:lab_seis/screens/screen_snippet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Miguel Fernández',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ListView1Screen(),
        '/listView2': (context) => ListView2Screen(),
        // Agrega más rutas para las pantallas adicionales aquí
      },
    );
  }
}

