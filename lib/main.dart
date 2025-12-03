import 'package:flutter/material.dart';
import 'package:jurnalku_tw/jurnal_pembiasan.dart';
import 'package:jurnalku_tw/permintaan_saksi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurnalku Team Work',
      debugShowCheckedModeBanner: false,
      home: PermintaanSaksi(),
    );
        }
}
