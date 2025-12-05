import 'package:flutter/material.dart';
import 'package:jurnalku_tw/catatan_sikap.dart';
import 'package:jurnalku_tw/dashboard.dart';
import 'package:jurnalku_tw/pengaturan_akun.dart';
import 'package:jurnalku_tw/profile.dart';
import 'package:jurnalku_tw/explore_page.dart';
import 'package:jurnalku_tw/jurnal_pembiasan.dart';
import 'package:jurnalku_tw/progresbelajar_page.dart';
import 'package:jurnalku_tw/login.dart';
import 'package:jurnalku_tw/panduan-pengguna.dart';
import 'package:jurnalku_tw/permintaan_saksi.dart';
import 'package:jurnalku_tw/explore_login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurnalku Team Work',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const Login(),
        '/dashboard': (context) => const Dashboard(),
        '/jurnal': (context) => const JurnalPembiasan(),
        '/jelajahi': (context) => const ExplorePage(),
        '/progres': (context) => const ProgresBelajarPage(),
        '/profil': (context) => const Profile(),
        '/saksi': (context) => const PermintaanSaksiApp(),
        '/panduan': (context) => const PanduanPenggunaPage(),
        '/jelajahilogin': (context) => const ExploreLogin(),
        '/catatan': (context) => const CatatanSikap(), 
        '/pengaturan': (context) => const PengaturanAkun(), 
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF02398C)),
        useMaterial3: true,
      ),
    );
  }
}