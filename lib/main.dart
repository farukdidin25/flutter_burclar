// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_listesi.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue  
      ),
      home: BurcListesi(),
    );
  }
}