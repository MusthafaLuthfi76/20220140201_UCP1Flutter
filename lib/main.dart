import 'package:_20220140201_ucp1flutter/Barang.dart';
import 'package:_20220140201_ucp1flutter/Gudang.dart';
import 'package:_20220140201_ucp1flutter/HomePage.dart';
import 'package:_20220140201_ucp1flutter/LoginPage.dart';
import 'package:_20220140201_ucp1flutter/PelangganPage.dart';
import 'package:_20220140201_ucp1flutter/RegisterPage.dart';
import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),     
        '/gudang': (context) => const Gudang(),
        '/pelanggan': (context) => const PelangganPage(),
      },
    );
  }
}

