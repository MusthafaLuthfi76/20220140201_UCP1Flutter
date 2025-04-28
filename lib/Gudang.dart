import 'package:flutter/material.dart';

class Gudang extends StatefulWidget {
  const Gudang({super.key});

  @override
  State<Gudang> createState() => _GudangState();
}

class _GudangState extends State<Gudang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Piket Gudang', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Ini adalah halaman Gudang'),
      ),
    );
  }
}
